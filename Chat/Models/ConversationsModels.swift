//
//  ConversationsModel.swift
//  Chat
//
//  Created by Samet Bugra Oktay on 6.08.2020.
//  Copyright © 2020 Samet Bugra Oktay. All rights reserved.
//


import Foundation

struct Conversation {
    let id: String
    let name: String
    let otherUserEmail: String
    let latestMessage: LatestMessage
}

struct LatestMessage {
    let date: String
    let text: String
    let isRead: Bool
}
