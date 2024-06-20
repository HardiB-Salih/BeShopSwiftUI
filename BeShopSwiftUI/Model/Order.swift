//
//  Order.swift
//  BeShopSwiftUI
//
//  Created by HardiB.Salih on 6/20/24.
//

import Foundation
struct Order: Codable, Identifiable, Hashable {
    
    let id : String
    var userId: String
    var productInfos: [ProductInfo]
    var orderDate: Date
    var totalPrice: Double
    var status: String
    
    var user: UserItem?
    var products: [Product]?
}


struct ProductInfo: Codable, Hashable  {
    let productId: String
    let name: String
    let price: Double
    let category: String
    // Add other necessary fields
}
