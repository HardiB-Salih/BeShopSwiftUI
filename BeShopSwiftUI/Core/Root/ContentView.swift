//
//  ContentView.swift
//  BeShopSwiftUI
//
//  Created by HardiB.Salih on 6/17/24.
//

import SwiftUI

struct ContentView: View {
    @StateObject var cartManager = CartManager( cart: .emptyCart)
    
    var body: some View {
        TabBarView()
            .environmentObject(cartManager)
    }
}

#Preview {
    ContentView()
}
