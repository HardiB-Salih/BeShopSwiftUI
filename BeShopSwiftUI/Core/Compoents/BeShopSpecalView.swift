//
//  BeShopSpecalView.swift
//  BeShopSwiftUI
//
//  Created by HardiB.Salih on 6/18/24.
//

import SwiftUI

struct BeShopSpecalView: View {
    let iconName: String
    var body: some View {
        ZStack {
            Image("logoShade")
                .resizable()
                .scaledToFill()
                .frame(width: 200, height: 170)
                .foregroundStyle(Color.accentColor)
            
            Image("cream")
                .offset(x: -20)
            Image(iconName)
                .frame(width: 70, height: 70)
                .foregroundStyle(.white)
                .background(Color.accentColor)
                .clipShape(Circle())
                .offset(y: 50)
        }
    }
}

#Preview {
    BeShopSpecalView(iconName: "messagingIcon")
}
