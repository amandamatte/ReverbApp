//
//  CustomHostingView.swift
//  reverbapp
//
//  Created by Aluno-01 on 31/03/26.
//

import SwiftUI

class CustomHostingView: UIHostingController<ToastView> {
    var isStatusBarHidden: Bool = false {
        didSet {
            setNeedsStatusBarAppearanceUpdate()
        }
    }
    
    override var prefersStatusBarHidden: Bool {
        return isStatusBarHidden
    }
}
