//
//  ImagesCarouselView.swift
//  BeShopSwiftUI
//
//  Created by HardiB.Salih on 6/18/24.
//

import SwiftUI

struct ImagesCarouselView: View {
    @Binding var currentIndex: Int
    let product: Product
    
    var body: some View {
        TabView(selection: $currentIndex) {
            ForEach(0 ..< product.images.count, id: \.self) { index in
                Image(product.images[index])
                    .resizable()
                    .scaledToFill()
                    .frame(height: 350)
                    .tag(index)
            }
        }
        .tabViewStyle(PageTabViewStyle())
        .frame(height: 350)
        .overlay(alignment: .bottomLeading) {
            previousButton
            
        }
        .overlay(alignment: .bottomTrailing) {
            nextButton
        }
    }
    
    
    var previousButton : some View {
        Button(action: {
            if currentIndex > 0 {
                withAnimation(.easeInOut(duration: 0.5)) {
                    currentIndex -= 1
                }
            }
        }) {
            Image(systemName: "chevron.left")
                .padding(.leading)
                .padding(.bottom, 8)
                .foregroundStyle(currentIndex == 0 ? Color.main : Color.accentColor)
            
        }
        .disabled(currentIndex == 0)
    }
    
    var nextButton : some View {
        Button(action: {
            if currentIndex < product.images.count - 1 {
                withAnimation(.easeInOut(duration: 0.5)) {
                    currentIndex += 1
                }
            }
        }) {
            Image(systemName: "chevron.right")
                .padding(.trailing)
                .padding(.bottom, 8)
                .foregroundStyle(currentIndex == product.images.count - 1 ? Color.main : Color.accentColor)
            
        }
        .disabled(currentIndex == product.images.count - 1)
    }
    
    
    
}


#Preview {
    ImagesCarouselView(currentIndex: .constant(1), product: .placeholder)
}
