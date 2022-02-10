//
//  FriendFotoView.swift
//  VkClientSwiftUI
//
//  Created by Константин Каменчуков on 09.02.2022.
//

import SwiftUI

struct FriendFotoView: View {
    let friendFoto: FriendsModel
    
    var body: some View {
        Spacer()
        Image(friendFoto.imageFriend).navigationTitle("FriendFotoView")
        Spacer()
    }
}

//struct FriendFotoView_Previews: PreviewProvider {
//    static var previews: some View {
//        FriendFotoView()
//    }
//}
