import Foundation
import SwiftUI

/// --------------------------------------------------------------------------------------------
/// Stage 1 - Printing simple jira sprint completion report: completed, total, velocity -> struct. Print to PDF.
/// --------------------------------------------------------------------------------------------

let reportPrinter = InitialReportPrinter()
let sprint = Sprint(sprintTitle: "Sprint 0", sprintStart: .init("15/06/2024"), sprintFinish: .init("30/06/2024"), tasksCompleted: 10, tasksTotal: 15)
let sprintReport = await reportPrinter.printReport(sprint: sprint)

/// --------------------------------------------------------------------------------------------
/// Stage 2 - Addinig optional image background -> break the API by adding the new param -> make it optional (profit).
/// --------------------------------------------------------------------------------------------

let background = Image("sprintReportBackground")
let betterReportPrinter = BetterReportPrinter()
let betterSprintReport = await betterReportPrinter.printReport(sprint: sprint, backgroundImage: background)

/// --------------------------------------------------------------------------------------------
/// Stage 3 - New case: employee evaluation -> new function (with optional BG).
/// --------------------------------------------------------------------------------------------

let employeeEvaluation = EmployeeEvaluation(emloyeeName: "John Doe", evaluationPeriodStart: .init("01/01/2024"), evaluationPeriodFinish: .init("01/07/2024"), overallPerformance: 5.0, communication: 5.0, engagement: 5.0)
let evenBetterReportPrinter = EvenBetterReportPrinter()
let betterReportPDF = await evenBetterReportPrinter.printReport(employeeEvaluation: employeeEvaluation)

/// --------------------------------------------------------------------------------------------
/// Stage 4 - New case: financial reports -> new function with optional styling.
/// --------------------------------------------------------------------------------------------

let financialData = QuaterlyFinancialData(quarter: 3, year: 2024, totalIncome: 100, totalExpenses: 20)
let evenMoreExtendedReportPrinter = ReportPrinterExtendedEvenMore()
let enenBetterReportPDF = await evenMoreExtendedReportPrinter.printReport(financialData: financialData)

/// --------------------------------------------------------------------------------------------
/// Stage 5 - No longer print to the PDF - print to plain text as well. I want to die...
/// --------------------------------------------------------------------------------------------

let printStyle = PrintStyle(titleFont: .largeTitle)
let aggregator = ReportPrintersAggregator(
    reportPrinters: [
        SprintCompletionPDFReportPrinter(),
        SprintCompletionPlainTextReportPrinter()
    ]
)

do {
    let plainTextSprintReport: String = try await aggregator.print(report: sprint, inStyle: printStyle, intoFormat: String.self)
    print("Sprint completion report in plain text: \(plainTextSprintReport)")
} catch {
    print("Print error: \(error)")
}

do {
    let pdfSprintReport: PDF = try await aggregator.print(report: sprint, inStyle: printStyle, intoFormat: PDF.self)
    print("Sprint completion report in PDF: \(pdfSprintReport.title ?? "")")
} catch {
    print("Print error: \(error)")
}

