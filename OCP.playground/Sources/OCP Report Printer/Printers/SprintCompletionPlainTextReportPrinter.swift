import Foundation

public struct SprintCompletionPlainTextReportPrinter: ReportPrinter  {
    public init() {
    }
    
    public func canPrint(report: any PrintableInput, into printFormat: any PrintOutputFormat.Type) -> Bool {
        report is Sprint && printFormat == String.self
    }
    
    public func print(report: any PrintableInput, style: PrintStyle) async throws -> any PrintOutputFormat {
        guard let report = report as? Sprint else {
            throw PrintError.unsupportedReportTypeOrPrintFormat
        }
        
        var printout = ""
        printout.append(report.sprintTitle.applying(style))
        
        // Adding the rest of the elementes to the report.
        
        return printout
    }
}
