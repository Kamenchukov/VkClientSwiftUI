//
//  GroupsCell.swift
//  VkClientSwiftUI
//
//  Created by Константин Каменчуков on 16.04.2022.
//

import SwiftUI

 struct GroupsCell: View {

     @State var animationAmount = false
     let groups: RealmGroups

     var body: some View {
         VStack {
             HStack {
                 AvatarImage{
                     AsyncImage(url: URL(string: groups.photo))
                 }
                 .onTapGesture {
                     animationAmount = true
                     DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
                         animationAmount = false
                     }
                 }
                 TextBuilder {
                     Text(groups.name)
                 }
             }
     }.scaleEffect(animationAmount ? 1.2 : 1)
             .animation(.spring(response: 0.4, dampingFraction: 0.6))
     }
 }
