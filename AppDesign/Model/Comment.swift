//
//  Comment.swift
//  AppDesign
//
//  Created by Singh, Akash | RIEPL on 06/11/22.
//

import Foundation

struct Comment: Identifiable {
    var id = UUID()
    let userName: String
    let comment: String
    let dateString: String
    let personImageName: String
}
