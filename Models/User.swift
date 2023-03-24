//
//  User.swift
//  FriendFace
//

import Foundation

extension Date {
    func toString() -> String {
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ssZ"
        return formatter.string(from: self)
    }
}

struct User: Codable, Identifiable {
    let id: UUID
    let name: String
    let age: Int
    let company: String
    let email: String
    let address: String
    let about: String
    let registered: String
    let tags: [String]
    let friends: [Friend]
    var isActive: Bool
    //{   return registered.prefix(10) == Date().toString().prefix(10)   }
}

