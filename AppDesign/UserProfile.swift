//
//  UserProfile.swift
//  AppDesign
//
//  Created by Singh, Akash | RIEPL on 07/11/22.
//

import SwiftUI

struct UserProfile: View {
    
    @State private var searchText = ""
    let newsList = NewsStore.shared.getAll()
    
    var body: some View {
        NavigationView {
            ScrollView{
                VStack{
                    Text(searchText)
                        .searchable(text: $searchText, prompt: "Look for something")
                        .navigationTitle("R-Cards")
                    ImageSlider()
                        .frame(height: 600)
                        .listRowInsets(EdgeInsets(top: 0, leading: 10, bottom: 10, trailing: 10))
                        .padding()
                    
                    ForEach(0..<1, id: \.self) { _ in
                        Section(header: HeaderView(text: "Explore")) {
                            
                            HStack{
                                Link(destination: URL(string: "twitter://timeline")!){
                                    VStack{
                                        Image(systemName: "paperplane.circle")
                                            .resizable()
                                            .aspectRatio(contentMode: .fit)
                                            .cornerRadius(10)
                                            .padding()
                                        Text("Twitter")
                                    }
                                }
                                Link(destination: URL(string: "https://www.google.com/")!){
                                    VStack{
                                        Image(systemName: "magnifyingglass.circle")
                                            .resizable()
                                            .aspectRatio(contentMode: .fit)
                                            .cornerRadius(10)
                                            .padding()
                                        Text("Google")
                                    }
                                }
                                Link(destination: URL(string: "phonepe://")!){
                                    VStack(alignment: .center, spacing: 5){
                                        Image(systemName: "creditcard.circle")
                                            .resizable()
                                            .aspectRatio(contentMode: .fit)
                                            .cornerRadius(10)
                                            .padding()
                                        Text("R-Pay")
                                    }
                                }
                                Link(destination: URL(string: "weather://")!){
                                    VStack{
                                        Image(systemName: "cloud.sun.circle")
                                            .resizable()
                                            .aspectRatio(contentMode: .fit)
                                            .cornerRadius(10)
                                            .padding()
                                        Text("Weather")
                                    }
                                }
                            }
                            
                            HStack{
                                Link(destination: URL(string: "ms-word://")!){
                                    VStack{
                                        Image(systemName: "doc.circle")
                                            .resizable()
                                            .aspectRatio(contentMode: .fit)
                                            .cornerRadius(10)
                                            .padding()
                                        Text("Word")
                                    }
                                }
                                Link(destination: URL(string: "uber://")!){
                                    VStack{
                                        Image(systemName: "car.circle")
                                            .resizable()
                                            .aspectRatio(contentMode: .fit)
                                            .cornerRadius(10)
                                            .padding()
                                        Text("Cabs")
                                    }
                                }
                                Link(destination: URL(string: "https://www.freecharge.in/mobile-recharge")!){
                                    VStack{
                                        Image(systemName: "circle.hexagonpath")
                                            .resizable()
                                            .aspectRatio(contentMode: .fit)
                                            .cornerRadius(10)
                                            .padding()
                                        Text("Recharge")
                                    }
                                }
                                Link(destination: URL(string: "maps://")!){
                                    VStack{
                                        Image(systemName: "map.circle")
                                            .resizable()
                                            .aspectRatio(contentMode: .fit)
                                            .cornerRadius(10)
                                            .padding()
                                        Text("Maps")
                                    }
                                }
                                
                            }
                        }
                        
                        Section(header: HeaderView(text: "Advertisement")) {
                            VStack(alignment: .center, spacing: 5){
                                Advertisement()
                                    .frame(width: 360, height: 200, alignment: .center)
                                    .padding()
                                
                                Text("Building whats already built with ❤️")
                                    .font(.headline)
                            }
                        }
                    }
                }
            }
        }
    }
}

struct UserProfile_Previews: PreviewProvider {
    static var previews: some View {
        UserProfile()
    }
}

