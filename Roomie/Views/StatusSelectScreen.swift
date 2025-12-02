//
//  ContentView.swift
//  Roomie
//
//  Created by Yashi Surapaneni on 11/18/25.
//

import SwiftUI

struct StatusSelectScreen: View {
    @State private var selectedStatus: Status? = nil
    
    var body: some View {
            ScrollView {
                VStack(spacing: 12) {
                    TextView(text: "Please:")
                        .padding(.top)
                
                    TextView(text: "Until:")
                    
                    
                    TextView(text: "Because I'm:")
                    
                    VStack(spacing: 15) {
                        ForEach(0..<Status.allCases.count) { index in
                            StatusButtonView(status: Status.allCases[index], statusIcon: statusIcons[index])
                        }
                    }
                }
            }
        }
    }

#Preview() {
    StatusSelectScreen()
}
