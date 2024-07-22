import Foundation
import SwiftUI

public class ReportPrinterExtendedEvenMore {
    public init() {
    }
    
    public func printReport(financialData: QuaterlyFinancialData, backgroundImage: Image? = nil) async -> PDF {
        var pdf = PDF()
        pdf.titleFont = .largeTitle
        pdf.title = "Report for \(financialData.quarter)/\(financialData.year)"
        pdf.add(line: "Total income: \(financialData.totalIncome)")
        pdf.add(line: "Total expenses: \(financialData.totalExpenses)")
        if let backgroundImage {
            pdf.set(backgroundImage: backgroundImage)
        }
        
        // Adding the rest of the elementes to the report.
        
        return pdf
    }
}
