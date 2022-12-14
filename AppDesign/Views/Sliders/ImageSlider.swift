//
//  ImageSlider.swift
//  AppDesign
//
//  Created by Singh, Akash | RIEPL on 07/11/22.
//

import SwiftUI

struct ImageSlider: View {
    
    // 1
    private let images = ["1", "2", "3", "4"]
    
    var body: some View {
        // 2
        TabView {
            ForEach(images, id: \.self) { item in
                 //3
                 Image(item)
                    .resizable()
//                    .scaledToFill()
                    .cornerRadius(10)
            }
        }
        .tabViewStyle(PageTabViewStyle())
    }
}

struct ImageSlider_Previews: PreviewProvider {
    static var previews: some View {
        // 4
        ImageSlider()
            .previewLayout(.fixed(width: 400, height: 300))
    }
}
