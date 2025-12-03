//
//  WelcomeScreen.swift
//  Roomie
//
//  Created by Yashi Surapaneni on 12/2/25.
//

import SwiftUI

struct WelcomeScreen: View {
    var body: some View {
        NavigationStack {
            VStack(spacing: 40) {
                Spacer()
                
                VStack(spacing: 12) {
                    Text("Roomie")
                        .font(.system(size:48, weight: .bold))
                }
                
                Spacer()
                
                // Get Started Button
                NavigationLink(destination: SelectStatusScreen()) {
                    Text("Get Started")
                        .font(.headline)
                        .foregroundColor(.white)
                        .frame(maxWidth: .infinity)
                        .frame(height: 64)
                        .background(mainColor)
                        .cornerRadius(8)
                }
                .padding(.horizontal, 40)
                .padding(.bottom, 50)
            }
        }
    }
}

#Preview {
    WelcomeScreen()
}
