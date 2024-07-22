import Foundation

public struct QuaterlyFinancialData {
    public let quarter: Int
    public let year: Int
    public let totalIncome: Double
    public let totalExpenses: Double
    
    public init(quarter: Int, year: Int, totalIncome: Double, totalExpenses: Double) {
        self.quarter = quarter
        self.year = year
        self.totalIncome = totalIncome
        self.totalExpenses = totalExpenses
    }
}
