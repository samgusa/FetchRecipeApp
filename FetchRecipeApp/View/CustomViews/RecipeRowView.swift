//
//  RecipeRowView.swift
//  FetchRecipeApp
//
//  Created by Sam Greenhill on 12/10/24.
//

import SwiftUI

struct RecipeRowView: View {
    let recipe: Recipe

    var body: some View {
        HStack {
            if let url = recipe.photoURLSmall {
                RemoteImage(url: "\(String(describing: url))")
                        .scaledToFit()
                        .frame(width: 50, height: 50)
                        .cornerRadius(8)
            }

            VStack(alignment: .leading) {
                Text(recipe.name)
                    .font(.headline)
                Text(recipe.cuisine)
                    .font(.subheadline)
            }
        }
        .listRowBackground(Color.clear)
    }
}


#Preview {
    ContentView()
}
