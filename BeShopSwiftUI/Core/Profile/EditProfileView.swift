//
//  EditProfileView.swift
//  BeShopSwiftUI
//
//  Created by HardiB.Salih on 6/18/24.
//

import SwiftUI

struct EditProfileView: View {
    @State private var fullnameText = ""
    @State private var phoneNumberText = ""
    @State private var passwordText = ""
    @State private var isShowingPassword = false
    
    
    var body: some View {
        VStack {
            //MARK: - Header
            Text("Edit profile")
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
                    //MARK: Profile Picture
                    Circle()
                        .fill(Color.white)
                        .frame(width: 90, height: 90)
                        .overlay {
                            Circle()
                                .stroke(Color.accentColor, lineWidth: 6)
                        }
                        .overlay(alignment: .bottomTrailing) {
                            Image("camera")
                                .frame(width: 40, height: 40)
                                .background(Color(.systemBackground))
                                .clipShape(Circle())
                                .offset(x: 8, y: 8)
                                .shadow(color: Color.init(hex: "222222", alpha: 0.15), radius: 10, y: 4)
                        }
                        .padding()
                    
                    //MARK: - TextField
                    VStack {
                        TextField("Enter your fullname", text: $fullnameText)
                            .frame(height: 60)
                            .frame(maxWidth: .infinity)
                            .padding(.leading)
                            .background(.white)
                            .padding(.horizontal)
                        
                        TextField("Enter your phone", text: $phoneNumberText)
                            .frame(height: 60)
                            .frame(maxWidth: .infinity)
                            .padding(.leading)
                            .background(.white)
                            .padding(.horizontal)
                        
                    }
                    
                    //MARK: - Sign up Button
                    Button("Save Changes".uppercased()){
                        print("Sign up")
                    }
                    .frame(width: 335, height: 60)
                    .background(.main)
                    .lato(font: .light, textStyle: .headline)
                    .foregroundStyle(.white)
                    
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
    EditProfileView()
}
