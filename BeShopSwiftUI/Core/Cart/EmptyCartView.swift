//
//  EmptyCartView.swift
//  BeShopSwiftUI
//
//  Created by HardiB.Salih on 6/18/24.
//

import SwiftUI

struct EmptyCartView: View {
    
    @AppStorage("selectedTab") var selectedTab: Tab = .home
 
    var body: some View {
        VStack (spacing: 24){
            BeShopSpecalView(iconName: "cart")
                .scaleEffect(1.8)
                .padding(60)
            
            Text("Your cart is empty!")
                .tenorSans(.title2)
            
            Text("Looks like you haven't made \nyour order yet.")
                .multilineTextAlignment(.center)
                .lato().lineSpacing(10.0).foregroundStyle(.gray)
            
            PrimaryButton(title: "Shop now") {
                selectedTab = .home
            }
        }
        .padding()
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.pastel)
        .overlay(alignment: .topTrailing) {
            CartView(totalAmount: 0)
                .padding(.horizontal)
        }
    }
}

#Preview {
    EmptyCartView()
}
