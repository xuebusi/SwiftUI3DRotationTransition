//
//  AppModel.swift
//  SwiftUI3DRotationTransition
//
//  Created by shiyanjun on 2023/8/9.
//

import Foundation

class AppModel: ObservableObject {
    
    let userName = "Shubham"
    let greeting = "Good Afternoon,"
    
    var tasks: [Task] = [
        Task(id: 1, taskName: "Buy some books", taskCompletionStatus: false),
        Task(id: 2, taskName: "Get some groceries", taskCompletionStatus: false),
        Task(id: 3, taskName: "Declutter Workspace", taskCompletionStatus: false),
        Task(id: 4, taskName: "Wash your bike", taskCompletionStatus: false),
    ]
}
