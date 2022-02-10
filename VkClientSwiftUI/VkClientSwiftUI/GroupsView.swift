//
//  GroupsView.swift
//  VkClientSwiftUI
//
//  Created by Константин Каменчуков on 10.02.2022.
//

import SwiftUI
import DifferenceKit

struct GroupsView: View {
    var groups = [
        GroupModel(groupName: "BadNotDead", groupImage: "unnamed"),
        GroupModel(groupName: "Человечкская многоножка", groupImage: "70224"),
        GroupModel(groupName: "Audi sport", groupImage: "audi"),
        GroupModel(groupName: "Экономист на час", groupImage: "rami"),
        GroupModel(groupName: "Шо там у евреев", groupImage: "ju")
    ]
    var body: some View {
        List(groups) { group in
            HStack {
            Text(group.groupName)
            Spacer()
                Image(group.groupImage).resizable().frame(width: 50, height: 50)
            }
        }
    }
}

//struct GroupsView_Previews: PreviewProvider {
//    static var previews: some View {
//        GroupsView()
//    }
//}
