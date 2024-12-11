//
//  FetchRecipeAppTests.swift
//  FetchRecipeAppTests
//
//  Created by Sam Greenhill on 12/10/24.
//

import XCTest
@testable import FetchRecipeApp

struct FetchRecipeAppTests {

    func testFetchRecipes_EmptyData() async {
        let viewModel = RecipeViewModel()
        let emptyData = URL(string: "https://d3jbb8n5wk0qxi.cloudfront.net/recipes-empty.json")!

        await viewModel.fetchRecipes(from: emptyData)

        XCTAssertEqual(viewModel.recipes.count, 0, "Recipes should be empty")
        XCTAssertEqual(viewModel.errorMessage, "No recipes available", "Empty state message should be set")
    }

    func testFetchRecipes_MalformedData() async {
        let viewModel = RecipeViewModel()
        let malformedData = URL(string: "https://d3jbb8n5wk0qxi.cloudfront.net/recipes-malformed.json")!

        await viewModel.fetchRecipes(from: malformedData)

        XCTAssertNotNil(viewModel.errorMessage, "Error message should be set for malformed data")
    }

}
