//
//  OrderView.swift
//  BeShopSwiftUI
//
//  Created by HardiB.Salih on 6/20/24.
//

import SwiftUI

struct OrderView: View {
    @EnvironmentObject var cartManager: CartManager
    @State private var isSwiped: Bool = false
   
    
    var body: some View {
        VStack(spacing: 0) {
            headerView
            
            ScrollView {
                VStack {
                    ForEach(cartManager.cart.items) { cartItem in
                        OrderCellView(product: cartItem.product , cartManager: cartManager)
                    }
                }
                .padding(.top, 8)
            }
            
        }
    }
}

extension OrderView {
    var headerView: some View {
        //MARK: - Header
        HStack (alignment: .center){
            Image("logo")
                .resizable()
                .scaledToFit()
                .frame(height: 25)
                .offset(y: 4)
            Spacer()
            
            Text("Order")
                .tenorSans(.title3)
                .offset(x: -10.0)
            
            Spacer()
            CartView(totalAmount: cartManager.cart.total)
        }
        .padding()
        .background(Color.pastel)
    }
}

#Preview {
    OrderView()
        .environmentObject(CartManager(cart: .emptyCart))
}


