//
//  ExtendedPhotoView.swift
//  VkClientSwiftUI
//
//  Created by Константин Каменчуков on 15.04.2022.
//

import SwiftUI
import Kingfisher

struct ExtendedPhotoView: View {

     @ObservedObject var photosViewModel: PhotosViewModel
     @Binding var photoIndex: Int?

     var body: some View {
         GeometryReader { geometry in
                      TabView {
                          KFImage(URL(string: photosViewModel.photos[photoIndex!].sizes["x"]!))
                              .resizable()
                              .scaledToFill()
                      }.tabViewStyle(PageTabViewStyle())
                          .frame(width: geometry.size.width, height: geometry.size.height)
                  }
              }
          }
