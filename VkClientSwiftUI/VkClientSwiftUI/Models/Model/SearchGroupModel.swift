//
//  SearchGroupModel.swift
//  VkClientSwiftUI
//
//  Created by Константин Каменчуков on 16.04.2022.
//

import Foundation

 struct SearchResponse: Decodable {
     let response: SearchResponseNext

     enum CodingKeys: String, CodingKey {
         case response
     }
 }

 struct SearchResponseNext: Decodable {
     var count: Int = 0
     let items: [SearchedObjects]

     enum CodingKeys: String, CodingKey {
         case count, items
     }
 }

 struct SearchedObjects: Decodable, Hashable {
     dynamic var name: String = ""
     dynamic var photo: String = ""

     enum CodingKeys: String, CodingKey {
         case name
         case photo = "photo_100"

     }
 }