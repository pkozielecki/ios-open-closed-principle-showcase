import Foundation

public struct SprintCompletionPDFReportPrinter: ReportPrinter  {
    public init() {
    }
    
    public func canPrint(report: any PrintableInput, into printFormat: any PrintOutputFormat.Type) -> Bool {
        report is Sprint && printFormat == PDF.self
    }
    
    public func print(report: any PrintableInput, style: PrintStyle) async throws -> any PrintOutputFormat {
        guard let report = report as? Sprint else {
            throw PrintError.unsupportedReportTypeOrPrintFormat
        }
        
        var pdf = PDF()
        pdf.titleFont = style.titleFont
        pdf.title = report.sprintTitle
        
        if let backgroundImage = style.backgroundImage {
            pdf.set(backgroundImage: backgroundImage)
        }
        
        // Adding the rest of the elementes to the report.
        
        return pdf
    }
}
