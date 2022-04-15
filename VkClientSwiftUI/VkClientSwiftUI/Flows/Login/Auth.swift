//
//  Auth.swift
//  VkClientSwiftUI
//
//  Created by Константин Каменчуков on 15.04.2022.
//

import Foundation

class Auth {
    static let instance = Auth()
    var token = ""
    var userID = 0

    private init() {}
}
