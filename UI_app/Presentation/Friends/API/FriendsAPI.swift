//
//  FriendsAPI.swift
//  UI_app
//
//  Created by Вячеслав on 19.10.2021.
//
//
import Foundation
import Alamofire

struct FriendsStruct {
    
}

final class FriendsAPI {
    
  

    func getFriends(completion: @escaping([FriendsStruct])->()) {

      
        let url = "https://api.vk.com/method/friends.get?user_id=" + MySession.shared.userId + "&order=hints" + "&fields=nickname,bdate,city,photo_50" + "&access_token=" + MySession.shared.token + "&v=5.81"
        AF.request(url).responseJSON{ response in
           print("Список друзей:\n", response.value)
        }
        
    }
}
// Рабочая
//final class GG {
//    func getGroups(completion: @escaping([GroupsStruct])->()) {
//        let url = "https://api.vk.com/method/groups.get?user_id=" + MySession.shared.userId + "&fields=city,description,members_count,photo_100" + "&access_token=" + MySession.shared.token + "&v=5.81"
//        AF.request(url).responseJSON{ response in
//            print("Список групп:\n", response.value)
//        }
//
//    }
//}
