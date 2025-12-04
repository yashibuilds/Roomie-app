//
//  Room.swift
//  Roomie
//
//  Created by Yashi Surapaneni on 12/4/25.
//

import Foundation

struct Room: Codable, Identifiable {
    let id: String
    var roomName: String
    let joinCode: String
    var memberUIDs: [String] // storing user objects stores a copy of each users' information, so if a user changes their name, it won't update
    let ownerUID: String
    let createdAt: Date
    
    func toDictionary() -> [String: Any] {
        var dict: [String: Any] =
        [
            "id": id,
            "roomName": roomName,
            "joinCode": joinCode,
            "memberUIDs": memberUIDs,
            "ownerUID": ownerUID,
            "createdAt": createdAt
        ]
        return dict
    }
}
