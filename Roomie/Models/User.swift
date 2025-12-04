//
//  UserModel.swift
//  Roomie
//
//  Created by Yashi Surapaneni on 12/3/25.
//

import Foundation

struct User: Codable, Identifiable {
    let id: String
    var email: String
    var name: String
    var deviceToken: String? = nil // nil if they haven't granted permissions yet
    var roomID: String? = nil // nil if they haven't joined a room yet
    let createdAt: Date
    
    func toDictionary() -> [String: Any] {
        var dict: [String: Any] =
        [
            "id": id,
            "email": email,
            "name": name,
            "createdAt": createdAt
        ]
        if let token = deviceToken {
            dict["deviceToken"] = token
        }
        if let room = roomID {
            dict["roomID"] = room
        }
        return dict
    }
}
