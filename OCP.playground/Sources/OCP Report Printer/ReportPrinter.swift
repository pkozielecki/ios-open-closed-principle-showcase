import Foundation

public protocol ReportPrinter {
    func canPrint(report: PrintableInput, into printFormat: PrintOutputFormat.Type) -> Bool
    func print(report: PrintableInput, style: PrintStyle) async throws -> PrintOutputFormat
}

