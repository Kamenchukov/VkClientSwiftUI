//
//  NewsModel.swift
//  VkClientSwiftUI
//
//  Created by Константин Каменчуков on 10.02.2022.
//

import Foundation

class NewsModel: Identifiable {
    internal init(newsTitle: String, newsImage: String, newsText: String) {
        self.newsTitle = newsTitle
        self.newsImage = newsImage
        self.newsText = newsText
    }
    let newsTitle: String
    let newsImage: String
    let newsText: String
}
