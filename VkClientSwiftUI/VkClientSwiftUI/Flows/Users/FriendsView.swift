//
//  FriendsView.swift
//  VkClientSwiftUI
//
//  Created by Константин Каменчуков on 15.04.2022.
//

import SwiftUI
import Kingfisher

struct FriendsView: View {
    
    @State var groupedArray: [String: [UserObject]] = [:]

      @ObservedObject var viewModel: UserViewModel
      let user = UserObject()
      let viewPhotosModel = PhotosViewModel()
      
      init(viewModel: UserViewModel) {
          self.viewModel = viewModel
      }
    
    var body: some View {
          List() {
              ForEach(viewModel.users) { user in
          NavigationLink {
              PhotoFriendsView(user: user, viewModelPhotos: viewPhotosModel)
          } label: {
              VStack {
                          HStack {
                              KFImage(URL(string: user.avatar))
                              TextBuilder {
                                  Text("\(user.firstName) \(user.lastName)")
                              }
                          }
                      }
              }
          }
          }.onAppear(perform: viewModel.fetchUsers)
      }

//      var body: some View {
//          List() {
//              ForEach(groupedArray.keys.sorted(), id: \.self) { key in
//                  Section(header: Text(key)) {
//                  ForEach(groupedArray[key]!, id: \.self) { value in
//          NavigationLink {
//              PhotoFriendsView(user: user, viewModelPhotos: viewPhotosModel)
//          } label: {
//
//                          HStack {
//                              KFImage(URL(string: value.avatar))
//                              TextBuilder {
//                                  Text("\(value.firstName) \(value.lastName)")
//                              }
//                          }
//                          }
//
//                  }
//              }
//          }
//          }
//              .onAppear {
//                  viewModel.fetchUsers()
//                  groupedArray = Dictionary(grouping: viewModel.users,
//                                          by: {$0.lastName.first?.uppercased() ?? ""}
//                                      ).mapValues{$0.sorted(by:{ $0.lastName < $1.lastName })}
//              }
//      }
}

