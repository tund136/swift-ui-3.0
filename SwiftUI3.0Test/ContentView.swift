//
//  ContentView.swift
//  SwiftUI3.0Test
//
//  Created by Danh Tu on 28/09/2021.
//

import SwiftUI

struct ContentView: View {
    @State private var show = false
    
    var body: some View {
        VStack {
            Button("Show Sheet") {
                show.toggle()
            }
        }
        .sheet(isPresented: $show) {
            Text("I'm a Sheet View!")
            // Disabling Gesture Dismiss
            // Note: Using this in Sheet Content
                .interactiveDismissDisabled(true)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
