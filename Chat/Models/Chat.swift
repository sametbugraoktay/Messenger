//
//  Chat.swift
//  Chat
//
//  Created by Samet Bugra Oktay on 10.08.2020.
//  Copyright © 2020 Samet Bugra Oktay. All rights reserved.
//


import UIKit

struct Chat {
    
    var users: [String]
    
    var dictionary: [String: Any] {
        return [
            "users": users
        ]
    }
}

extension Chat {
    
    init?(dictionary: [String:Any]) {
        guard let chatUsers = dictionary["users"] as? [String] else {return nil}
        self.init(users: chatUsers)
    }
    
}
