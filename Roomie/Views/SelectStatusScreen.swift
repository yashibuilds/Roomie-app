//
//  ContentView.swift
//  Roomie
//
//  Created by Yashi Surapaneni on 11/18/25.
//

import SwiftUI

let mainColor = Color.indigo
let secondaryColor = Color.teal

enum EntryMode: String, CaseIterable {
    case doNotEnter = "Do Not Enter"
    case enterQuietly = "Enter Quietly"
}

struct SelectStatusScreen: View {
    @State private var selectedEntryMode: EntryMode = .doNotEnter
    @State private var selectedTime = Date().addingTimeInterval(30 * 60)
    @State private var selectedStatus: Status? = nil
    
    var body: some View {
            ScrollView {
                VStack(spacing: 32) {
                    // PLEASE SECTION
                    VStack(spacing: 12) {
                        TextView(text: "Please:")
                        
                        Picker("Select Entry Mode", selection: $selectedEntryMode) {
                            ForEach(EntryMode.allCases, id: \.self) { mode in
                                Text(mode.rawValue).tag(mode)
                            }
                        }
                        .pickerStyle(.segmented)
                        .padding(.horizontal, 20)
                    }
                    
                    // UNTIL SECTION
                    VStack(spacing: 12) {
                        TextView(text: "Until:")
                        
                        DatePicker("Select Time", selection: $selectedTime, displayedComponents: .hourAndMinute)
                            .datePickerStyle(.wheel)
                            .labelsHidden()
                            .frame(height: 180)
                            .padding(.horizontal, 20)
                    }
                    
                    // BECAUSE I'M SECTION
                    VStack(spacing: 12) {
                        TextView(text: "Because I'm:")
                        
                        VStack(spacing: 12) {
                            ForEach(0..<Status.allCases.count) { index in
                                StatusButtonView(status: Status.allCases[index], statusIcon: statusIcons[index], currButton: $selectedStatus)
                            }
                        }
                    }
                    
                    // SEND BUTTON
                    NavigationLink(destination: SentStatusScreen()) {
                            Label("Send Status", systemImage: "paperplane.fill")
                                .font(.system(size: 18, weight: .semibold))
                                .foregroundColor(.white)
                                .frame(maxWidth: .infinity)
                                .frame(height: 60)
                                .background(selectedStatus == nil ? .gray : secondaryColor)
                                .cornerRadius(8)
                        }
                        .disabled(selectedStatus == nil)
                        .padding(.horizontal, 20)
                        .padding(.top, 8)
                    }
                }
                .padding(.vertical, 24)
                .navigationBarBackButtonHidden(true)
            }
        func sendStatus() {
            if let selectedStatus {
                print("Sending Status:")
                print("Please \(selectedEntryMode.rawValue) until \(selectedTime) because I'm \(selectedStatus.rawValue)")
            }
        }
    }

#Preview() {
    SelectStatusScreen()
}
