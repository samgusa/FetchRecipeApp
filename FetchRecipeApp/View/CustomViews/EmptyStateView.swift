//
//  EmptyStateView.swift
//  FetchRecipeApp
//
//  Created by Sam Greenhill on 12/10/24.
//

import SwiftUI

struct EmptyStateView: View {
    var body: some View {
            ContentUnavailableView {
                Text("Oops. Sorry")
            } description: {
                VStack(spacing: 10) {
                    Label("No recipes available", systemImage: "fork.knife")
                    Text("Try again later")
                }
                .foregroundStyle(.black)
            }
            .padding()
     }
}

#Preview {
    ContentView()
}
