//
//  OnboardingScreen3View.swift
//  BeShopSwiftUI
//
//  Created by HardiB.Salih on 6/17/24.
//

import SwiftUI

struct OnboardingScreen3View: View {
    var body: some View {
        ZStack (alignment: .top){
            Color(.pastel)
                .ignoresSafeArea()
            
            VStack {
                VStack (spacing: 20){
                    Image("logo")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 110, height: 44)
                    
                    Text("Welcome to \nBeshop!")
                        .tenorSans(.largeTitle)
                        .foregroundColor(.main)
                    
                    Text("Labore sunt culpa excepteur culpa ipsum. \nLabore occaecat ex nisi mollit.")
                        .lato(textStyle: .callout)
                        
                        .foregroundColor(.text)
                }
                .lineSpacing(8.0)
                .multilineTextAlignment(.center)
                .padding(.top, 40)
                .background(
                    Image("logoShade")
                        .resizable()
                        .foregroundStyle(.accent)
                        .frame(width: 210, height: 181))
                
                
                Spacer()
                ZStack (alignment: .bottom){
                    Image(.onboarding3)
                        .resizable()
                        .ignoresSafeArea()
                        .frame(height: 470)
                        .foregroundStyle(Color(hex: "F8DEDF"))
                    
                    Button("Get Started".uppercased()) {
                        print("Get Started")
                    }
                    .frame(width: 335, height: 60)
                    .background(.main)
                    .lato(font: .light, textStyle: .headline)
                    .foregroundStyle(.white)
                    .padding(.bottom, 40)
                }
            }
        }
    }
}

#Preview {
    OnboardingScreen3View()
}
