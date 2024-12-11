//
//  ImageCache.swift
//  FetchRecipeApp
//
//  Created by Sam Greenhill on 12/10/24.
//
import Foundation
import UIKit

// Resource: https://xavier7t.com/image-caching-in-swiftui
class ImageCache {
    static let shared = ImageCache()

    private let cache = NSCache<NSString, UIImage>()

    private init() {}

    func set(_ image: UIImage, forKey key: String) {
        cache.setObject(image, forKey: key as NSString)
    }

    func get(forKey key: String) -> UIImage? {
        return cache.object(forKey: key as NSString)
    }
}
