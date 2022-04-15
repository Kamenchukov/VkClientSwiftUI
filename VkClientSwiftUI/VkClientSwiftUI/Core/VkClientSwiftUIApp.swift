//
//  VkClientSwiftUIApp.swift
//  VkClientSwiftUI
//
//  Created by Константин Каменчуков on 14.01.2022.
//

import SwiftUI

@main
struct VkClientSwiftUIApp: App {
    
    @State var isLogin: Bool = false
    
    var body: some Scene {
        WindowGroup {
            if isLogin {
                TabBarViewVK()
            } else {
                LoginFromWebView(isLogin: $isLogin)
            }
        }
    }
}
