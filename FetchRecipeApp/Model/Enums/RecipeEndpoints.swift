//
//  RecipeEndpoints.swift
//  FetchRecipeApp
//
//  Created by Sam Greenhill on 12/10/24.
//

import Foundation

enum RecipeEndpoints: String, CaseIterable, Identifiable {
    case allRecipes = "All Recipes"
    case malformedData = "Malformed Data"
    case emptyData = "Empty Data"

    var id: String { self.rawValue }

    var url: URL {
        switch self {
                case .allRecipes:
                    return URL(string: "https://d3jbb8n5wk0qxi.cloudfront.net/recipes.json")!
                case .malformedData:
                    return URL(string: "https://d3jbb8n5wk0qxi.cloudfront.net/recipes-malformed.json")!
                case .emptyData:
                    return URL(string: "https://d3jbb8n5wk0qxi.cloudfront.net/recipes-empty.json")!
                }
    }
}
