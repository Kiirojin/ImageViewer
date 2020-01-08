//
//  UIScreen.swift
//  ImageViewer
//
//  Created by David Whetstone on 11/21/17.
//  Copyright © 2017 MailOnline. All rights reserved.
//

import UIKit

public extension UIScreen {
    class var hasNotch: Bool {
        // This will of course fail if Apple produces an notchless iPhone with these dimensions,
        // but is the simplest detection mechanism so far.
        if #available(iOS 11.0, *) {
            let bottom = UIApplication.shared.keyWindow?.safeAreaInsets.bottom ?? 0
            return bottom > 0
        } else {
            // Fallback on earlier versions
            return main.nativeBounds.size == CGSize(width: 1125, height: 2436)
        }
    }
}
