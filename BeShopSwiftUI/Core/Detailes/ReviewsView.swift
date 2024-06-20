//
//  ReviewsView.swift
//  BeShopSwiftUI
//
//  Created by HardiB.Salih on 6/18/24.
//

import SwiftUI

struct ReviewsView: View {
    var body: some View {
        VStack {
            Text("Reviews")
                .padding()
                .frame(maxWidth: .infinity)
                .background(Color.pastel)
                .overlay(alignment: .leading) {
                    Button(action: {}, label: {
                        Image(systemName: "chevron.backward")
                            .padding()
                            .foregroundStyle(Color.main)
                    })
                }
                
            ScrollView {
                VStack {
                    ForEach(0 ..< 24) { review in
                        ReviewRowView()
                    }
                }
                .padding()
            }
        }
        
    }
}

#Preview {
    ReviewsView()
}
