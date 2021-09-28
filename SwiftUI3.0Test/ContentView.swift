//
//  ContentView.swift
//  SwiftUI3.0Test
//
//  Created by Danh Tu on 28/09/2021.
//

import SwiftUI

struct ContentView: View {
    
    let url = URL(string: "https://static2.yan.vn/YanNews/2167221/202107/khoanh-khac-hoa-luc-dien-cua-blackpink-khien-nguoi-ham-mo-choang-vang-02cd2c27.jpg")!
    
    var body: some View {
        NavigationView {
            VStack {
                AsyncImage(url: url, scale: 1.0) { phase in
                    if let image = phase.image {
                        image
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                    } else {
                        // Error or loading
                        Image(systemName: "house.fill")
                            .font(.largeTitle)
                            .foregroundColor(.gray)
                    }
                }
                // There is not aspect ratio working directly
                // Only frame is working with embeded with clipped
                // To get original downloeded image
            }
            .navigationTitle("Async Image")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
