//
//  GroupModel.swift
//  VkClientSwiftUI
//
//  Created by Константин Каменчуков on 15.04.2022.
//

import Foundation
import UIKit

struct GroupsResponse: Decodable {
    var response: GroupsNextResponse
    
    enum CodingKeys: String, CodingKey {
        case response
    }
}

struct GroupsNextResponse: Decodable {
    var count: Int = 0
    var items: [GroupsObjects]
    
    enum CodingKeys: String, CodingKey {
        case count, items
    }
}

struct GroupsObjects: Decodable {
    var name: String = ""
    var id: Int = 0
    var photo: String = ""
    
    enum CodingKeys: String, CodingKey {
        
        case name = "name"
        case id = "id"
        case photo = "photo_100"
    }
}
struct Group: Identifiable {
    
    let name: String
    let image: UIImage!
    let id = UUID()
}

var groups: [Group] = [
    Group(name: "BadNotDead", image: UIImage(named: "unnamed")),
    Group(name: "Audi sport", image: UIImage(named: "audi")),
    Group(name: "Экономист на час", image: UIImage(named: "rami")),
    Group(name: "Шо там у евреев", image: UIImage(named: "ju"))
]
