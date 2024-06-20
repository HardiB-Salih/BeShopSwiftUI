//
//  CartManager.swift
//  BeShopSwiftUI
//
//  Created by HardiB.Salih on 6/20/24.
//

import SwiftUI
import Combine
import Foundation
import SwiftUI

class CartManager: ObservableObject {
    @Published var cart: Cart
    
    init(cart: Cart) {
        self.cart = cart
        updateCart()
    }
    
    // Add a product to the cart with optional quantity
    func addToCart(product: Product, quantity: Int = 1) {
        if let existingItemIndex = cart.items.firstIndex(where: { $0.product.id == product.id }) {
            cart.items[existingItemIndex].quantity += quantity
        } else {
            let newItem = CartItem(
                product: product,
                quantity: quantity,
                isOnSale: product.onSale ?? false,
                salePrice: product.salePrice ?? product.price
            )
            cart.items.append(newItem)
        }
        updateCart()
    }
    
    // Remove a product from the cart
    func removeFromCart(product: Product) {
        if let existingItemIndex = cart.items.firstIndex(where: { $0.product.id == product.id }) {
            cart.items[existingItemIndex].quantity -= 1
            if cart.items[existingItemIndex].quantity <= 0 {
                cart.items.remove(at: existingItemIndex)
            }
            updateCart()
        }
    }
    
    // Delete a product from the cart
    func deleteFromCart(product: Product) {
        if let existingItemIndex = cart.items.firstIndex(where: { $0.product.id == product.id }) {
            cart.items.remove(at: existingItemIndex)
            updateCart()
        }
    }
    
    // Update quantity of a product in the cart
    func updateQuantity(product: Product, quantity: Int) {
        if var cartItem = cart.items.first(where: { $0.product.id == product.id }) {
            cartItem.quantity = quantity
            updateCart()
        }
    }
    
    // Get total number of items in the cart
    func getTotalItemCount() -> Int {
        return cart.items.reduce(0) { $0 + $1.quantity }
    }
    
    // Get cart item for a product
    func getCartItem(for product: Product) -> CartItem? {
        return cart.items.first(where: { $0.product.id == product.id })
    }
    
    // Calculate subtotal and total for the cart
    private func calculateCartValues() -> (Double, Double) {
        var subtotal: Double = 0.0
        var total: Double = 0.0
        
        for item in cart.items {
            subtotal += item.product.price * Double(item.quantity)
            total += item.isOnSale ? (item.salePrice * Double(item.quantity)) : (item.product.price * Double(item.quantity))
        }
        
        return (subtotal, total)
    }
    
    // Update cart subtotal and total
    private func updateCart() {
        let (updatedSubtotal, updatedTotal) = calculateCartValues()
        cart.subtotal = updatedSubtotal
        cart.total = updatedTotal
    }
}
