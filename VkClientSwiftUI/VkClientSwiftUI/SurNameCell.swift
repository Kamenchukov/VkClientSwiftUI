//
//  SurNameCell.swift
//  VkClientSwiftUI
//
//  Created by Константин Каменчуков on 18.01.2022.
//

import SwiftUI

struct SurNameCell: View {
    var surName: String = "Surname"
    var body: some View {
        HStack {
            Text("\(surName)")
            SurnameImage {
                Image("unnamed")
            }
        }
    }
}
struct CircleShadow: ViewModifier {
    let shadowColor: Color
    let shadowRadius: CGFloat
    
    func body(content: Content) -> some View {
        content
            .background(Circle()
            .fill(Color.white)
            .shadow(color: shadowColor, radius: shadowRadius))
    }
}

struct SurnameImage: View {
    var content: Image
    
    init(@ViewBuilder content: () -> Image) {
        self.content = content()
    }
    var body: some View {
        content
            .resizable()
            .aspectRatio(contentMode: .fill)
            .modifier(CircleShadow(shadowColor: .black, shadowRadius: 5))
            .frame(width: 50, height: 50)
            
    }
}
//struct SurNameCell_Previews: PreviewProvider {
//    static var previews: some View {
//        SurNameCell()
//    }
//}
