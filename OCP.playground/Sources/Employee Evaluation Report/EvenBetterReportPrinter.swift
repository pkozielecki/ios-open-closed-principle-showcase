import Foundation
import SwiftUI

public class EvenBetterReportPrinter {
    public init() {
    }
    
    public func printReport(employeeEvaluation: EmployeeEvaluation, backgroundImage: Image? = nil) async -> PDF {
        var pdf = PDF()
        pdf.titleFont = .largeTitle
        pdf.title = "Employee evaluation report"
        pdf.subtitle = employeeEvaluation.emloyeeName
        if let backgroundImage {
            pdf.set(backgroundImage: backgroundImage)
        }
        
        // Adding the rest of the elementes to the report.
        
        return pdf
    }
    
    public func printReport(sprint: Sprint, backgroundImage: Image? = nil) async -> PDF {
        var pdf = PDF()
        pdf.titleFont = .largeTitle
        pdf.title = sprint.sprintTitle
        
        // Unchanged since the last iteration ;)
        
        return pdf
    }
}
