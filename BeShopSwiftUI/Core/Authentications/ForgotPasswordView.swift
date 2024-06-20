//
//  ForgotPasswordScreenView.swift
//  BeShopSwiftUI
//
//  Created by HardiB.Salih on 6/17/24.
//

import SwiftUI

struct ForgotPasswordView: View {
    @State private var emailText = ""
    
    
    var body: some View {
        VStack {
            Text("Forgot password")
                .frame(maxWidth: .infinity)
                .padding(8)
                .overlay(alignment: .leading) {
                    Button(action: {}, label: {
                        Image(systemName: "chevron.left")
                            .fontWeight(.semibold)
                            .padding()
                    })
                }
                .foregroundStyle(.main)
           
            ZStack{
                Image("logoShade")
                    .resizable()
                    .scaledToFit()
                    .foregroundStyle(.accent)
                    .scaleEffect(1.4)
                    .offset(y: 120)
                
                VStack (spacing: 20){
                                        
                    Text("Please enter your email address. You will receive a link to create a new password via email.")
                        .lato(font: .regular)
                        .foregroundStyle(.text)
                        .lineSpacing(10.0)
                        .padding(.horizontal)
                    
                    TextField("Enter your email", text: $emailText)
                        .frame(height: 60)
                        .frame(maxWidth: .infinity)
                        .padding(.leading)
                        .background(.white)
                        .padding(.horizontal)
                    
                    
                    Button("Sign in".uppercased()){
                        print("Sign in")
                    }
                    .frame(width: 335, height: 60)
                    .background(.main)
                    .lato(font: .light, textStyle: .headline)
                    .foregroundStyle(.white)
                    
                   
                }
            }
            .frame(maxWidth: .infinity)
            .background(.pastel)
            .clipShape(Rectangle())
            .padding()
            
            Spacer()
            
        }
    }
}

#Preview {
    ForgotPasswordView()
}
