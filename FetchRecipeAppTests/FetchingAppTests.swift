//
//  FetchingAppTests.swift
//  FetchRecipeAppTests
//
//  Created by Sam Greenhill on 12/10/24.
//

import XCTest
@testable import FetchRecipeApp

final class FetchingAppTests: XCTestCase {

    func testFetchRecipes_EmptyData() async {
        let viewModel = RecipeViewModel()
        // Use a URL that simulates an empty recipe response
        let emptyData = URL(string: "https://d3jbb8n5wk0qxi.cloudfront.net/recipes-empty.json")!

        // Perform the async fetch
        await viewModel.fetchRecipes(from: emptyData)

        // Test that the recipes array is empty
        XCTAssertEqual(viewModel.recipes.count, 0, "Recipes should be empty when the response contains no recipes")
    }



    func testFetchRecipes_MalformedData() async {
        let viewModel = RecipeViewModel()
        let malformedData = URL(string: "https://d3jbb8n5wk0qxi.cloudfront.net/recipes-malformed.json")!

        await viewModel.fetchRecipes(from: malformedData)

        XCTAssertNotNil(viewModel.errorMessage, "Error message should be set for malformed data")
    }

}
