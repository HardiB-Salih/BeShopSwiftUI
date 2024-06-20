//
//  UserItem.swift
//  BeShopSwiftUI
//
//  Created by HardiB.Salih on 6/19/24.
//

import Foundation

struct UserItem: Codable, Identifiable, Hashable {
    let id : String
    let username: String
    let email: String
    
    var firstname: String?
    var lastname: String?
    var profilePicture: URL?
    var phoneNumber: String?
    var address: String?
    
    var carts: [Cart]?
    var wishlist: [Product]?
    var orders: [Order]?
}


extension UserItem {
    static let user1 = UserItem(
        id: "user1_id",
        username: "john_doe",
        email: "john.doe@example.com",
        firstname: "John",
        lastname: "Doe",
        profilePicture: URL(string: "https://example.com/profile_picture_john_doe.jpg"),
        phoneNumber: "1234567890",
        address: "123 Main St, City, Country",
        carts: [],
        wishlist: [],
        orders: []
    )

    static let user2 = UserItem(
        id: "user2_id",
        username: "jane_smith",
        email: "jane.smith@example.com",
        firstname: "Jane",
        lastname: "Smith",
        profilePicture: URL(string: "https://example.com/profile_picture_jane_smith.jpg"),
        phoneNumber: "9876543210",
        address: "456 Elm St, Town, Country",
        carts: [],
        wishlist: [],
        orders: []
    )
}
