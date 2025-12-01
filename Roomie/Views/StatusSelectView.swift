//
//  ContentView.swift
//  Roomie
//
//  Created by Yashi Surapaneni on 11/18/25.
//

import SwiftUI

struct StatusSelectView: View {
    var body: some View {
        NavigationView {
            ScrollView {
                VStack(spacing: 12) {
                    TextView(text: "Please:")
                
                    
                    TextView(text: "Until:")
                    
                    
                    TextView(text: "Because I'm:")
                    
                    StatusButtonView(statusText: "Having People Over", statusIcon: "person.3.fill")
                    StatusButtonView(statusText: "In a Call/Meeting", statusIcon: "phone.fill")
                    StatusButtonView(statusText: "Sleeping", statusIcon: "moon.fill")
                    StatusButtonView(statusText: "Studying", statusIcon: "book.fill")
                    StatusButtonView(statusText: "Gooning", statusIcon: "sparkles")
                }
            }
        }
    }
}

#Preview() {
    StatusSelectView()
}
