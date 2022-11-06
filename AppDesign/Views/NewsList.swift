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
            List {
                Section(header: HeaderView(text: "Advertisement")) {
                    ForEach(0..<1, id: \.self) { _ in
                        Link(destination: URL(string: "twitter://timeline")!){
                            VStack{
                                Image("twitter")
                                Spacer()
                                Text("Welcome to Twitter by Elon Musk")
                                
                            }.frame(width: 300, height: 290, alignment: .center)
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
                Text(news.description).lineLimit(2).font(.subheadline)
                Text(news.dateString)
                    .foregroundColor(.gray)
                    .font(.caption)
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
                Text(news.dateString)
                    .foregroundColor(.gray)
                    .font(.subheadline)
                Text(news.description).lineLimit(3).font(.subheadline)
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
