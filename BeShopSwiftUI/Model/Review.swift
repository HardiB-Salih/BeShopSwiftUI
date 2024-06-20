//
//  Review.swift
//  BeShopSwiftUI
//
//  Created by HardiB.Salih on 6/20/24.
//

import Foundation

struct Review: Codable, Identifiable, Hashable {
    let id : String
    let rating: Int // 1-5 stars
    let comment: String
    let productId: String
    let userId: String
    var product: Product?
    var user: UserItem?
}
