//
//  RealmGroups.swift
//  VkClientSwiftUI
//
//  Created by Константин Каменчуков on 15.04.2022.
//

import RealmSwift

class RealmGroups: Object {
    
    @Persisted var name: String = ""
    @Persisted(primaryKey: true) var id: Int = 0
    @Persisted var photo: String = ""
}

extension RealmGroups {
    convenience init(groups: GroupsObjects) {
        self.init()
        
        self.photo = groups.photo
        self.name = groups.name
        self.id = groups.id
        self.photo = groups.photo
    }
}
