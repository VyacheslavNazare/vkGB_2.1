//
//  GroupsAPI.swift
//  UI_app
//
//  Created by Вячеслав on 21.10.2021.
//

import Foundation
import Alamofire

struct GroupsStruct {
    
}

final class GroupsAPI  {
    
    func getGroups(completion: @escaping([GroupsStruct])->()) {
           let url = "https://api.vk.com/method/groups.get?user_id=" + MySession.shared.userId + "&fields=city,description,members_count,photo_100" + "&access_token=" + MySession.shared.token + "&v=5.81"
           AF.request(url).responseJSON{ response in
               print("Список групп:\n", response.value)
           }
   
       }
}
