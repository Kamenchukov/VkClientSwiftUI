//
//  LoginFromWebView.swift
//  VkClientSwiftUI
//
//  Created by Константин Каменчуков on 15.04.2022.
//

import SwiftUI

struct LoginFromWebView: View {
    
    @Binding var isLogin: Bool
    
    var body: some View {
        VKLoginWebView {
            self.isLogin = true
        }
    }
}
