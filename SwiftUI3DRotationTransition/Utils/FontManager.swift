//
//  FontManager.swift
//  SwiftUI3DRotationTransition
//
//  Created by shiyanjun on 2023/8/9.
//

import Foundation
import SwiftUI

enum TypefaceOne {
    case regular
    case bold
    case boldItalic
    case italic
    
    func font(size: CGFloat) -> Font {
        switch self {
        case .regular:
            return .custom("PTSerif-Regular", size: size)
        case .bold:
            return .custom("PTSerif-Bold", size: size)
        case .boldItalic:
            return .custom("PTSerif-BoldItalic", size: size)
        case .italic:
            return .custom("PTSerif-Italic", size: size)
        }
    }
}

enum TypefaceTwo {
    case regular
    case medium
    case semibold
    case bold
    
    func font(size: CGFloat) -> Font {
        switch self {
        case .regular:
            return .custom("Vollkorn-Regular", size: size)
        case .medium:
            return .custom("Vollkorn-Medium", size: size)
        case .semibold:
            return .custom("Vollkorn-SemiBold", size: size)
        case .bold:
            return .custom("Vollkorn-Bold", size: size)
        }
    }
}
