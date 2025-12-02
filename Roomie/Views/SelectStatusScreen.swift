//
//  ContentView.swift
//  Roomie
//
//  Created by Yashi Surapaneni on 11/18/25.
//

import SwiftUI

enum EntryMode: String, CaseIterable {
    case doNotEnter = "Do Not Enter"
    case enterQuietly = "Enter Quietly"
}

struct SelectStatusScreen: View {
    @State private var selectedEntryMode: EntryMode = .doNotEnter
    @State private var selectedTime = Date()
    @State private var selectedStatus: Status? = nil
    
    var body: some View {
            ScrollView {
                VStack(spacing: 12) {
                    TextView(text: "Please:")
                        .padding(.top)
                    
                    Picker("Select Entry Mode", selection: $selectedEntryMode) {
                        ForEach(EntryMode.allCases, id: \.self) { mode in
                            Text(mode.rawValue).tag(mode)
                        }
                    }
                    .pickerStyle(.segmented)
                    .padding()
                
                    TextView(text: "Until:")
                    
                    DatePicker("Select Time", selection: $selectedTime, displayedComponents: .hourAndMinute)
                        .pickerStyle(.wheel)
                        .labelsHidden()
                    
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
    SelectStatusScreen()
}
