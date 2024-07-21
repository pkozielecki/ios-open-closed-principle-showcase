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


