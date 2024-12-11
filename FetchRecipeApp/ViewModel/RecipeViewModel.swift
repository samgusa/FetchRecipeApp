
//
//  Untitled.swift
//  FetchRecipeApp
//
//  Created by Sam Greenhill on 12/10/24.
//

import Foundation

class RecipeViewModel: ObservableObject {

    @Published var recipes: [Recipe] = []
    @Published var errorMessage: String? = nil
    @Published var isLoading: Bool = false
    @Published var selectedEndPoint: RecipeEndpoints = .allRecipes

    private let recipesURL = URL(string: "https://d3jbb8n5wk0qxi.cloudfront.net/recipes.json")!

    @MainActor
    func fetchRecipes(from url: URL? = nil) async {

        self.isLoading = true
        self.errorMessage = nil

        let targetURL = url ?? selectedEndPoint.url

        do {
            let (data, _) = try await URLSession.shared.data(from: targetURL)

            let decodedResponse = try JSONDecoder().decode([String: [Recipe]].self, from: data)


            if let fetchedRecipes = decodedResponse["recipes"] {
                if fetchedRecipes.isEmpty {
                    self.recipes = []
                } else {
                    self.recipes = fetchedRecipes
                }
            } else {
                self.errorMessage = "Failed to load recipes."
            }

        } catch {
            self.errorMessage = "Failed to load recipes. Please try again"
        }
        self.isLoading = false
    }
}
