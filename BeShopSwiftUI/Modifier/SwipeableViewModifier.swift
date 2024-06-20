//
//  SwipeableViewModifier.swift
//  BeShopSwiftUI
//
//  Created by HardiB.Salih on 6/20/24.
//

import Foundation
import SwiftUI

struct SwipeableViewModifier: ViewModifier {
    @GestureState private var translation: CGFloat = 0
    @State private var offset: CGFloat = 0
    @Binding var isSwiped: Bool
    let onDelete: () -> Void

    func body(content: Content) -> some View {
        ZStack(alignment: .trailing) {
            Color.red
                .frame(width: 80)
                .opacity(Double((offset + translation) / 80))

            content
                .background(Color.white)
                .offset(x: offset + translation)
                .gesture(
                    DragGesture()
                        .updating($translation) { value, state, _ in
                            if value.translation.width < 0 {
                                state = value.translation.width
                            }
                        }
                        .onEnded { value in
                            if value.translation.width < -50 {
                                withAnimation {
                                    offset = -80
                                    isSwiped = true
                                }
                            } else {
                                withAnimation {
                                    offset = 0
                                    isSwiped = false
                                }
                            }
                        }
                )
                .onTapGesture {
                    withAnimation {
                        offset = 0
                        isSwiped = false
                    }
                }
        }
        .frame(height: 80) // Adjust this according to your cell height
        .onChange(of: isSwiped, { oldValue, newValue in
            if !newValue {
                withAnimation {
                    offset = 0
                }
            }
        })
        
        .onLongPressGesture {
            onDelete()
        }
    }
}

extension View {
    func swipeable(isSwiped: Binding<Bool>, onDelete: @escaping () -> Void) -> some View {
        self.modifier(SwipeableViewModifier(isSwiped: isSwiped, onDelete: onDelete))
    }
}
