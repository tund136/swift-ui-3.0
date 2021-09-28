//
//  ContentView.swift
//  SwiftUI3.0Test
//
//  Created by Danh Tu on 28/09/2021.
//

import SwiftUI

struct ContentView: View {
    @State private var heartBadgeSeen = false
    
    var body: some View {
        TabView {
            Color.red
                .tabItem {
                    Image(systemName: "house.fill")
                }
            // Badges
                .badge("10")
            
            Color.green
                .onAppear(perform: {
                    heartBadgeSeen.toggle()
                })
                .tabItem {
                    Image(systemName: "suit.heart.fill")
                }
            // String is showing empty circle
            // Maybe it will get updated
            // But Int is working
            //                .badge(heartBadgeSeen ? "" : "New")
                .badge(heartBadgeSeen ? 0 : 20)
            
            Color.yellow
                .tabItem {
                    Image(systemName: "gearshape")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
