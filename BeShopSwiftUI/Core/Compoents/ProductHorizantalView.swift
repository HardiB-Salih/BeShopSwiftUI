//
//  ProductHorizantalView.swift
//  BeShopSwiftUI
//
//  Created by HardiB.Salih on 6/18/24.
//

import SwiftUI

struct ProductHorizantalView: View {
    @State private var onSale = false
    
    var body: some View {
        HStack {
            Rectangle()
                .fill(Color(.systemGray5))
                .frame(width: 80)
                .overlay(alignment: .topTrailing) {
                    if onSale {
                        sale
                    }
                }
            
            VStack (alignment: .leading, spacing: 12){
                Text("Detox body Cream")
                    .tenorSans(.title3)
                    .lineLimit(1)
                
                HStack {
                    if onSale {
                        Text(verbatim: .currencyString(from: 42.89))
                            .lato(textStyle: .caption2)
                            .foregroundStyle(Color.text)
                            .strikethrough(true, color: Color.text)
                    }
                    Text(verbatim: .currencyString(from: 38.99))
                        .lato(font: .bold, textStyle: .callout)
                        .foregroundStyle(onSale ? Color.accentColor : Color.main.opacity(0.8))
                }
                
                
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
            
            VStack {
                Image("heart-fill")
                    .resizable()
                    .foregroundStyle(Color.accentColor)
                    .frame(width: 20, height: 20)
                    Spacer()
                
                Image("cart")
                    .frame(width: 40, height: 40)
                    .background(Color.accentColor)
                    .foregroundStyle(.white)
                    .clipShape(Circle())

            }
            
        }
        .frame(height: 100)
        .padding(10)
        .overlay {
            Rectangle()
                .stroke(Color.init(hex: "EEEEEE"), lineWidth: 1.0)
        }
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
    ProductHorizantalView()
}
