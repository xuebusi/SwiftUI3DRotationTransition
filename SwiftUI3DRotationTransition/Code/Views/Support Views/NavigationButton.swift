//
//  NavigationButton.swift
//  SwiftUI3DRotationTransition
//
//  Created by shiyanjun on 2023/8/9.
//

import SwiftUI

struct NavigationButton: View {
    
    var lineWidth: CGFloat = 40
    var smallerLineWidth: CGFloat = 18
    
    var color: Color = .white
    var buttonAction: () -> () = {}
    
    var body: some View {
        Button {
            buttonAction()
        } label: {
            VStack(alignment: .leading) {
                RoundedRectangle(cornerRadius: 12)
                    .frame(width: lineWidth, height: 3)
                RoundedRectangle(cornerRadius: 12)
                    .frame(width: smallerLineWidth, height: 3)
            }
            .foregroundColor(color)
        }
        .buttonStyle(PlainButtonStyle())
        .frame(width: 44, height: 44, alignment: .leading)

    }
}

struct NavigationButton_Previews: PreviewProvider {
    static var previews: some View {
        NavigationButton()
    }
}
