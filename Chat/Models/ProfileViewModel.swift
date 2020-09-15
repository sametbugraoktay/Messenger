//
//  ProfileViewModel.swift
//  Chat
//
//  Created by Samet Bugra Oktay on 6.08.2020.
//  Copyright © 2020 Samet Bugra Oktay. All rights reserved.
//

import Foundation

enum ProfileViewModelType {
    case info, logout
}

struct ProfileViewModel {
    let viewModelType: ProfileViewModelType
    let title: String
    let handler: (() -> Void)?
}
