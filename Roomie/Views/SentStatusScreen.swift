//
//  StatusSentScreen.swift
//  Roomie
//
//  Created by Yashi Surapaneni on 12/1/25.
//

import SwiftUI

struct SentStatusScreen: View {
    var body: some View {
        VStack(spacing: 24) {
            Spacer()
            
            // Success icon
            Image(systemName: "checkmark.circle.fill")
                .font(.system(size: 80))
                .foregroundColor(mainColor)
            Text("Status sent!")
                .font(.system(size: 28, weight: .semibold))
            
            Spacer()
        }
        .padding(.horizontal, 20)
        .navigationBarBackButtonHidden(true)
    }
}

#Preview {
    SentStatusScreen()
}
