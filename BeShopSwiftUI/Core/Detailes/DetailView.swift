//
//  DetailView.swift
//  BeShopSwiftUI
//
//  Created by HardiB.Salih on 6/18/24.
//

import SwiftUI

struct DetailView: View {
    let product: Product
    @ObservedObject var cartManager : CartManager
    
    @State private var stepperValue: Int = 1
    @State private var currentIndex: Int = 0
    @State private var selectedColor: String = ""
    @Environment(\.dismiss) var dismiss
    
    init(product: Product, cartManager: CartManager) {
        self.product = product
        self.cartManager = cartManager
        guard let colorSelected = product.colors.first else { return }
        self._selectedColor = State(initialValue: colorSelected)
    }
    
    
    
    var body: some View {
        VStack (spacing: 0){
            //MARK: Header
            HStack {
                Button(action: {
                    dismiss()
                }, label: {
                    Image(systemName: "chevron.left")
                        .font(.title3)
                        .foregroundStyle(Color.main)
                })
                Spacer()
                CartView(totalAmount: cartManager.cart.total)
            }
            .padding()
            .background(Color(.secondarySystemBackground))
            ScrollView {
                //MARK: ImagesCarousel
                ImagesCarouselView(currentIndex: $currentIndex, product: product)
                
                
                
                //MARK: Title and Faverates
                VStack (spacing: 10){
                    HStack (alignment: .top){
                        Text(product.name)
                            .tenorSans(.title2)
                        Spacer()
                        Image("wishlist")
                            .padding()
                            .background(Color(.systemBackground))
                            .clipShape(Circle())
                            .shadow(color: Color.init(hex: "222222",alpha: 0.15), 
                                    radius: 5, y: 2)
                    }
                    
                    //MARK: Instack and Review
                    HStack {
                        Text("in stock".uppercased())
                            .lato()
                            .foregroundStyle(Color.init(hex: "00824B"))
                        
                        HStack {
                            Image("star")
                                .resizable()
                                .frame(width: 15, height: 15)
                                .foregroundStyle(Color.init(hex: "FFBE00"))
                            Text("4.7")
                                .lato(font: .regular, textStyle: .callout)
                        }
                        
                        Spacer()
                        
                    }
                    
                    //MARK: Price and Stepper
                    HStack {
                        HStack {
                            Text(verbatim: .currencyString(from: product.price))
                                .lato(font: product.onSale ?? false ? .light : .bold,
                                      textStyle: product.onSale ?? false ? .callout : .title3)
                                .foregroundStyle(product.onSale ?? false ? .gray : Color.main)
                                .strikethrough(product.onSale ?? false, color: .gray)
                            
                            if product.onSale ?? false {
                                if let salePrice = product.salePrice {
                                    Text(verbatim: .currencyString(from: salePrice))
                                        .lato(font: .bold, textStyle: .title3)
                                        .foregroundStyle(product.onSale ?? false ? Color.accentColor : Color.main)
                                }
                            }
                        }
                        
                        Spacer()
                        CustomStepper(value: $stepperValue)
                    }
                    
                    //MARK: Color Selecter
                    HStack (spacing: 12){
                        Text("Color")
                            .tenorSans(.title3)
                        HStack {
                            ForEach(product.colors ,id: \.self) { color in
                                Rectangle()
                                    .fill(Color(hex: color))
                                    .frame(width: 30, height: 30)
                                    .overlay {
                                        Rectangle()
                                            .stroke(Color.accentColor, lineWidth: selectedColor == color ? 2.0 : 0.0)
                                    }
                                    .onTapGesture {
                                        selectedColor = color
                                    }
                            }
                        }
                        Spacer()
                    }
                    
                    Divider()
                        .padding(.vertical)
                    
                    //MARK: Description
                    VStack(alignment: .leading, spacing: 16) {
                        Text("Description")
                            .tenorSans(.title2)
                        
                        Text(product.description)
                            .lato(font: .bold)
                            .foregroundStyle(Color.text)
                            .lineSpacing(8.0)
                    }
                    .frame(maxWidth: .infinity, alignment: .leading)
                    
                    
                    //MARK: ADD TO CART
                    PrimaryButton(title: "+ Add to cart") {
                        cartManager.addToCart(product: product, quantity: stepperValue)
                        //Add the cart to Firebase
                    }
                    .padding(.top, 40)
                    
                    //MARK: REVIEW
                    HStack {
                        Text("Reviews (23)")
                            .tenorSans(.title2)
                        Spacer()
                        Button("View  all") {
                            print("View All")
                        }
                    }
                    Rectangle()
                        .fill(Color.main)
                        .frame(height: 2)
                    
                    ForEach(0 ..< 2) { review in
                        ReviewRowView()
                    }

                }
                .padding()
            }
        }
    }
}

#Preview {
    DetailView(product: .product2, cartManager: CartManager(cart: .emptyCart))
}


// Define an enum for skin care colors
enum SkinCareColor: String, CaseIterable, Identifiable {
    case color1 = "FCEDEA"
    case color2 = "FEE1DB"
    case color3 = "FFD9D1"
    case color4 = "FDC5B9"
    case color5 = "FDB7A8"
    case color6 = "FFA08A"
    
    var id: String { self.rawValue}
    
}

struct PrimaryButton: View {
    let title: String
    let action: () -> Void
    
    var body: some View {
        Button(title.uppercased()) {
            action()
        }
        .frame(height: 60)
        .frame(maxWidth: .infinity)
        .background(.main)
        .lato(font: .light, textStyle: .headline)
        .foregroundStyle(.white)
        .padding(.bottom, 40)
    }
}

