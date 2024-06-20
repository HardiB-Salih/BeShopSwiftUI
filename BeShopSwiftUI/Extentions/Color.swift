//
//  Color.swift
//  BeShopSwiftUI
//
//  Created by HardiB.Salih on 6/17/24.
//

import SwiftUI

extension Color {
    init(hex: String, alpha: Double = 1.0) {
    let hex = hex.trimmingCharacters(in: CharacterSet.alphanumerics.inverted)
    guard hex.count == 6 else {
      self = .black
      return
    }

    var rgbValue: UInt64 = 0
    Scanner(string: hex).scanHexInt64(&rgbValue)

    let red = Double((rgbValue & 0xff0000) >> 16) / 255.0
    let green = Double((rgbValue & 0x00ff00) >> 8) / 255.0
    let blue = Double(rgbValue & 0x0000ff) / 255.0

    self = .init(red: red, green: green, blue: blue, opacity: alpha)
  }
}
