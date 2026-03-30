//
//  Toast.swift
//  reverbapp
//
//  Created by Aluno-01 on 30/03/26.
//

import SwiftUI

struct Toast {
    private(set) var id: String = UUID().uuidString
    var symbol: String
    var symbolFont: Font
    var symbolForegroundStyle: (LinearGradient)
    
    var title: String
    
    static var example: Toast {
        Toast(
        symbol: "checkmark.circle.fill",
        symbolFont: .system(size: 30),
        symbolForegroundStyle: (LinearGradient(colors: [.gradientLinear1, .gradientLinear2], startPoint: .leading, endPoint: .bottom)),
        title: "Published Review!"
        )
    }
}
