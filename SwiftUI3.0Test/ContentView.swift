//
//  ContentView.swift
//  SwiftUI3.0Test
//
//  Created by Danh Tu on 28/09/2021.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        NavigationView {
            VStack {
                Text("OnTrigger")
                // Also be used with TextField
                TextField("Type here", text: .constant(""))
                    .textFieldStyle(.roundedBorder)
                    .padding()
            }
            .searchable(text: .constant(""))
            .navigationTitle("Home")
        }
        .onSubmit(of: [.search, .text], {
            print("Field summitted!")
        })
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
