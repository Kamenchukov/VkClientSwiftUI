//
//  ContainerView.swift
//  VkClientSwiftUI
//
//  Created by Константин Каменчуков on 24.01.2022.
//

import SwiftUI

struct ContainerView: View {
    @State private var shouldShowMainView: Bool = false
    
    var body: some View {
       
        NavigationView {
            HStack {
                ContentView(shouldShowMainView: $shouldShowMainView)
                NavigationLink(destination: TabBarView(), isActive: $shouldShowMainView) {
                    EmptyView()
                }
            }
        }
        
    }
    
}

//struct ContainerView_Previews: PreviewProvider {
//    static var previews: some View {
//        ContainerView()
//    }
//}
