//
//  Cart.swift
//  BeShopSwiftUI
//
//  Created by HardiB.Salih on 6/20/24.
//

import Foundation

// Cart Struct
struct Cart: Codable, Identifiable, Hashable {
    let id: String
    var items: [CartItem] // Array of cart items
    var subtotal: Double
    var total: Double
    
    var userId: String
    var user: UserItem?
    
    // Computed property to get product IDs from cart items
    var productIds: [String] {
        return items.map { $0.product.id }
    }
    
    // Initializer
    init(id: String, userId: String, items: [CartItem], subtotal: Double, total: Double, user: UserItem? = nil) {
        self.id = id
        self.userId = userId
        self.items = items
        self.subtotal = subtotal
        self.total = total
        self.user = user
        
        // Calculate subtotal and total based on items
        let (calculatedSubtotal, calculatedTotal) = Cart.calculateCartValues(items: items)
        self.subtotal = calculatedSubtotal
        self.total = calculatedTotal
    }
    
    // Function to calculate subtotal and total based on cart items
    private static func calculateCartValues(items: [CartItem]) -> (Double, Double) {
        var subtotal: Double = 0.0
        var total: Double = 0.0
        
        for item in items {
            subtotal += item.product.price * Double(item.quantity)
            total += item.isOnSale ? (item.salePrice * Double(item.quantity)) : (item.product.price * Double(item.quantity))
        }
        
        return (subtotal, total)
    }
}

// CartItem Struct
struct CartItem: Codable, Identifiable, Hashable {
    let id: String
    let product: Product
    var quantity: Int
    let isOnSale: Bool
    let salePrice: Double
    
    init(id: String = UUID().uuidString, product: Product, quantity: Int, isOnSale: Bool, salePrice: Double) {
        self.id = id
        self.product = product
        self.quantity = quantity
        self.isOnSale = isOnSale
        self.salePrice = salePrice
    }
}


extension Cart {
    static let emptyCart : Cart = .init(
        id: "defaultCart",
        userId: "defaultUser",
        items: [],
        subtotal: 0.0,
        total: 0.0
    )
}
