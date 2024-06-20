//
//  OrderCellView.swift
//  BeShopSwiftUI
//
//  Created by HardiB.Salih on 6/20/24.
//

import SwiftUI

struct OrderCellView: View {
    
    //MARK: Propertes
    let product: Product
    @ObservedObject var cartManager : CartManager
    @State private var stepperValue: Int
    
    //MARK: Init
    init(product: Product, cartManager: CartManager) {
        self.product = product
        self.cartManager = cartManager
        if let cartItem = cartManager.cart.items.first(where: { $0.product.id == product.id }) {
            self._stepperValue = State(initialValue: cartItem.quantity)
        } else {
            self._stepperValue = State(initialValue: 1)
        }
    }
    
    var body: some View {
            HStack {
                
                //MARK: Image
                Image(product.images[0])
                    .resizable()
                    .scaledToFill()
                    .frame(width: 80)
                    .clipShape(Rectangle())
                    .overlay(alignment: .topTrailing) {
                        if product.onSale ?? false {
                            sale
                        }
                    }
                
                //MARK: Cart detail
                VStack (alignment: .leading, spacing: 12){
                    Text(product.name)
                        .tenorSans(.title3)
                        .lineLimit(1)
                    
                    //MARK: Price
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
                    
                    
                    //MARK: Review
                    HStack {
                        Image("star")
                            .resizable()
                            .frame(width: 15, height: 15)
                            .foregroundStyle(Color.init(hex: "FFBE00"))
                        Text("4.7")
                            .lato(font: .regular, textStyle: .callout)
                    }
                }
                
                Spacer()
                
                CustomHorizontalStepper(value: $stepperValue,
                                        onPlusTapped: { cartManager.addToCart(product: product) },
                                        onMinusTapped: { cartManager.removeFromCart(product: product)})
            }
            .background(Color(.systemBackground))
            .frame(height: 100)
            .padding(10)
            .overlay(alignment: .bottomLeading) { deleteButton }
            .overlay {
                Rectangle()
                    .stroke(Color.init(hex: "EEEEEE"), lineWidth: 1.0)
            }
            .padding(.horizontal)
            .padding(.bottom, 4)
        
    }
    
    
}



extension OrderCellView {
    //MARK: DELET
    var deleteButton: some View {
        Button(action: {
            cartManager.deleteFromCart(product: product)
        }, label: {
            HStack {
                Image(systemName: "trash")
                    .imageScale(.small)
                
                Text("DELET")
                    .lato(font: .bold, textStyle: .footnote)
            }
            .padding(5)
            .foregroundStyle(.white)
            .frame(width: 84)
            .background(Color.accentColor)
            .padding(.leading, 8)
            .padding(.bottom, 8)

        })
    }
    
    var sale: some View {
        Text("SALE")
            .lato(font: .bold,textStyle: .caption2)
            .frame(width: 40, height: 20)
            .background(Color.init(hex: "A3D2A2"))
            .foregroundStyle(.white)
    }
}


#Preview {
    OrderCellView(product: .product3, cartManager: CartManager(cart: .emptyCart))
}

