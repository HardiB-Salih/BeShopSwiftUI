////
////  TabBarView.swift
////  BeShopSwiftUI
////
////  Created by HardiB.Salih on 6/18/24.
////

import SwiftUI

struct TabBarView: View {
    @AppStorage("selectedTab") var selectedTab: Tab = .home
    @EnvironmentObject var cartManager: CartManager
    
    var body: some View {
        ZStack (alignment: .bottom){
            Group {
                switch selectedTab {
                case .home:
                    HomeV1View()
                case .search:
                    Text("search")
                case .cart:
                    if cartManager.cart.items.isEmpty {
                        EmptyCartView()
                    } else {
                        OrderView()
                    }
                case .wishlist:
                   WishlistView()
                case .profile:
                    ProfileView()
                }
            }.safeAreaInset(edge: .bottom) {
                Color.clear.frame(height: 80)
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            
            TabBar()
                .padding(.bottom)
        }
        .ignoresSafeArea(edges: .bottom)
        
    }
}

#Preview {
    TabBarView()
        .environmentObject(CartManager(cart: .emptyCart))
}


    




