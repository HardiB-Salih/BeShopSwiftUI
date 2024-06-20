//
//  Product.swift
//  BeShopSwiftUI
//
//  Created by HardiB.Salih on 6/20/24.
//

import Foundation
struct Product: Codable, Identifiable, Hashable {
    let id : String
    let name: String
    let description: String
    var price: Double
    let images: [String]
    let brand: String
    let category: String // e.g., skincare, makeup, haircare
    let subCatogary: String
    var subSubCatogary: String?
    var onSale: Bool?
    var salePrice: Double?
    let colors: [String] // list of available colors
    let ownerId: String
    
    let reviewsId: [String]?
    var user: UserItem?
    var reviews: [Review]? // reference to reviews for this product
}

extension Product {
    static let placeholder : Product = .init(
        id: UUID().uuidString,
        name: "Double Wear Stay-in-Place Foundation",
        description: "Wear confidence. Estée Lauder Double Wear Stay-in-Place Makeup is a 24-hour liquid foundation with a flawless, natural, matte finish that helps to unify uneven skin tone and control oil and shine. Buildable medium-to-full coverage in over 55 shades.",
        price: 52.00,
        images: ["sample1", "sample4", "sample2", "sample6"],
        brand: "Estée Lauder",
        category: "Makeup",
        subCatogary: "Face",
        subSubCatogary: "Foundation",
        colors: ["FADEBB", "895F30"],
        ownerId: "1236789o0hhf", 
        reviewsId: [""]
    )
    
    static let product1 = Product(
        id: "prod1",
        name: "Moisturizing Cream",
        description: "Hydrates and nourishes skin.",
        price: 25.0,
        images: ["sample2", "sample7", "sample5"],
        brand: "SkinCareCo",
        category: "Skincare",
        subCatogary: "Face Creams",
        subSubCatogary: "Moisturizers",
        onSale: false,
        salePrice: nil,
        colors: ["FADEBB", "895F30"],
        ownerId: "owner1",
        reviewsId: nil,
        user: nil,
        reviews: nil
    )

    static let  product2 = Product(
        id: "prod2",
        name: "Lipstick",
        description: "Long-lasting matte lipstick.",
        price: 15.0,
        images: ["sample6", "sample3", "sample4"],
        brand: "MakeupCo",
        category: "Makeup",
        subCatogary: "Lips",
        subSubCatogary: "Lipsticks",
        onSale: true,
        salePrice: 10.0,
        colors: ["FADEBB", "895F30"],
        ownerId: "owner2",
        reviewsId: nil,
        user: nil,
        reviews: nil
    )

    static let  product3 = Product(
        id: "prod3",
        name: "Shampoo",
        description: "Revitalizing shampoo for all hair types.",
        price: 12.0,
        images: ["sample4", "sample3"],
        brand: "HairCareCo",
        category: "Haircare",
        subCatogary: "Shampoo",
        subSubCatogary: nil,
        onSale: true,
        salePrice: 9.0,
        colors: ["FADEBB"],
        ownerId: "owner3",
        reviewsId: nil,
        user: nil,
        reviews: nil
    )
    
    
    static let products = [placeholder, product1, product2, product3]
}
