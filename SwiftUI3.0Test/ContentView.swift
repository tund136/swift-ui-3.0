//
//  ContentView.swift
//  SwiftUI3.0Test
//
//  Created by Danh Tu on 28/09/2021.
//

import SwiftUI

struct ContentView: View {
    let url = URL(string: "https://jsonplaceholder.typicode.com/users")!
    @State private var users: [User] = []
    @State private var searchText = ""
    
    var body: some View {
        NavigationView {
            // Maybe bug only working with for each
            List {
                ForEach(users) { user in
                    VStack(alignment: .leading, spacing: 4) {
                        Text(user.name)
                        
                        Text(user.email)
                            .font(.caption)
                    }
                    // Row separator customization
                    .listRowSeparatorTint(.red)
                    // Hiding line
                    .listRowSeparator(.hidden)
                }
            }
            // Adding Refresh Control
            // Indicator will show until async task finished
            .refreshable {
                await fetchUsers()
            }
            // Adding Search Bar
            // Note: Only available with Navigation View
            .searchable(text: $searchText, prompt: "Search User", suggestions: {
                // Suggetions
                // List of filtered content showed in a list format when search field is active
                ForEach(users.filter { user in
                    searchText == "" ? true : user.email.lowercased().contains(searchText.lowercased())
                }) { user in
                    Text(user.email)
                    // We can even auto complete the text when its tapped
                        .searchCompletion(user.name)
                }
            })
            .navigationTitle("Pull to Refresh")
        }
    }
    
    // Fetching user in async
    func fetchUsers() async {
        let session = URLSession(configuration: .default)
        
        do {
            let task = try await session.data(from: url)
            
            // Decoding
            let users = try JSONDecoder().decode([User].self, from: task.0)
            self.users = users
        } catch {
            print("Error!")
        }
    }
}

// User
struct User: Identifiable, Decodable {
    var id: Int
    var name: String
    var email: String
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
