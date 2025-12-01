//
//  StatusButtonView.swift
//  Roomie
//
//  Created by Yashi Surapaneni on 12/1/25.
//

import SwiftUI

struct StatusButtonView: View {
    let statusText: String
    let statusIcon: String
    
    var body: some View {
        Button(action: {print("Tapped on \(statusText)")}) {
            Label(statusText, systemImage: statusIcon)
                .frame(maxWidth: .infinity)
                .padding(.vertical)
                .background(Color.indigo)
                .cornerRadius(8)
                .foregroundColor(Color.white)
        }
        .padding(.horizontal)
    }
}

#Preview() {
    StatusButtonView(statusText: "Hi", statusIcon: "person.circle")
}
