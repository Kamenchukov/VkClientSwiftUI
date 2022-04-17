//
//  CoordinatorObject.swift
//  VkClientSwiftUI
//
//  Created by Константин Каменчуков on 15.04.2022.
//

import SwiftUI

 enum CoordinatorTab {
     case one
     case two
     case three
 }

 class CoordinatorObject: ObservableObject {


     @Published var tab = CoordinatorTab.one
     @Published var tabOneViewModel: FriendsView!
     @Published var tabTwoViewModel: GroupsView!
     @Published var tabThreeViewModel: NewsView!

     init() {

     }

 }

