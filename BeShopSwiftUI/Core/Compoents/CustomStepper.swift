//
//  CustomStepper.swift
//  BeShopSwiftUI
//
//  Created by HardiB.Salih on 6/18/24.
//

import SwiftUI

struct CustomStepper: View {
    @Binding var value: Int
    
    var body: some View {
        HStack (spacing: 12){
            Button(action: {
                if value > 1 {
                    value -= 1
                }
            }, label: {
                Image(systemName: "minus")
                    .foregroundColor(value > 1 ? Color.accentColor : Color.text)
                    .padding()
                    .frame(maxHeight: .infinity)
            })
            
            
            Text("\(value)")
                .lato(font: .regular, textStyle: .headline)
            
            Button(action: { value += 1 }, label: {
                Image(systemName: "plus")
                    .padding()
                
            })
        }
        .frame(height: 40)
        .background(Color.init(hex: "FAF9FF"))
        .overlay {
            Rectangle()
                .stroke(Color.init(hex: "EEEEEE"), lineWidth: 1.0)
        }
        .animation(.easeInOut, value: value)
    }
}


struct CustomHorizontalStepper: View {
    @Binding var value: Int
    let onPlusTapped: () -> Void
    let onMinusTapped: () -> Void
    
    var body: some View {
        VStack(spacing: 12) {
            Button(action: {
                value += 1
                onPlusTapped()
            }, label: {
                Image(systemName: "plus")
                    .padding()
            })
            .frame(width: 30, height: 30)
            .background(Color(hex: "FAF9FF"))
            .overlay {
                Rectangle()
                    .stroke(Color(hex: "EEEEEE"), lineWidth: 1.0)
            }
            .contentShape(Rectangle())
            
            Text("\(value)")
                .lato(font: .regular, textStyle: .headline)
            
            Button(action: {
                if value > 1 {
                    value -= 1
                    onMinusTapped()
                }
            }, label: {
                Image(systemName: "minus")
                    .foregroundColor(value > 1 ? Color.accentColor : Color.text)
                    .padding()
            })
            .frame(width: 30, height: 30)
            .background(Color(hex: "FAF9FF"))
            .overlay {
                Rectangle()
                    .stroke(Color(hex: "EEEEEE"), lineWidth: 1.0)
            }
            .contentShape(Rectangle())
        }
        .animation(.easeInOut, value: value)
    }
}


#Preview {
    CustomHorizontalStepper(value: .constant(1),
                            onPlusTapped: {},
                            onMinusTapped: {})
}
