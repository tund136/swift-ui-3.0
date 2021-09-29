//
//  ContentView.swift
//  SwiftUI3.0Test
//
//  Created by Danh Tu on 28/09/2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            // We can draw using Graphics Context
            // from Core Graphics
            Canvas { context, size in
                context.draw(Text("Hello"), at: CGPoint(x: size.width / 2, y: size.height / 2))
                
                context.draw(Image(systemName: "house.fill"), at: CGPoint(x: size.width / 2, y: size.height / 1.5))
            }
            .frame(width: 300, height: 300)
            .background(Color.green, in: RoundedRectangle(cornerRadius: 10))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
