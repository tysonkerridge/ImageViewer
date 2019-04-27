//
//  UIScreen.swift
//  ImageViewer
//
//  Created by David Whetstone on 11/21/17.
//  Copyright © 2017 MailOnline. All rights reserved.
//

import UIKit

extension UIScreen {
    
    private static var iPhoneXRSize: CGSize { return CGSize(width: 828, height: 1792) }
    private static var iPhoneXSSize: CGSize { return CGSize(width: 1125, height: 2436) }
    private static var iPhoneXSMaxSize: CGSize { return CGSize(width: 1242, height: 2688) }
    
    public class var hasNotch: Bool {
        // This will of course fail if Apple produces an notchless iPhone with these dimensions,
        // but is the simplest detection mechanism so far.
        switch main.nativeBounds.size {
        case iPhoneXSSize,
             iPhoneXRSize,
             iPhoneXSMaxSize:
            return true
        default:
            return false
        }
    }
}
