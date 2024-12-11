//
//  ErrorView.swift
//  FetchRecipeApp
//
//  Created by Sam Greenhill on 12/10/24.
//

import SwiftUI

import SwiftUI

struct ErrorView: View {
    let message: String
    let retryAction: () -> Void
    
    var body: some View {
        ContentUnavailableView {
            Text(message)
                .foregroundColor(.primary)
                .multilineTextAlignment(.center)
        } description: {
            Image(systemName: "fork.knife")
                .resizable()
                .scaledToFit()
                .frame(width: 75, height: 75)
                .foregroundColor(.primary)

            Button("Retry") {
                retryAction()
            }
        }
        .padding()
    }
}


#Preview {
    ContentView()
}
