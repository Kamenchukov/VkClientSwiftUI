//
//  PhotosViewModel.swift
//  VkClientSwiftUI
//
//  Created by Константин Каменчуков on 15.04.2022.
//

import Foundation

class PhotosViewModel: ObservableObject, Identifiable {
    
    let id = UUID()
    private let networkService = NetworkService()
    private let token = Auth.instance.token
    @Published var photos: [PhotosObject] = []
    
   public func fetchPhotos(ownerID: Int) {
         networkService.loadPhotos(token: token, ownerID: ownerID ) { [weak self] photos in
            guard let self = self else { return }
            self.photos = photos
        }
    }
}
