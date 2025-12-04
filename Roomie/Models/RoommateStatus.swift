//
//  RoommateStatus.swift
//  Roomie
//
//  Created by Yashi Surapaneni on 12/4/25.
//

import Foundation

struct RoommateStatus: Codable, Identifiable {
    let id: String
    let senderID: String
    let roomID: String
    let entryMode: String
    let until: Date
    let status: String
    let icon: String
    let createdAt: Date
    
    func toDictionary() -> [String: Any] {
        return [
            "id": id,
            "senderID": senderID,
            "roomID": roomID,
            "entryMode": entryMode,
            "until": until,
            "status": status,
            "icon": icon,  // If you add it
            "createdAt": createdAt
        ]
    }
}
