//
//  TestSelection.swift
//  BeShopSwiftUI
//
//  Created by HardiB.Salih on 6/19/24.
//

import SwiftUI

struct SwipeActionView: View {
    @State private var items = ["Item 1", "Item 2", "Item 3"]
    
    var body: some View {
        List {
            ForEach(items.indices, id: \.self) { index in
                CellView(item: items[index])
    
            }
        }
        .listStyle(.plain) // Use plain list style
    }
}



struct CellView: View {
    let item: String
    @State var value = 0

    var body: some View {
        
        VStack {
            Text(item)
            CustomStepper(value: $value)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity) // Fill the entire row
        .background(Color.gray)
        .contentShape(Rectangle()) // Ensure the content shape covers the entire row
        .swipeActions {
            Button(role: .destructive) {
                
            } label: {
                Label("Delete", systemImage: "trash")
            }
        }
        .listRowInsets(EdgeInsets()) // Remove insets
        
    }
}

#Preview {
    SwipeActionView()
}






//struct TestSelection: View {
//    @State private var selectedCategory1: ShopCategory? = .men
//
//    @State private var selectedCategory: ShopCategory? = nil
//    @State private var selectedFragrance: Fragrance? = nil
//    @State private var selectedWomensFragrance: WomensFragrance? = nil
//    @State private var selectedMensFragrance: MensFragrance? = nil
//
//    var body: some View {
//        VStack {
//            ScrollView(.horizontal) {
//                HStack {
//                    ForEach(ShopCategory.allCases, id: \.self) { category in
//                        VStack {
//                            Image(category.imageName)
//                                .resizable()
//                                .frame(width: 80, height: 80)
//                            Text(category.displayName)
//                        }
//                    }
//                }
//            }
//            .scrollIndicators(.hidden)
//
//
//
//
//            // Dropdown for ShopCategory
//            Picker("Select Category", selection: $selectedCategory) {
//                ForEach(ShopCategory.allCases, id: \.self) { category in
//                    Text(category.displayName).tag(category as ShopCategory?)
//                }
//            }
//            .pickerStyle(.menu)
//            .padding()
//
//            if let selectedCategory = selectedCategory {
//                switch selectedCategory {
//                case .makeup:
//                    Text("This is MakeUP")
//                case .skinCare:
//                    Text("This is skinCare")
//                case .hair:
//                    Text("This is hair")
//                case .toolsAndBrushes:
//                    Text("This is toolsAndBrushes")
//                case .fragrance:
//                    Picker("Select Fragrance", selection: $selectedFragrance) {
//                        ForEach(Fragrance.allCases, id: \.self) { fragrance in
//                            Text(fragrance.displayName).tag(fragrance as Fragrance?)
//                        }
//                    }
//                    .pickerStyle(.wheel)
//                    .padding()
//                    .onChange(of: selectedFragrance, { oldValue, newValue in
//                        if newValue == .womensFragrance {
//                            selectedMensFragrance = nil
//                        } else if newValue == .mensFragrance {
//                            selectedWomensFragrance = nil
//                        }
//                    })
//
//
//                    if let selectedFragrance = selectedFragrance {
//                        switch selectedFragrance {
//                        case .womensFragrance:
//                            Picker("Select Women's Fragrance", selection: $selectedWomensFragrance) {
//                                ForEach(WomensFragrance.allCases, id: \.self) { fragrance in
//                                    Text(fragrance.displayName).tag(fragrance as WomensFragrance?)
//                                }
//                            }
//                            .pickerStyle(.wheel)
//                            .padding()
//                        case .mensFragrance:
//                            Picker("Select Men's Fragrance", selection: $selectedMensFragrance) {
//                                ForEach(MensFragrance.allCases, id: \.self) { fragrance in
//                                    Text(fragrance.displayName).tag(fragrance as MensFragrance?)
//                                }
//                            }
//                            .pickerStyle(.wheel)
//                            .padding()
//                        }
//                    }
//
//                case .bodyCare:
//                    Text("This is bodyCare")
//                case .men:
//                    Text("This is men")
//                }
//            }
//
//
//
//            Spacer()
//
//            Button("Next") {
//                if let selectedCategory = selectedCategory {
//                    print(selectedCategory.displayName)
//                }
//                if let selectedFragrance = selectedFragrance {
//                    print(selectedFragrance.displayName)
//                }
//                if let selectedWomensFragrance = selectedWomensFragrance {
//                    print(selectedWomensFragrance.displayName)
//                }
//                if let selectedMensFragrance = selectedMensFragrance {
//                    print(selectedMensFragrance.displayName)
//                }
//            }
//        }
//        .padding()
//    }
//}
//
//struct TestSelection_Previews: PreviewProvider {
//    static var previews: some View {
//        TestSelection()
//    }
//}
//
//#Preview {
//    TestSelection()
//}
