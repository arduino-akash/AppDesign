//
//  NewsStore.swift
//  AppDesign
//
//  Created by Singh, Akash | RIEPL on 06/11/22.
//

import Foundation

struct NewsStore {
    static let shared = NewsStore()
    
    func getAll() -> [News]{
        // images are downloaded from canva (allow for commercial use)
        return [
            News(id: UUID().uuidString, title: "Twitter by Elon",  imageName: "twitter"),
            News(id: UUID().uuidString, title: "Ind VS Pak", imageName: "indvspak"),
            News(id: UUID().uuidString, title: "India at UN", imageName: "un"),
            News(id: UUID().uuidString, title: "Top 5 Economies",  imageName: "economy"),
            News(id: UUID().uuidString, title: "Best foods for weight loss", imageName: "food"),
            News(id: UUID().uuidString, title: "Latest technology trends", imageName: "tech"),
            News(id: UUID().uuidString, title: "World cup campaign : India", imageName: "india")
        ]
    }
}
