//
//  Rotation.swift
//  SwiftUI3DRotationTransition
//
//  Created by shiyanjun on 2023/8/9.
//

import SwiftUI

enum RotationState {
    case showFirstView
    case hideFirstView
    
    case showSecondView
    case hideSecondView
    
    // degree, offset, anchor, axis
    var rotationValues: (Double, CGFloat, UnitPoint, CGFloat) {
        switch self {
            
        case .showFirstView:
            return (0, 0, .leading, 1)
            
        case .hideFirstView:
            return (90, UIScreen.main.bounds.width - 48, .leading, 1)
            
        case .showSecondView:
            return (0, -48, .trailing, -1)
            
        case .hideSecondView:
            return (90, -UIScreen.main.bounds.width, .trailing, -1)
        }
    }
}
