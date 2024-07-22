import Foundation
import SwiftUI

public struct ReportPrintersAggregator {
    public let reportPrinters: [any ReportPrinter]
    
    public init(reportPrinters: [any ReportPrinter]) {
        self.reportPrinters = reportPrinters
    }
    
    public func print<Output: PrintOutputFormat>(report: any PrintableInput, inStyle style: PrintStyle, intoFormat printFormat: Output.Type) async throws -> PrintOutputFormat {
        guard let printer = fetchReportPrinter(toPrint: report, into: printFormat) else {
            throw PrintError.unsupportedReportTypeOrPrintFormat
        }
        
        do {
            if let printedReport = try await printer.print(report: report, style: style) as? Output {
                return printedReport
            } else {
                throw PrintError.unsupportedReportTypeOrPrintFormat
            }
        } catch {
            throw error
        }
    }
}
private extension ReportPrintersAggregator {
    
    func fetchReportPrinter(
        toPrint report: any PrintableInput,
        into printFormat: any PrintOutputFormat.Type
    ) -> (any ReportPrinter)? {
        reportPrinters.filter({ $0.canPrint(report: report, into: printFormat) }).first
    }
}
