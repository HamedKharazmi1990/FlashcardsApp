//
//  iPad Support.swift
//  Flashcards
//
//  Created by Hamed Kharazmi on 02.01.26.
//

import SwiftUI

extension UIDevice {
    static var isIPad: Bool {
        UIDevice
            .current
            .userInterfaceIdiom == .pad
    }
    static var isIPhone: Bool {
        UIDevice
            .current
            .userInterfaceIdiom == .phone
    }
}
