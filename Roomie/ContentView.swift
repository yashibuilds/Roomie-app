//
//  ContentView.swift
//  Roomie
//
//  Created by Yashi Surapaneni on 11/18/25.
//

import SwiftUI

struct TimePicker: View {
    @State private var selectedTime: Date = Date()
    
    var body: some View {
        DatePicker("Select a time", selection: $selectedTime, displayedComponents: .hourAndMinute)
            .datePickerStyle(WheelDatePickerStyle())
            .labelsHidden()
    }
}

struct StatusButton: View {
    let statusText: String
    let statusImage: String
    
    var body: some View {
        Button(action: {print("hi")}) {
            Label(statusText, systemImage: statusImage)
        }
        .padding()
        .frame(maxWidth: .infinity)
        .background(.indigo)
        .foregroundColor(.white)
        .cornerRadius(8)
    }
}

struct ContentView: View {
    var body: some View {
        ScrollView {
            VStack(spacing: 12) {
                Text("Please:")
                
                Text("Until:")
                
                TimePicker()
                
                Text("Because I'm:")
                
                VStack(spacing: 16) {
                    StatusButton(statusText: "Having People Over", statusImage: "person.3.fill")
                    StatusButton(statusText: "In a Call/Meeting", statusImage: "phone.fill")
                    StatusButton(statusText: "Sleeping", statusImage: "moon.fill")
                    StatusButton(statusText: "Studying", statusImage: "book.fill")
                    StatusButton(statusText: "Gooning", statusImage: "sparkles")
                }
                .fontWeight(.regular)
            }
            .fontWeight(.bold)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
