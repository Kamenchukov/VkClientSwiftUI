//
//  GroupModel.swift
//  VkClientSwiftUI
//
//  Created by Константин Каменчуков on 10.02.2022.
//

import Foundation

class GroupModel: Identifiable {
    internal init(groupName: String, groupImage: String) {
        self.groupName = groupName
        self.groupImage = groupImage
    }
    
    let groupName: String
    let groupImage: String
    
}
