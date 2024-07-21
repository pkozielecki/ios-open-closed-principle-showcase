import Foundation
import SwiftUI

public struct Sprint {
    public let sprintTitle: String
    public let sprintStart: Date
    public let sprintFinish: Date
    public let tasksCompleted: Int
    public let tasksTotal: Int
    
    public init(sprintTitle: String, sprintStart: Date, sprintFinish: Date, tasksCompleted: Int, tasksTotal: Int) {
        self.sprintTitle = sprintTitle
        self.sprintStart = sprintStart
        self.sprintFinish = sprintFinish
        self.tasksCompleted = tasksCompleted
        self.tasksTotal = tasksTotal
    }
}
