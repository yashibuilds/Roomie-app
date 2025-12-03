//
//  StatusButtonView.swift
//  Roomie
//
//  Created by Yashi Surapaneni on 12/1/25.
//

import SwiftUI

enum Status: String, CaseIterable {
    case havingPeopleOver = "Having People Over"
    case inACall = "In a Call/Meeting"
    case sleeping = "Sleeping"
    case studying = "Studying"
    case gooning = "Gooning"
}

let statusIcons = ["person.3.fill", "phone.fill", "moon.fill", "book.fill", "sparkles"]

struct StatusButtonView: View {
    let status: Status
    let statusIcon: String
    @Binding var currButton: Status?
    
    var body: some View {
        Button(action:
                {
            print("Tapped on \(status.rawValue)")
            currButton = status
                }) {
                    Label(status.rawValue, systemImage: statusIcon)
                        .font(.system(size: 18, weight: .semibold))
                        .foregroundColor(.white)
                        .frame(maxWidth: .infinity)
                        .frame(height: 60)
                        .background(currButton == status ? secondaryColor : mainColor)
                        .cornerRadius(8)
        }
        .padding(.horizontal, 20)
    }
}
