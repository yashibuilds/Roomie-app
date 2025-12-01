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
                VStack {
                    TextView(text: "Please:")
                
                    
                    TextView(text: "Until:")
                    
                    
                    TextView(text: "Because I'm:")
                }
            }
        }
    }
}

#Preview() {
    StatusSelectView()
}
