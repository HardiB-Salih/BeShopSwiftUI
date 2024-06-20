//
//  WelcomeScreenView.swift
//  BeShopSwiftUI
//
//  Created by HardiB.Salih on 6/17/24.
//

import SwiftUI

struct WelcomeScreenView: View {
    var body: some View {
        ZStack (alignment: .top){
            Color(.pastel)
                .ignoresSafeArea()
            
            ZStack {
                Image("logoShade")
                    .resizable()
                    .frame(width: 101, height: 87)
                    .foregroundStyle(.accent)
                    .scaledToFit()
                    
                Image("logo")
                    .resizable()
                    .frame(width: 150, height: 61)
                    .scaledToFit()
            }.padding(.top, 150)
            
            

        }
    }
}

#Preview {
    WelcomeScreenView()
}
