import Foundation
import SwiftUI

public class BetterReportPrinter {
    public init() {
    }
    
    public func printReport(sprint: Sprint, backgroundImage: Image? = nil) async -> PDF {
        var pdf = PDF()
        pdf.titleFont = .largeTitle
        pdf.title = "Report for: \(sprint.sprintTitle)"
        pdf.subtitle = "Dates: \(sprint.sprintStart.formatted()) -> \(sprint.sprintFinish.formatted())"
        if let backgroundImage {
            pdf.set(backgroundImage: backgroundImage)
        }
        
        // Adding the rest of the elementes to the report.
        
        return pdf
    }
}
