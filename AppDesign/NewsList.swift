//
//  NewsList.swift
//  AppDesign
//
//  Created by Singh, Akash | RIEPL on 06/11/22.
//

import SwiftUI

struct NewsList: View {
    

    
    let newsList = NewsStore.shared.getAll()
    var body: some View {
        NavigationView {
            ScrollView {
                Section() {
                    VStack(alignment: .center, spacing: 5){
                        ImageSlider()
                            .frame(width: 320, height: 600, alignment: .center)
                    }
                }
                Section(header: HeaderView(text: "Social Media")) {
                    ForEach(0..<1, id: \.self) { _ in
                        Link(destination: URL(string: "twitter://timeline")!){
                            VStack{
                                Image("twitter")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .cornerRadius(10)
                                    .padding()
                                Text("Welcome to Twitter by Elon Musk")
                            }
                        }
                    }
                    
                    ForEach(0..<1, id: \.self) { _ in
                        Link(destination: URL(string: "phonepe://")!){
                            VStack{
                                HStack{
                                    Link(destination: URL(string: "weather://")!){
                                        Image("weather")
                                            .resizable()
                                            .aspectRatio(contentMode: .fit)
                                            .cornerRadius(10)
                                            .padding()
                                    }
                                    
                                    Link(destination: URL(string: "ms-word://")!){
                                        Image("word")
                                            .resizable()
                                            .aspectRatio(contentMode: .fill)
                                            .cornerRadius(10)
                                            .padding()
                                    }
                                    
                                    Link(destination: URL(string: "https://www.google.com/")!){
                                        Image("google")
                                            .resizable()
                                            .aspectRatio(contentMode: .fit)
                                            .cornerRadius(10)
                                            .padding()
                                    }
                                    
                                }
                                
                            }
                        }
                    }
                }
                
                Section(header: HeaderView(text: "Latest")) {
                    ForEach (newsList) { row in
                        NavigationLink(destination: DetailView(news: row)) {
                            NewsRowView(news: row)
                        }
                    }
                }
            }
            
            .navigationBarTitle("Home")
        }
        // prevent iPad split view
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

struct NewsRowView: View {
    let news: News
    var body: some View {
        HStack(alignment: .top, spacing: 16.0) {
            Image(news.imageName)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 120, height: 120)
                .cornerRadius(8.0)
            
            VStack(alignment: .leading, spacing: 4.0, content: {
                Text(news.title).font(.headline).lineLimit(2)
            })
        }
        .padding(8.0)
    }
}

struct NewsHeadlineView: View {
    let news: News
    var body: some View {
        VStack(alignment: .leading, spacing: 16.0) {
            Image(news.imageName)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .cornerRadius(8.0)
            
            VStack(alignment: .leading, spacing: 8.0, content: {
                Text(news.title).font(.title).lineLimit(2)

            })
        }
        .padding(8.0)
    }
}



struct NewsList_Previews: PreviewProvider {
    static var previews: some View {
        NewsList()
    }
}
