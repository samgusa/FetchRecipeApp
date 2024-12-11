//
//  Untitled.swift
//  FetchRecipeApp
//
//  Created by Sam Greenhill on 12/10/24.
//
import Foundation


struct Recipe: Codable, Identifiable {
    let id: UUID
    let name: String
    let cuisine: String
    let photoURLSmall: URL?
    let photoURLLarge: URL?

    private enum CodingKeys: String, CodingKey {
        case id = "uuid"
        case name
        case cuisine
        case photoURLSmall = "photo_url_small"
        case photoURLLarge = "photo_url_large"
    }
}
