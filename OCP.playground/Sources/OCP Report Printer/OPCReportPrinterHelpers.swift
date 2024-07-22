import Foundation
import SwiftUI

public protocol PrintableInput {}
extension Sprint: PrintableInput {}
extension QuaterlyFinancialData: PrintableInput {}

public protocol PrintOutputFormat {}
extension String: PrintOutputFormat {}
extension PDF: PrintOutputFormat {}

public enum PrintError: Error {
    case unsupportedReportTypeOrPrintFormat
    case incompatiblePrintFormat
}

public extension String {
    func applying(_ style: PrintStyle) -> String {
        return self
    }
}
