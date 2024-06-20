//
//  TabBar.swift
//  BeShopSwiftUI
//
//  Created by HardiB.Salih on 6/18/24.
//

import SwiftUI

struct TabBar: View {
    @AppStorage("selectedTab") var selectedTab: Tab = .home
    
    var body: some View {
        VStack (spacing: 0){
            Rectangle()
                .fill(Color(.systemGray6))
                .frame(height: 2)
                
            HStack {
                ForEach(tabItems) { tab in
                    Spacer()
                    itemCell(item: tab)
                    Spacer()
                }
            }
            .padding(.horizontal, 6)
            .frame(height: 80)
            .background(Color(.systemBackground))
            
        }
    }
    
    
    
    func itemCell(item: TabItem) -> some View {
        Button(action: {
            withAnimation(.easeInOut) {
                selectedTab = item.tab
            }
        }, label: {
            VStack (spacing: 6){
                Image(item.icon)
                    .background(
                        Image("logoShade")
                            .resizable()
                            .frame(width: 40, height: 25)
                            .foregroundStyle(selectedTab == item.tab ? .accent : .clear)
                    )
                Text(item.name.uppercased())
                    .lato(textStyle: .caption2)
            }
        })
        .foregroundStyle(Color(.label))
        .opacity(selectedTab == item.tab ? 1 : 0.4)
        .frame(height: 60)
    }
}

#Preview {
    TabBar()
}


struct TabItem: Identifiable {
    var id = UUID()
    var name: String
    var icon: String
    var tab: Tab
}

var tabItems : [TabItem] = Tab.allCases.map({ TabItem(name: $0.rawValue, icon: $0.rawValue, tab: $0) })


enum Tab: String, CaseIterable {
    case home
    case search
    case cart
    case wishlist
    case profile
}
