//
//  ReviewRowView.swift
//  BeShopSwiftUI
//
//  Created by HardiB.Salih on 6/18/24.
//

import SwiftUI

struct ReviewRowView: View {
    var body: some View {
        VStack (spacing: 12){
            HStack (alignment: .top, spacing: 12) {
                Circle()
                    .fill(Color.pastel)
                    .frame(width: 30, height: 30)
                
                VStack(alignment: .leading, spacing: 6) {
                    Text("Annette Black")
                        .tenorSans()
                    Text("Jul 23, 2022")
                        .lato(textStyle: .footnote)
                        .foregroundStyle(Color.text)
                }
                
                Spacer()
                
                HStack (spacing: 4){
                    Image(.star)
                        .resizable()
                        .frame(width: 16, height: 16)
                        .foregroundStyle(Color.init(hex: "CFC819"))
                    Text("5.0")
                        .lato(textStyle: .footnote)
                }
            }
            
            Text("Consequat ut ea dolor aliqua laborum tempor Lorem culpa. Commodo veniam sint est mollit proident commodo.")
                .padding(.leading, 34)
                .lato().foregroundStyle(Color.text)
                .lineSpacing(7)
        }
        .padding()
        .overlay {
            Rectangle()
                .stroke(Color.init(hex: "EEEEEE"), lineWidth: 2.0)
        }
    }
}

#Preview {
    ReviewRowView()
}
