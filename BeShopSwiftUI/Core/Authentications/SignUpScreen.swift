//
//  SignUpScreenView.swift
//  BeShopSwiftUI
//
//  Created by HardiB.Salih on 6/17/24.
//

import SwiftUI

struct SignUpScreen: View {
    @State private var fullnameText = ""
    @State private var emailText = ""
    @State private var passwordText = ""
    @State private var isShowingPassword = false
    
    
    var body: some View {
        VStack {
            //MARK: - Header
            Text("Sign up")
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
                    Text("Sign up")
                        .lato(font: .bold,textStyle: .largeTitle)
                        .foregroundStyle(.main)
                    
                    
                    //MARK: - social networks
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
                    
                    //MARK: - TextField
                    VStack {
                        TextField("Enter your fullname", text: $fullnameText)
                            .frame(height: 60)
                            .frame(maxWidth: .infinity)
                            .padding(.leading)
                            .background(.white)
                            .padding(.horizontal)
                        
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
                        
                    }
                    
                    //MARK: - Sign up Button
                    Button("Sign up".uppercased()){
                        print("Sign up")
                    }
                    .frame(width: 335, height: 60)
                    .background(.main)
                    .lato(font: .light, textStyle: .headline)
                    .foregroundStyle(.white)
                    
                    HStack {
                        Button(action: {}, label: {
                            HStack {
                                Text("Already have an account? ").foregroundStyle(.text) +
                                Text("Sign in.")
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
    SignUpScreen()
}
