//
//  SigninScreenView.swift
//  BeShopSwiftUI
//
//  Created by HardiB.Salih on 6/17/24.
//

import SwiftUI

struct SigninScreen: View {
    @State private var emailText = ""
    @State private var passwordText = ""
    @State private var isShowingPassword = false
    
    
    var body: some View {
        VStack {
            Text("Sign in")
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
           
            ZStack {
                Image("logoShade")
                    .resizable()
                    .scaledToFit()
                    .foregroundStyle(.accent)
                    .scaleEffect(1.4)
                    

                
                VStack (spacing: 20){
                    
                    Spacer()
                    Text("Welcome Back!")
                        .tenorSans(.title2)
                        .foregroundStyle(.main)
                    
                    
                    Text("Use social networks or your email")
                        .lato()
                        .foregroundStyle(.text)
                    
                    
                    HStack {
                        Image("facebookIcon")
                            .resizable()
                            .frame(width: 50, height: 50)
                            .scaledToFit()
                        Image("twitterIcon")
                            .resizable()
                            .frame(width: 50, height: 50)
                            .scaledToFit()
                        Image("googleIcon")
                            .resizable()
                            .frame(width: 50, height: 50)
                            .scaledToFit()
                    }
                    
                    TextField("Enter your email", text: $emailText)
                        .frame(height: 60)
                        .frame(maxWidth: .infinity)
                        .padding(.leading)
                        .background(.white)
                        .padding(.horizontal)
                    
                    SecureInputView("Enter your password", text: $passwordText)
                        .frame(height: 60)
                        .frame(maxWidth: .infinity)
                        .padding(.leading)
                        .background(.white)
                        .padding(.horizontal)
                    
                    
                    HStack {
                        RoundedRectangle(cornerRadius: 5, style: .continuous)
                            .frame(width: 20, height: 20)
                            .foregroundStyle(.white)
                        
                        Text("Remember me")
                            .lato()
                        
                        
                        Spacer()
                        
                        Button("Lost your password?") {
                            print("Lost your password?")
                        }
                        .lato()
                    }
                    .padding(.horizontal)
                    
                    Button("Sign in".uppercased()){
                        print("Sign in")
                    }
                    .frame(width: 335, height: 60)
                    .background(.main)
                    .lato(font: .light, textStyle: .headline)
                    .foregroundStyle(.white)
                    
                    HStack {
                        Button(action: {}, label: {
                            HStack {
                                Text("No account? ").foregroundStyle(.text) +
                                Text("Register now")
                            }
                        })
                        .padding(.horizontal)
                        .lato()
                        
                        Spacer()
                    }
                    
                    Spacer()
                }
                
                
            }
            
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(.pastel)
            .clipShape(Rectangle())
            .padding()
            
        }
    }
}

#Preview {
    SigninScreen()
}


