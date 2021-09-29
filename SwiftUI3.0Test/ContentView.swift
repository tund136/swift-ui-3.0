//
//  ContentView.swift
//  SwiftUI3.0Test
//
//  Created by Danh Tu on 28/09/2021.
//

import SwiftUI

struct ContentView: View {
    @AppStorage("deviceType") var device: Device?
    
    var body: some View {
        // Keyboard Done button alternatives
        TextField("iJustine", text: .constant(""))
            .textFieldStyle(.roundedBorder)
            .submitLabel(.join)
            .padding()
    }
}

// Storing Enum in App Storage
enum Device: String {
    case iPhone8 = "8"
    case iPhone11 = "11"
    case iPhone12 = "12"
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
