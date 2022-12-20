//
//  AppFonts.swift
//  TaskEffectiveMobile
//
//  Created by Admin on 07.12.22.
//

import UIKit

struct AppFont {
    
    enum MarkProWeight: String {
        case heavy = "-Heavy"
        case bold = "-Bold"
        case medium = "-Medium"
        case regular = "-Regular"
    }

    static func markProFont(ofSize size: CGFloat = UIFont.systemFontSize, weight: MarkProWeight = .regular) -> UIFont {
        return UIFont(name: "MarkPro\(weight.rawValue)", size: size) ?? .systemFont(ofSize: size)
    }
}
