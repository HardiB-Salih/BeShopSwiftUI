//
//  Utils.swift
//  BeShopSwiftUI
//
//  Created by HardiB.Salih on 6/19/24.
//

import Foundation

func casesDisplayNames<T: CaseIterable & Identifiable>(_: T.Type) -> [T: String] where T.ID == String {
    var dict = [T: String]()
    for caseInstance in T.allCases {
        dict[caseInstance] = caseInstance.id
    }
    return dict
}
