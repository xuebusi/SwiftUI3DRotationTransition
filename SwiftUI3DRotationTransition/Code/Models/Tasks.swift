//
//  Tasks.swift
//  SwiftUI3DRotationTransition
//
//  Created by shiyanjun on 2023/8/9.
//

import Foundation

struct Task: Identifiable {
    var id: Int
    var taskName: String
    var taskCompletionStatus: Bool
    
    mutating func toggleTaskStatus() {
        self.taskCompletionStatus.toggle()
    }
}
