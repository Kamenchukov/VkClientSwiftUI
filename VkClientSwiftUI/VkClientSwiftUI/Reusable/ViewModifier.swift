//
//  ViewModifier.swift
//  VkClientSwiftUI
//
//  Created by Константин Каменчуков on 15.04.2022.
//

import SwiftUI

struct ShadowModifier: ViewModifier {
    
    let shadowColor: Color
    
    func body(content: Content) -> some View {
        content
            .shadow(color: .black, radius: 10, x: -15, y: 10)
    }
}

