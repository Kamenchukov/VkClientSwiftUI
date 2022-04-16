//
//  FriendsView.swift
//  VkClientSwiftUI
//
//  Created by Константин Каменчуков on 15.04.2022.
//

import SwiftUI
import Network

struct FriendsView: View {
    
    let viewPhotosModel = PhotosViewModel()
    @ObservedObject var viewModel: UserViewModel
    let user = UserObject()
    @State var searchText = ""
    
    private var searchResult: [UserObject] {
             if searchText.isEmpty {
                 return viewModel.users
             } else {
                 return viewModel.users.filter { user in
                     "\(user.lastName) \(user.firstName)".contains(searchText)
                 }
             }
         }
    
    var body: some View {
        NavigationView {
                     List(searchResult.indices, id: \.self) { index in
                         NavigationLink {
                                PhotoFriendsView(viewModel: viewPhotosModel, user: searchResult[index])
                         } label: {
                                 FriendsCell(searchResult: searchResult[index])
                         }
                     }.onAppear(perform: viewModel.fetchUsers)
                .listStyle(.plain)
                 }.searchable(text: $searchText, placement: .navigationBarDrawer(displayMode: .always))
             }
}

