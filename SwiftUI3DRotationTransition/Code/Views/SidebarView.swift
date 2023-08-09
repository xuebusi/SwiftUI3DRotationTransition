//
//  SidebarView.swift
//  SwiftUI3DRotationTransition
//
//  Created by shiyanjun on 2023/8/9.
//

import SwiftUI

struct SidebarView: View {
    
    var leading: CGFloat = 0
    var buttonAction: () -> () = {}
    
    var body: some View {
        ZStack(alignment: .topLeading) {
            Color(hex: "121212")
                .edgesIgnoringSafeArea(.all)
            
            VStack(alignment: .leading) {
                HStack {
                    Image("user")
                        .resizable()
                        .frame(width: 100, height: 100)
                        .clipShape(Circle())
                        .padding(10)
                        .overlay {
                            Circle()
                                .stroke(lineWidth: 3)
                                .foregroundColor(.white)
                        }
                    
                    Button {
                        buttonAction()
                    } label: {
                        Image(systemName: "chevron.left")
                            .foregroundColor(.white)
                            .font(.system(size: 26, weight: .medium))
                            .padding(14)
                            .overlay {
                                Circle()
                                    .stroke(lineWidth: 1)
                                    .opacity(0.85)
                                    .foregroundColor(.white)
                            }
                    }
                    .padding(.leading, 56)
                    .padding(.bottom, 24)
                }
                
                VStack(alignment: .leading) {
                    Text("Shubham Singh")
                        .foregroundColor(.white)
                        .frame(maxWidth: UIScreen.main.bounds.width / 2, alignment: .leading)
                        .font(TypefaceOne.bold.font(size: 38))
                        .shadow(radius: 5)
                    
                    Text("iOS Developer")
                        .font(TypefaceOne.bold.font(size: 24))
                        .opacity(0.7)
                        .padding(.top, 10)
                        .shadow(radius: 5)
                    
                    VStack(alignment: .leading, spacing: 40) {
                        SidebarAction(buttonImage: "flag.fill", title: "Priority")
                        SidebarAction(buttonImage: "square.grid.2x2", title: "Categories")
                        SidebarAction(buttonImage: "calendar", title: "Archived")
                        SidebarAction(buttonImage: "gearshape", title: "Setting")
                    }
                    .padding(.top, 48)
                }
                .padding(.top, 48)
                .foregroundColor(.white)
            }
            .padding(36)
            .padding(.top, 32)
            .padding(.leading, leading)
        }
    }
}

struct SidebarView_Previews: PreviewProvider {
    static var previews: some View {
        SidebarView()
    }
}

struct SidebarAction: View {
    
    var buttonImage: String = ""
    var title: String = ""
    
    var buttonAction: () -> () = {}
    
    var body: some View {
        HStack {
            Button {
                buttonAction()
            } label: {
                Image(systemName: buttonImage)
                    .font(.system(size: 24, weight: .semibold))
                    .foregroundColor(.white)
                    .opacity(0.6)
                    .frame(width: 30, height: 30)
            }
            
            Text(title)
                .font(TypefaceOne.regular.font(size: 21))
                .padding(.leading, 16)
                .foregroundColor(.white)
                .opacity(0.9)
                .shadow(radius: 5)
        }
    }
}
