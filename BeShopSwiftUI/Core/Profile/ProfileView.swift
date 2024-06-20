//
//  ProfileView.swift
//  BeShopSwiftUI
//
//  Created by HardiB.Salih on 6/18/24.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        VStack (spacing: 0){
            //MARK: - Header
            HStack {
                Image("logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 78, height: 32)
                Spacer()
                
                Text("My profile")
                    .tenorSans(.title3)
                    .offset(x: -10.0)
                
                Spacer()
                CartView(totalAmount: 45)
            }
            .padding()
            .background(Color.pastel)
            
            ScrollView {
                
                Circle()
                    .fill(Color.pastel)
                    .frame(width: 90, height: 90)
                    .overlay {
                        Circle()
                            .stroke(Color.accentColor, lineWidth: 6)
                    }
                    .overlay(alignment: .bottomTrailing) {
                        Image("pencel")
                            .frame(width: 40, height: 40)
                            .background(Color(.systemBackground))
                            .clipShape(Circle())
                            .offset(x: 8, y: 8)
                            .shadow(color: Color.init(hex: "222222", alpha: 0.15), radius: 10, y: 4)
                    }
                    .padding()
                
                
                Text("Kristin Watson")
                    .tenorSans(.title3)
                
                Text("kristinwatson@mail.com").tint(.gray)
                
                VStack (spacing: 20){
                    ForEach(ProfileListItem.allCases) { profileItem in
                        HStack {
                            Image(profileItem.icon)
                                .frame(width: 40, height: 40)
                                .background(Color(hex: "FAF9FF"))
                                .overlay {
                                    Rectangle()
                                        .stroke(Color(hex: "EEEEEE"), lineWidth: 1.0)
                                }
                            
                            Text(profileItem.title)
                                .tenorSans()
                            
                            Spacer()
                            
                            if profileItem != ProfileListItem.signOut {
                                Image(systemName: "chevron.forward")
                            }
                            
                            
                        }
                    }
                }
                .padding()
            }
        }
        .ignoresSafeArea(edges: .bottom)
    }
}

#Preview {
    ProfileView()
}

enum ProfileListItem: Int, CaseIterable, Identifiable {
    case calendar
    case payment
    case adress
    case promocodes
    case order
    case faq
    case signOut
    

    var id: Int { return self.rawValue }
    
    var title : String {
        switch self {
        case .calendar: return "Order History"
        case .payment: return "Payment Method"
        case .adress: return "My Address"
        case .promocodes: return "My Promocodes"
        case .order: return "Track My Order"
        case .faq: return "FAQ"
        case .signOut: return "Sign Out"
        }
    }
    
    var icon : String {
        switch self {
        case .calendar: return "calendar"
        case .payment: return "credit-card"
        case .adress: return "map-pin"
        case .promocodes: return "gift"
        case .order: return "truck"
        case .faq: return "help-circle"
        case .signOut: return "log-out"
        }
    }
    
    
    
}
