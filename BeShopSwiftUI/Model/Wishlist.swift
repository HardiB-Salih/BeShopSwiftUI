//
//  Wishlist.swift
//  BeShopSwiftUI
//
//  Created by HardiB.Salih on 6/20/24.
//

import Foundation

struct Wishlist: Codable, Identifiable, Hashable {
    let id : String
    let userId: String
    let productsId: [String]
    
    var products: [Product]?
    var user: UserItem?
}
