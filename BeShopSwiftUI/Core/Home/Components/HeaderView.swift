//
//  HeaderView.swift
//  BeShopSwiftUI
//
//  Created by HardiB.Salih on 6/18/24.
//

import SwiftUI

struct HeaderView: View {
    @EnvironmentObject var cartManager : CartManager
    var body: some View {
        HStack (alignment: .center) {
            Image("logo")
                .resizable()
                .frame(width: 72, height: 32)
            Spacer()
            CartView(totalAmount: cartManager.cart.total)
        }
        .padding(.horizontal)
        .padding(12)
        .background(Color.pastel)
       
    }
}

#Preview {
    HeaderView()
        .environmentObject(CartManager(cart: .emptyCart))
}


