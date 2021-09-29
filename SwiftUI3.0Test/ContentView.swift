//
//  ContentView.swift
//  SwiftUI3.0Test
//
//  Created by Danh Tu on 28/09/2021.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        ScrollView {
            VStack(spacing: 18) {
                ForEach(1...25, id: \.self) { _ in
                    HStack {
                        Circle()
                            .fill(Color.gray)
                            .frame(width: 45, height: 45)
                        
                        VStack(alignment: .leading, spacing: 15) {
                            Rectangle()
                                .fill(Color.gray)
                                .frame(height: 15)
                            
                            Rectangle()
                                .fill(Color.gray)
                                .frame(height: 15)
                                .padding(.trailing, 50)
                        }
                    }
                }
            }
            .padding()
        }
        .safeAreaInset(edge: .bottom) {
            // It will automatically add padding for the main content
            Capsule()
                .fill(Color.red)
                .frame(height: 55)
                .padding(.horizontal)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
