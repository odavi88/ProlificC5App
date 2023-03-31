//
//  ProlificTaksCardModel.swift
//  ProlificC5
//
//  Created by Omar Davidson II on 3/19/23.
//

import Foundation

enum TaskStatus {
    case completed, inProgress, upComing
    
    var taskStatus: String {
        switch self {
            
        case .completed:
            return "Completed 👍🏾"
        case .inProgress:
            return "In Progress"
        case .upComing:
            return "Up Coming"
        }
    }
}


// maybe...
enum CardType {
    case task, event
}

struct TaskCardModel: Identifiable {
    let id = UUID()
    let cardTitle: String
    let cardNotes: String
    let date: Date
    let time: TimeZone
    let taskStatus: TaskStatus
}
