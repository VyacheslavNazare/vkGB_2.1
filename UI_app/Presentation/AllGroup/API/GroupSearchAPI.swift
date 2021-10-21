//
//  GroupSearchAPI.swift
//  UI_app
//
//  Created by Вячеслав on 21.10.2021.
//

import Foundation
import Alamofire

struct GroupsSearchStruct {
    
}

final class GroupsSearchAPI  {
    
    func groupsSearch(completion: @escaping([GroupsSearchStruct])->()) {
        let url = "https://api.vk.com/method/groups.search?user_id=" + MySession.shared.userId + "q,type,country_id,count" + "&access_token=" + MySession.shared.token + "&v=5.81"
        AF.request(url).responseJSON{ response in
            print("Поиск групп:\n", response.value)
            
        }
   
       }
}
