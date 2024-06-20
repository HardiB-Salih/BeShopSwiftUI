//
//  LeaveAReviewsView.swift
//  BeShopSwiftUI
//
//  Created by HardiB.Salih on 6/18/24.
//

import SwiftUI

struct LeaveAReviewsView: View {
    @State private var rating: Int = 0
    @State private var commentText: String = ""
    var body: some View {
        VStack {
            Text("Leave a review".capitalized)
                .tenorSans()
                .padding()
                .frame(maxWidth: .infinity)
                .overlay(alignment: .leading) {
                    Button(action: {}, label: {
                        Image(systemName: "chevron.backward")
                            .padding()
                            .foregroundStyle(Color.main)
                    })
                }
            
            
            ScrollView {
                VStack (spacing: 30){
                    BeShopSpecalView(iconName: "messagingIcon")
                        .scaleEffect()
                    
                    Text("Please rate the quality of service for the order!".capitalized)
                        .multilineTextAlignment(.center)
                        .tenorSans(.title2)
                        .padding(.horizontal)
                    
                    StarRatingView(rating: $rating)
                    
                    Text("Your comments and suggestions help us improve the service quality better!")
                        .lato().lineSpacing(8)
                        .foregroundStyle(Color.text)
                        .multilineTextAlignment(.center)
                        .padding(.horizontal, 30)
                    
                    TextField("Enter your comment", text: $commentText, axis: .vertical)
                        .padding()
                        .frame(height: 140, alignment: .top)
                        .background(Color(.systemBackground))
                        .padding(.horizontal)
                    
                    PrimaryButton(title: "submit") {
                        print("Submit")
                    }
                    .padding(.horizontal)
                }
            }
            .scrollIndicators(.hidden)
        }
        .background(Color.pastel)
    }
}

#Preview {
    LeaveAReviewsView()
}


struct StarRatingView: View {
    @Binding var rating: Int
    
    var body: some View {
        VStack {
            HStack(spacing: 8) {
                ForEach(1..<6) { index in
                    Image(systemName: rating >= index ? "star.fill" : "star")
                        .resizable()
                        .frame(width: 30, height: 30)
                        .foregroundColor(rating >= index ? Color.yellow : Color.gray)
                        .onTapGesture {
                            rating = index
                        }
                }
            }
        }
    }
}

