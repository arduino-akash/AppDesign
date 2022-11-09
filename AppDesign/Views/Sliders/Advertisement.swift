//
//  Advertisement.swift
//  AppDesign
//
//  Created by Singh, Akash | RIEPL on 09/11/22.
//

import SwiftUI

struct Advertisement: View {
    
    // 1
    private let images = ["RM", "RTV", "RGE", "R25"]
    
    var body: some View {
        // 2
        TabView {
            ForEach(images, id: \.self) { item in
                 //3
                 Image(item)
                    .resizable()
//                    .scaledToFill()
                    .cornerRadius(20)
                    .border(.red)
            }
        }
        .tabViewStyle(PageTabViewStyle())
    }
}

struct Advertisement_Previews: PreviewProvider {
    static var previews: some View {
        // 4
        Advertisement()
            .previewLayout(.fixed(width: 400, height: 300))
    }
}
