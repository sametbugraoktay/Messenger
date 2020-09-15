//
//  DatabaseManager.swift
//  Chat
//
//  Created by Samet Bugra Oktay on 6.08.2020.
//  Copyright © 2020 Samet Bugra Oktay. All rights reserved.
//

import Foundation
import Firebase
import MessageKit

class DatabaseManager {
    
    //Singleton instance.
    static let db = DatabaseManager()
    
    //Firestore instance.
    let fsdb = Firestore.firestore()
    
    //Returns a list of all chat rooms.
    func getChatRooms() -> [Chat] {
        let chatRooms = [Chat]()
        
        //TODO Retrieve chat rooms.
        
        return chatRooms
    }
    

}

