import Foundation
import SwiftUI

public class InitialReportPrinter {
    public init() {
    }
    
    public func printReport(sprint: Sprint) async -> PDF {
        var pdf = PDF()
        pdf.titleFont = .largeTitle
        pdf.title = sprint.sprintTitle
        
        // Adding the rest of the elementes to the report.
        
        return pdf
    }
}
