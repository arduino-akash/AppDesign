//
//  UserProfile.swift
//  AppDesign
//
//  Created by Singh, Akash | RIEPL on 07/11/22.
//

import SwiftUI

struct UserProfile: View {
    var body: some View {
        
        VStack{
        Image("person-1")
            .cornerRadius(50)
            Text("Akash Singh")
                .padding()
                .font(.system(size: 16, design: .rounded))
            
        }.frame(width: 200, height: 200, alignment: .center)

    }
}

struct UserProfile_Previews: PreviewProvider {
    static var previews: some View {
        UserProfile()
    }
}
