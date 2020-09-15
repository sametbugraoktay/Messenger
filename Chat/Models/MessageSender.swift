//
//  MessageSender.swift
//  Chat
//
//  Created by Samet Bugra Oktay on 7.08.2020.
//  Copyright © 2020 Samet Bugra Oktay. All rights reserved.
//

import Foundation
import MessageKit

struct MessageSender: SenderType, Equatable {
    var senderId: String
    var displayName: String
}
