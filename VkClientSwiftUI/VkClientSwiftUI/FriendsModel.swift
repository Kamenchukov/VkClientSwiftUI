//
//  FrindsModel.swift
//  VkClientSwiftUI
//
//  Created by Константин Каменчуков on 23.01.2022.
//

import Foundation

class Friends:Identifiable {
    internal init(name: String, surName: String, imageFriend: String) {
        self.name = name
        self.surName = surName
        self.imageFriend = imageFriend
    }
    
    let id: UUID = UUID()
    let name: String
    let surName: String
    let imageFriend: String
}
