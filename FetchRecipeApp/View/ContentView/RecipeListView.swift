//
//  RecipeListView.swift
//  FetchRecipeApp
//
//  Created by Sam Greenhill on 12/10/24.
//

import SwiftUI

struct RecipeListView: View {
    @StateObject private var viewModel = RecipeViewModel()
    @State var selectedEndpoint: RecipeEndpoints = .allRecipes

    var body: some View {
        NavigationView {
            VStack {
                Picker("Select Endpoint", selection: $viewModel.selectedEndPoint) {
                    ForEach(RecipeEndpoints.allCases) { endpoint in
                        Text(endpoint.rawValue).tag(endpoint)
                    }
                }
                .pickerStyle(SegmentedPickerStyle())
                .padding()
                .onChange(of: viewModel.selectedEndPoint) { oldValue, newEndpoint in
                    Task {
                        await viewModel.fetchRecipes(from: newEndpoint.url)
                    }
                }
                Group {
                    if viewModel.isLoading {
                        ProgressView("Loading recipes...")
                    } else if let errorMessage = viewModel.errorMessage {
                        ErrorView(message: errorMessage) {
                            Task {
                                await viewModel.fetchRecipes(from: viewModel.selectedEndPoint.url)
                                viewModel.selectedEndPoint = .allRecipes
                            }
                        }
                    } else if viewModel.recipes.isEmpty {
                        EmptyStateView()
                    } else {
                        List(viewModel.recipes) { recipe in
                            RecipeRowView(recipe: recipe)
                                .listRowSeparatorTint(.secondary)
                        }
                        .listStyle(.plain)
                    }
                }
                .navigationTitle("Recipes")
            }
            .background(Color.brown.opacity(0.4))
        }
        .task {
            await viewModel.fetchRecipes(from: viewModel.selectedEndPoint.url)
        }

    }
}

#Preview {
    ContentView()
}
