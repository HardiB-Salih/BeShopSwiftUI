//
//  PaymentMethodView.swift
//  BeShopSwiftUI
//
//  Created by HardiB.Salih on 6/18/24.
//

import SwiftUI

struct PaymentMethodView: View {
    var body: some View {
        VStack {
            //MARK: - Header
            Text("Payment method")
                .tenorSans(.title3)
                .padding()
                .frame(maxWidth: .infinity)
                .background(Color.pastel)
                .overlay(alignment: .leading) {
                    Button(action: {}, label: {
                        Image(systemName: "chevron.backward")
                            .foregroundStyle(Color(.label))
                            .padding()
                    })
                }
            
            VStack (alignment: .leading){
                Text("Cards")
                    .tenorSans(.title3)
                
                Rectangle()
                    .fill(Color.text)
                    .frame(height: 1)
            }
            .padding(.horizontal)
            
            
            ScrollView(.horizontal) {
                HStack (spacing: 16){
                    VisaCartView(cartNumber: "7741   6588   2123   6644",
                                 firstname: "Kristin",
                                 lastname: "Watson",
                                 expDate: "12/24",
                                 cardColor: Color.accentColor)
                    
                    VisaCartView(cartNumber: "7741   6588   2123   6644",
                                 firstname: "Kristin",
                                 lastname: "Watson",
                                 expDate: "12/24",
                                 cardColor: Color.green)
                    
                    VisaCartView(cartNumber: "7741   6588   2123   6644",
                                 firstname: "Kristin",
                                 lastname: "Watson",
                                 expDate: "12/24",
                                 cardColor: Color.purple)
                }
                .padding(.horizontal)
            }
            .scrollIndicators(.hidden)
            .padding(.vertical)
            
            
            VStack {
                HStack {
                    Text("Pay Method").tenorSans(.title3)
                    Image(systemName: "checkmark").foregroundStyle(Color.init(hex: "00824B"))
                    Spacer()
                    Image("pencel")
                }
                .padding()
                .overlay {
                    Rectangle()
                        .stroke(Color.init(hex: "EEEEEE"), lineWidth: 1.0)
                }
                .padding(.horizontal)
                
                HStack {
                    Text("Pay Method").tenorSans(.title3)
                    Image(systemName: "checkmark").foregroundStyle(Color.init(hex: "00824B"))
                    Spacer()
                    Image("pencel")
                }
                .padding()
                .overlay {
                    Rectangle()
                        .stroke(Color.init(hex: "EEEEEE"), lineWidth: 1.0)
                }
                .padding(.horizontal)
                
                HStack {
                    Text("Pay Method").tenorSans(.title3)
                    Spacer()
                    Image(systemName: "plus")
                }
                .padding()
                .overlay {
                    Rectangle()
                        .stroke(Color.init(hex: "EEEEEE"), lineWidth: 1.0)
                }
                .padding(.horizontal)
            }
            
            
            Spacer()
            VStack(spacing: 20) {
                Image(systemName: "plus")
                    .frame(width: 50, height: 50)
                    .background(Color(.systemBackground))
                    .clipShape(Circle())
                    .offset(x: 8, y: 8)
                    .shadow(color: Color.init(hex: "222222", alpha: 0.25), radius: 10, y: 4)
                
                Text("Add a new card")
            }
            
                
        }
    }
}

#Preview {
    PaymentMethodView()
}

struct VisaCartView: View {
    let cartNumber: String
    let firstname: String
    let lastname: String
    let expDate: String
    let cardColor : Color
    
    var body: some View {
        ZStack (alignment: .top){
            Image("logoShade")
                .resizable()
                .frame(width: 210, height: 181)
                .foregroundStyle(Color.pastel)
                .offset(x: 50.0, y: 50.0)
                .frame(maxWidth: .infinity, alignment: .bottomTrailing)
            
            VStack(alignment: .leading) {
                Image("logo")
                    .resizable()
                    .frame(width: 54, height: 22)
                
                Spacer()
                
                Text(cartNumber)
                
                Spacer()
                HStack {
                    VStack (alignment: .leading){
                        Text(firstname.uppercased())
                        Text(lastname.uppercased())
                    }
                    
                    Spacer()
                    VStack (alignment: .leading){
                        Text("exp. end".uppercased())
                        Text(expDate)
                    }
                }
                
            }
            .lato()
            .foregroundStyle(Color.white)
            .padding(25)
            .frame(maxWidth: .infinity, alignment: .leading)
            
            
            
        }
        .frame(width: 279, height: 170, alignment: .leading)
        .background(cardColor)
        .clipShape(RoundedRectangle(cornerRadius: 16, style: .continuous))
    }
}

