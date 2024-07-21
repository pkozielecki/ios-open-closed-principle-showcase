import Foundation

public struct EmployeeEvaluation {
    public let emloyeeName: String
    public let evaluationPeriodStart: Date
    public let evaluationPeriodFinish: Date
    public let overallPerformance: Double
    public let communication: Double
    public let engagement: Double
    
    public init(emloyeeName: String, evaluationPeriodStart: Date, evaluationPeriodFinish: Date, overallPerformance: Double, communication: Double, engagement: Double) {
        self.emloyeeName = emloyeeName
        self.evaluationPeriodStart = evaluationPeriodStart
        self.evaluationPeriodFinish = evaluationPeriodFinish
        self.overallPerformance = overallPerformance
        self.communication = communication
        self.engagement = engagement
    }
}
