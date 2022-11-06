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
        let description = "A news application is a big interactive database that tells a news story. Think of it like you would any other piece of journalism. It just uses software instead of words and pictures. By showing each reader data that is specific to them, a news app can help each reader understand a story in a way that’s personally meaningful to them. It can help a reader understand their personal connection to a broad national phenomenon, and help them attach what they know to what they don’t know, and thereby encourage a deep understanding of abstract concepts."
        return [
            News(id: UUID().uuidString, title: "ICC T20 World Cup", description: "The triple-header on Sunday began with a shock loss for South Africa, who exited the tournament to open the gates for Pakistan or Bangladesh to qualify. At the same venue, Pakistan beat Bangladesh to seal their semi-final spot. With New Zealand and England having already sealed their qualification after Saturday's round of matches, Group 2 witnessed some drama with the Proteas going down to Netherlands in a stunning loss for the Temba Bavuma-led side, who were once on top of the table before back-to-back losses against Pakistan and Netherlands.", dateString: "November 3, 2022", author: "John Smith", imageName: "worldcup"),
            News(id: UUID().uuidString, title: "Ind VS Pak", description: "South Africa’s shocking defeat against the Netherlands has kicked the Proteas out of the T20 World Cup 2022. There are two things that may seem significant for Indian fans after the result of the South Africa vs Netherlands match. Firstly, India have now secured its place in the semi-finals. The result of the India vs Zimbabwe match later in the day will only make sure Rohit Sharma’s boys will end up on top of the group or not.", dateString: "November 4, 2022", author: "John Smith", imageName: "indvspak"),
            News(id: UUID().uuidString, title: "India at UN", description: description, dateString: "November 5, 2022", author: "Alan Delloit", imageName: "un"),
            News(id: UUID().uuidString, title: "Top 5 Economies", description: description, dateString: "October 12, 2022", author: "John Smith", imageName: "economy"),
            News(id: UUID().uuidString, title: "Best foods for weight loss", description: description, dateString: "November 3, 2022", author: "Rosse M. S.", imageName: "food"),
            News(id: UUID().uuidString, title: "Latest technolofy trends", description: description, dateString: "October 3, 2022", author: "John Smith", imageName: "tech"),
            News(id: UUID().uuidString, title: "World cup campaign : India", description: description, dateString: "November 4, 2022", author: "John Smith", imageName: "india"),
            News(id: UUID().uuidString, title: "Welcome to News app", description: description, dateString: "October 5, 2022", author: "John Smith", imageName: "news")
        ]
    }
}
