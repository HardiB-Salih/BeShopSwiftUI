//
//  ResetPasswordView.swift
//  BeShopSwiftUI
//
//  Created by HardiB.Salih on 6/17/24.
//

import SwiftUI

struct ResetPasswordView: View {
    @State private var passwordText = ""
    @State private var showPasswordText = false

    @State private var confirmPasswordText = ""
    @State private var showConfirmPasswordText = false

    
    var body: some View {
        VStack {
            Text("Reset password")
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
                                        
                    Text("Enter new password and confirm.")
                        .lato(font: .regular)
                        .foregroundStyle(.text)
                        .lineSpacing(10.0)
                        .padding(.horizontal)
                        .frame(maxWidth: .infinity, alignment: .leading)
                    
                    
                    VStack {
                        SecureInputView("Enter your password", text: $passwordText)
                            .frame(height: 60)
                            .frame(maxWidth: .infinity)
                            .padding(.leading)
                            .background(.white)
                            .padding(.horizontal)
                        
                        SecureInputView("Confirm your password", text: $passwordText)
                            .frame(height: 60)
                            .frame(maxWidth: .infinity)
                            .padding(.leading)
                            .background(.white)
                            .padding(.horizontal)
                    }
                    
                    
                    Button("change password".uppercased()){
                        print("change password")
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
    ResetPasswordView()
}
