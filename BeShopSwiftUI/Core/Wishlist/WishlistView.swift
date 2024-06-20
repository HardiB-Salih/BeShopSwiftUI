//
//  WishlistView.swift
//  BeShopSwiftUI
//
//  Created by HardiB.Salih on 6/18/24.
//

import SwiftUI

struct WishlistView: View {
    var body: some View {
        VStack {
            //MARK: - Header
            HStack {
                Image("logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 78, height: 32)
                Spacer()
                
                Text("Wishlist")
                    .tenorSans(.title3)
                    .offset(x: -10.0)
                
                Spacer()
                
                CartView(totalAmount: 45)
            }
            .padding()
            .background(Color.pastel)
            
            
            ScrollView {
                VStack (spacing: 12){
                    ForEach(0 ..< 10) { wishlist in
                        ProductHorizantalView()
                            .padding(.horizontal)
                    }
                }
            }
            .scrollIndicators(.hidden)
        }
        
        
        

        
        
        
        
        
    }
}

#Preview {
    WishlistView()
}
