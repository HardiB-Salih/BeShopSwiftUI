//
//  HomeV1View.swift
//  BeShopSwiftUI
//
//  Created by HardiB.Salih on 6/18/24.
//

import SwiftUI

struct HomeV1View: View {
    @EnvironmentObject var cartManager: CartManager
    
    var body: some View {
        NavigationStack {
            VStack (spacing: 0){
                HeaderView()
                ScrollView {
                    VStack (spacing: 0){
                        //MARK: - Hero
                        ZStack(alignment: .bottomLeading) {
                            Image("logoShade")
                                .resizable()
                                .frame(width: 290, height: 250)
                                .offset(x: -40, y: 30.0)
                                .foregroundStyle(Color.accentColor)
                            
                            VStack (alignment: .leading, spacing: 20){
                                Text("Beauty & Care")
                                    .tenorSans(.largeTitle)
                                
                                Text("Labore sunt culpa excepteur \nculpa ipsum.")
                                    .lato()
                                    .foregroundStyle(Color.text)
                                
                                Button("shop now".uppercased()) {
                                    print("shop now")
                                }
                                .frame(height: 60)
                                .lato(font: .regular)
                                .foregroundStyle(.white)
                                .padding(.horizontal)
                                .background(.black)
                            }
                            .padding()
                            .padding(.vertical, 30)
                        }
                        .lineSpacing(6)
                        .clipShape(Rectangle())
                        .frame(maxWidth: .infinity, alignment: .leading)
                        
                        
                        
                        //MARK: - Trending Products
                        VStack {
                            HStack {
                                Text("Trending Products")
                                    .tenorSans(.title2)
                                
                                Spacer()
                                
                                Button("View  all") {
                                    print("View All")
                                }
                            }
                            Rectangle()
                                .fill(Color.main)
                                .frame(height: 2)
                            
                            
                            ScrollView(.horizontal) {
                                HStack (spacing: 14){
                                    ForEach(Product.products) { product in
                                        NavigationLink(value: product) {
                                            ProductView(product: product, cartManager: cartManager)
                                               
                                        }
                                        .buttonStyle(PlainButtonStyle())
                                    }
                                }
                                .padding(.vertical)
                            }.scrollIndicators(.hidden)
                        }
                        .padding()
                        .background(Color(.systemBackground))
                        
                        //MARK: - Get Your 50% Off!
                        VStack {
                            VStack (alignment:.leading, spacing: 20){
                                Text("Get Your 50% Off!")
                                    .tenorSans(.title1)
                                
                                Text("Labore sunt culpa excepteur \nculpa ipsum.")
                                    .lato().foregroundStyle(Color.text).lineSpacing(7.0)
                                
                                Button("shop now".uppercased()) {
                                    print("shop now")
                                }
                                .frame(height: 60)
                                .lato(font: .regular)
                                .foregroundStyle(.white)
                                .padding(.horizontal)
                                .background(.black)
                            }
                            .padding(.horizontal)
                            .padding(.vertical, 50)
                        }
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .background(Color.pastel)
                        
                        
                        //MARK: New Arrivals
                        VStack {
                            HStack {
                                Text("New Arrivals")
                                    .tenorSans(.title2)
                                
                                Spacer()
                                
                                Button("View  all") {
                                    print("View All")
                                }
                            }
                            
                            Rectangle()
                                .fill(Color.main)
                                .frame(height: 2)
                            
                            LazyVGrid(columns: Array(repeating: GridItem(), count: 2)) {
                                ForEach(Product.products) { product in
                                    NavigationLink(value: product) {
                                        ProductView(product: product,
                                                    cartManager: cartManager,
                                                    imageWidth: (.screenWidth / 2) - 24,
                                                    imaeHeight: 240 )
                                    }
                                    .buttonStyle(PlainButtonStyle()) 
                                }
                            }
                        }
                        .padding()
                        .background(Color(.systemBackground))
                    }
                }
                .ignoresSafeArea()
                .background(LinearGradient(gradient: Gradient(colors: [Color.pastel, Color(.systemBackground), Color(.systemBackground), Color(.systemBackground)]), startPoint: .top, endPoint: .bottom))
            }.navigationDestination(for: Product.self) { product in
                DetailView(product: product, cartManager: cartManager)
                    .navigationBarBackButtonHidden()
                    .navigationBarTitleDisplayMode(.inline)
            }
            
        }
    }
}

#Preview {
    HomeV1View()
        .environmentObject(CartManager(cart: .emptyCart))
}
