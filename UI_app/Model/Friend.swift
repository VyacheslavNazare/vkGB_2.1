//
//  Friend.swift
//  UI_app
//
//  Created by Вячеслав on 16.08.2021.
//

import Foundation

struct FriendModel {
    let name: String
    let avatarName: String
    var Gallery: [GalleryModel]
}
///JSON
struct FriendResponce: Decodable {
    let response: ItemsFriend
}

 struct ItemsFriend: Decodable {
    let items: [User]
}

struct User: Decodable {
    let first_name: String
    let id: Int
    let avatarURL: String
}
