//
//  HeaderView.swift
//  AppDesign
//
//  Created by Singh, Akash | RIEPL on 06/11/22.
//

import SwiftUI

struct HeaderView: View {
    let text: String
    var body: some View {
        HStack {
            Text(text).font(.headline).padding(EdgeInsets(top: 24, leading: 28, bottom: 24, trailing: 24))
        }
        .frame(width: UIScreen.main.bounds.width, height: 36, alignment: .leading)
        .background(Color(UIColor.systemBackground))
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView(text: "Welcome to My App")
    }
}
