//
//  CartView.swift
//  BeShopSwiftUI
//
//  Created by HardiB.Salih on 6/18/24.
//

import SwiftUI

struct CartView: View {
    let totalAmount: Double
    var body: some View {
        ZStack (alignment: .bottomTrailing){
            Image("cart")
                .resizable()
                .frame(width: 24, height: 24)
                .offset(y: -3)
            
            Text(verbatim: .currencyString(from: totalAmount))
                .lato(textStyle: .caption2)
                .fontWeight(.semibold)
                .foregroundStyle(.white)
                .padding(.horizontal, 5)
                .padding(.vertical, 2)
                .background(Color.accentColor)
                .clipShape(Capsule())
                .offset(x: -12.0)
                
        }
    }
}

#Preview {
    CartView(totalAmount: 20.01)
}
