//
//  TaskRow.swift
//  SwiftUI3DRotationTransition
//
//  Created by shiyanjun on 2023/8/9.
//

import SwiftUI

struct TaskRow: View {
    
    @State var task: Task
    
    var body: some View {
        HStack(spacing: 12) {
            Button {
                task.toggleTaskStatus()
            } label: {
                Image(systemName: task.taskCompletionStatus ? "checkmark.square" : "square")
                    .font(.system(size: 28, weight: .semibold))
                    .animation(.default)
            }
            .buttonStyle(PlainButtonStyle())
            
            Text(task.taskName)
                .font(TypefaceTwo.bold.font(size: 20))
                .colorMultiply(task.taskCompletionStatus ? Color.green : .white)
                .animation(.easeOut(duration: 0.3).delay(0.05))
            
            Spacer()
        }
    }
}

struct TaskRow_Previews: PreviewProvider {
    static var previews: some View {
        TaskRow(task: AppModel().tasks[0])
    }
}
