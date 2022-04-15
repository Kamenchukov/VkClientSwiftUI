//
//  NewsView.swift
//  VkClientSwiftUI
//
//  Created by Константин Каменчуков on 10.02.2022.
//

import SwiftUI

struct NewsView: View {
    var news = [
    NewsModel(newsTitle: "Канье сошел с ума?", newsImage: "канье", newsText: "Похоже всеми любимый репер окончательно ударился в религию и слетел кукухой, потому что грозится стать призедентом России"),
    NewsModel(newsTitle: "Котики или собачки", newsImage: "catsandgogs", newsText: "Извечная проблема выбора питамца решается гениально просто, берите капибару. Нет ничего лучше капибары!"),
    NewsModel(newsTitle: "Когда наконец уберут улицы петербурга от снега?", newsImage: "snow", newsText: "Ответ губренатора Санкт-Петербурга:У меня дед до Берлина дошел!")
    ]
    var body: some View {
        List(news) { new in
            VStack{
                Text(new.newsTitle)
                Image(new.newsImage).resizable().frame(width: 150, height: 150)
                Text(new.newsText)
            }
            
        }
        
    }
}

//struct NewsView_Previews: PreviewProvider {
//    static var previews: some View {
//        NewsView()
//    }
//}
