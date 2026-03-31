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
    var symbolForegroundStyle: (Color, Color)
    
    var title: String
    var message: String
    
    static var example1: Toast {
        Toast(
        symbol: "checkmark.circle.fill",
        symbolFont: .system(size: 30),
        symbolForegroundStyle: (.white, .green),
        title: "Published Review!",
        message: "Your review was just published!"
        )
    }
}
