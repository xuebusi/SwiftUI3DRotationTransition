//
//  MainView.swift
//  SwiftUI3DRotationTransition
//
//  Created by shiyanjun on 2023/8/9.
//

import SwiftUI

struct MainView: View {
    
    let animationDuration: TimeInterval = 0.75
    @StateObject var appModel: AppModel = AppModel()
    
    @State var firstViewDegrees: Double = RotationState.showFirstView.rotationValues.0
    @State var firstViewOffset: CGFloat = RotationState.showFirstView.rotationValues.1
    @State var firstViewAnchor: UnitPoint = RotationState.showFirstView.rotationValues.2
    @State var firstViewYAxis: CGFloat = RotationState.showFirstView.rotationValues.3
    
    @State var secondViewDegrees: Double = RotationState.hideSecondView.rotationValues.0
    @State var secondViewOffset: CGFloat = RotationState.hideSecondView.rotationValues.1
    @State var secondViewAnchor: UnitPoint = RotationState.hideSecondView.rotationValues.2
    @State var secondViewYAxis: CGFloat = RotationState.hideSecondView.rotationValues.3
    
    var body: some View {
        ZStack {
            Color(hex: "080808")
                .edgesIgnoringSafeArea(.all)
            ZStack {
                SidebarView(leading: 48) {
                    withAnimation(.easeInOut(duration: animationDuration)) {
                        self.changeRotationStates(stateOne: .showFirstView, stateTwo: .hideSecondView)
                    }
                }
            }
            .rotation3DEffect(
                .degrees(secondViewDegrees),
                axis: (x: 0.0, y: secondViewYAxis, z: 0.0),
                anchor: secondViewAnchor)
            .offset(x: secondViewOffset)
            
            ZStack(alignment: .topLeading) {
                Color.black
                    .edgesIgnoringSafeArea(.all)
                VStack(alignment: .leading) {
                    
                    HStack {
                        NavigationButton(color: Color.white) {
                            withAnimation(.easeInOut(duration: animationDuration)) {
                                self.changeRotationStates(stateOne: .hideFirstView, stateTwo: .showSecondView)
                            }
                        }
                    }
                    
                    VStack(alignment: .leading, spacing: 12) {
                        
                        Text(appModel.greeting)
                            .font(TypefaceTwo.medium.font(size: 27))
                            .opacity(0.75)
                            .foregroundColor(.white)
                            .shadow(color: Color.white.opacity(0.5), radius: 2)
                            .animation(.none)
                        
                        Text(appModel.userName)
                            .font(TypefaceTwo.bold.font(size: 38))
                            .foregroundColor(.white)
                            .shadow(color: Color.white.opacity(0.5), radius: 2)
                            .animation(.none)
                        
                        VStack(alignment: .leading, spacing: 24) {
                            Text("Today's Tasks")
                                .foregroundColor(.white)
                                .font(TypefaceTwo.semibold.font(size: 24))
                                .textCase(.uppercase)
                                .padding(.top, 40)
                                .padding(.bottom, 12)
                            
                            ForEach(appModel.tasks) { task in
                                TaskRow(task: task)
                                    .colorScheme(.dark)
                                    .padding(.vertical, 8)
                            }
                        }
                        
                    }
                    .padding(.top, 12)
                }
                .padding(24)
                .padding(.top, 24)
            }
            .rotation3DEffect(
                .degrees(firstViewDegrees),
                axis: (x: 0.0, y: firstViewYAxis, z: 0.0),
                anchor: firstViewAnchor)
            .offset(x: firstViewOffset)
        }
        .edgesIgnoringSafeArea(.all)
    }
    
    func changeRotationStates(stateOne: RotationState, stateTwo: RotationState) {
        (firstViewDegrees, firstViewOffset, firstViewAnchor, firstViewYAxis) = stateOne.rotationValues
        (secondViewDegrees, secondViewOffset, secondViewAnchor, secondViewYAxis) = stateTwo.rotationValues
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
