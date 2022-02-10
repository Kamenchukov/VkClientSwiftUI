//
//  TabBarView.swift
//  VkClientSwiftUI
//
//  Created by Константин Каменчуков on 10.02.2022.
//

import SwiftUI

struct TabBarView: View {
    var body: some View {
        TabView {
            FriendsView().tabItem {
                Image(systemName: "h.circle")
                Text("Friends")
            }
            GroupsView().tabItem {
                Image(systemName: "folder")
                Text("Groups")
            }
            NewsView().tabItem {
                Image(systemName: "square.and.pencil")
                Text("News")
            }
        }
            
        }
    }


//struct TabBarView_Previews: PreviewProvider {
//    static var previews: some View {
//        TabBarView()
//    }
//}
