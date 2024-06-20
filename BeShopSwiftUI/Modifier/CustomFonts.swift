//
//  CustomFonts.swift
//  BeShopSwiftUI
//
//  Created by HardiB.Salih on 6/17/24.
//

import SwiftUI


struct TenorSansModifier: ViewModifier {
    let size: UIFont.TextStyle
    func body(content: Content) -> some View {
        content
            .font(.custom("TenorSans", size: UIFont.preferredFont(forTextStyle: size).pointSize))
    }
}



enum LatoFont: String {
    case black = "Lato-Black"
    case blackItalic = "Lato-BlackItalic"
    case bold = "Lato-Bold"
    case boldItalic = "Lato-BoldItalic"
    case italic = "Lato-Italic"
    case light = "Lato-Light"
    case lightItalic = "Lato-LightItalic"
    case regular = "Lato-Regular"
    case thin = "Lato-Thin"
    case thinItalic = "Lato-ThinItalic"
    
    func size(_ textStyle: UIFont.TextStyle) -> CGFloat {
        return UIFont.preferredFont(forTextStyle: textStyle).pointSize
    }
}

struct LatoViewModifier: ViewModifier {
    var font: LatoFont
    var textStyle: UIFont.TextStyle
    
    func body(content: Content) -> some View {
        content
            .font(.custom(font.rawValue, size: font.size(textStyle)))
    }
}

extension View {
    func tenorSans(_ size: UIFont.TextStyle = .body) -> some View {
        self.modifier(TenorSansModifier(size: size))
    }
    func lato(font: LatoFont = .regular, textStyle: UIFont.TextStyle = .body) -> some View {
        self.modifier(LatoViewModifier(font: font, textStyle: textStyle))
    }
}
