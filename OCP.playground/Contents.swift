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

