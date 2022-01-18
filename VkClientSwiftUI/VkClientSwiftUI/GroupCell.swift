//
//  GroupCell.swift
//  VkClientSwiftUI
//
//  Created by Константин Каменчуков on 18.01.2022.
//

import SwiftUI

struct GroupCell: View {
    var groupName: String = "Group name"
    
    var body: some View {
        HStack {
            Spacer()
         Text("\(groupName)")
                .alignmentGuide(HorizontalAlignment.center, computeValue: {$0[.trailing]})
                Spacer()
            GroupImage {
                Image("Matt")
            }
            .alignmentGuide(HorizontalAlignment.center, computeValue: {$0[.leading]})
           Spacer()
        }
    }
}

struct GroupImage: View {
    var groupContent: Image
    
    init(@ViewBuilder groupContent: () -> Image ) {
        self.groupContent = groupContent()
    }
    var body: some View {
        groupContent
            .resizable()
            .aspectRatio(contentMode: .fill)
            .modifier(CircleShadow(shadowColor: .blue, shadowRadius: 5))
            .frame(width: 50, height: 50)
    }
}

//struct GroupCell_Previews: PreviewProvider {
//    static var previews: some View {
//        GroupCell()
//    }
//}
