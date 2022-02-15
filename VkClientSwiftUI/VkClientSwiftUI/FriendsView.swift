//
//  FriendsView.swift
//  VkClientSwiftUI
//
//  Created by Константин Каменчуков on 23.01.2022.
//

import SwiftUI


struct FriendsView: View {
    var friends: [FriendsModel] = [
        FriendsModel(name: "Игорь", surName: "Страупник", imageFriend: "Matt"),
        FriendsModel(name: "Степан", surName: "Разин", imageFriend: "unnamed"),
        FriendsModel(name: "Анна", surName: "Разматова", imageFriend: "unnamed"),
        FriendsModel(name: "Анастасия", surName: "Иванова", imageFriend: "unnamed"),
        FriendsModel(name: "Анджей", surName: "Сапковский", imageFriend: "Matt")
    ]
    var body: some View {
        List(friends.sorted(by: { $0.name < $1.name})) { friend in
            NavigationLink(destination: FriendFotoView(friendFoto: friend)) {
                Text(friend.name) }
        }
        .navigationBarTitle("Friends", displayMode: .inline)
            
        }
    }


//struct FriendsView_Previews: PreviewProvider {
//    static var previews: some View {
//        FriendsView()
//    }
//}
