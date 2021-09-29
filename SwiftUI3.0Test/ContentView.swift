//
//  ContentView.swift
//  SwiftUI3.0Test
//
//  Created by Danh Tu on 28/09/2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        List {
            ForEach(1...20, id: \.self) { index in
                Text("User Task \(index)")
                // Swipe Actions
                    .swipeActions(edge: .trailing, allowsFullSwipe: false) {
                        Button(action: {
                            
                        }, label: {
                            Image(systemName: "house.fill")
                        })
                        // Changing background color
                            .tint(.green)
                        
                        Button(action: {
                            
                        }, label: {
                            Image(systemName: "gearshape")
                        })
                        // Changing background color
                            .tint(.blue)
                    }
                
                    .swipeActions(edge: .leading, allowsFullSwipe: false) {
                        Button(action: {
                            
                        }, label: {
                            Image(systemName: "photo")
                        })
                        // Changing background color
                            .tint(.yellow)
                    }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
