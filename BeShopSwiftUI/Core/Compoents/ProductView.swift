//
//  ProductView.swift
//  BeShopSwiftUI
//
//  Created by HardiB.Salih on 6/18/24.
//

import SwiftUI

struct ProductView: View {
    let product: Product
    @ObservedObject var cartManager: CartManager
    
    let imageWidth: CGFloat
    let imaeHeight: CGFloat
    
    init(product: Product,
         cartManager: CartManager,
         imageWidth: CGFloat = 140, imaeHeight: CGFloat = 170) {
        self.product = product
        self.cartManager = cartManager
        self.imageWidth = imageWidth
        self.imaeHeight = imaeHeight
    }
    
    var body: some View {
        VStack(alignment: .leading, spacing: 12) {
            ZStack (alignment: .top){
                Image(product.images.randomElement()!)
                    .resizable()
                    .scaledToFill()
                
                Color.main.opacity(0.3)
                
            }
            .frame(width: imageWidth, height: imaeHeight)
            .overlay(alignment: .topLeading) { faverate }
            .overlay(alignment: .topTrailing) {
                if product.onSale ?? false {
                    sale
                }
            }
            
            .overlay(alignment: .bottomTrailing) { whishlistAndCart }
            .clipShape(RoundedRectangle(cornerRadius: 5, style: .continuous))
            
            VStack (alignment: .leading, spacing: 4){
                Text(product.name)
                    .lineLimit(1)
                    .tenorSans(.body)
                
                
                HStack {
                    Text(verbatim: .currencyString(from: product.price))
                        .lato(font: product.onSale ?? false ? .light : .bold,
                              textStyle: product.onSale ?? false ? .footnote : .callout)
                        .foregroundStyle(product.onSale ?? false ? .gray : Color.main)
                        .strikethrough(product.onSale ?? false, color: .gray)
                    
                    if product.onSale ?? false {
                        if let salePrice = product.salePrice {
                            Text(verbatim: .currencyString(from: salePrice))
                                .lato(font: .bold, textStyle: .callout)
                                .foregroundStyle(product.onSale ?? false ? Color.accentColor : Color.main)
                        }
                    }
                }
            }
        }
        .frame(width: imageWidth)
    }
    
    
    var faverate: some View {
        HStack (spacing: 4){
            Image(.star)
                .resizable()
                .frame(width: 12, height: 12)
                .foregroundStyle(Color(.systemYellow))
            Text("5.0")
                .lato(textStyle: .caption2)
                .foregroundStyle(.white)
        }
        .padding(10)
    }
    
    var sale: some View {
        Text("SALE")
            .lato(font: .bold,textStyle: .caption2)
            .frame(width: 40, height: 20)
            .background(Color.init(hex: "A3D2A2"))
            .foregroundStyle(.white)
    }
    
    
    var whishlistAndCart: some View {
        VStack (spacing: 12){
            Button(action: {}, label: {
                Image("wishlist")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 18)
                    .foregroundStyle(.white)
            })
            
            
            Button(action: {
                cartManager.addToCart(product: product)
            }, label: {
                Image("cart")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 20)
            })
            
            
        }
        .padding(8)
    }
}

#Preview {
    ProductView(product: .product3, cartManager: CartManager(cart: .emptyCart))
}
