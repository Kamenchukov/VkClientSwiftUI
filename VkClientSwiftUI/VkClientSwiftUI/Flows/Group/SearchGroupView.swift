//
//  SearchGroupView.swift
//  VkClientSwiftUI
//
//  Created by Константин Каменчуков on 15.04.2022.
//

import SwiftUI

struct SearchGroupView: View {
    @ObservedObject var viewModel: SearchGroupViewModel
         @State var searchText = ""

         private var searchResult: [SearchedObjects] {
             if searchText.isEmpty {
                 return []
             } else {
                 viewModel.fetchGroupsFromNetwork(searchRequest: searchText)
                 return viewModel.groups
                 }
             }


         var body: some View {
             NavigationView {
                 VStack {
                     List(searchResult, id: \.self) { groups in
                             HStack {
                                 AvatarImage{
                                     AsyncImage(url: URL(string: groups.photo))
                                 }
                                 TextBuilder {
                                     Text(groups.name)
                                 }
                             }

                     }.onAppear {
                         viewModel.fetchGroupsFromNetwork(searchRequest: searchText)
                     }
                 }
             }.searchable(text: $searchText)
         }
     }
