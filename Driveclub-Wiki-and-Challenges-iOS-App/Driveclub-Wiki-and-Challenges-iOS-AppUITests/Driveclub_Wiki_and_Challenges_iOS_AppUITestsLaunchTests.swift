//
//  Driveclub_Wiki_and_Challenges_iOS_AppUITestsLaunchTests.swift
//  Driveclub-Wiki-and-Challenges-iOS-AppUITests
//
//  Created by Nizaam Haffejee on 2024/09/19.
//

import XCTest

final class Driveclub_Wiki_and_Challenges_iOS_AppUITestsLaunchTests: XCTestCase {

    override class var runsForEachTargetApplicationUIConfiguration: Bool {
        true
    }

    override func setUpWithError() throws {
        continueAfterFailure = false
    }

    @MainActor
    func testLaunch() throws {
        let app = XCUIApplication()
        app.launch()

        // Insert steps here to perform after app launch but before taking a screenshot,
        // such as logging into a test account or navigating somewhere in the app

        let attachment = XCTAttachment(screenshot: app.screenshot())
        attachment.name = "Launch Screen"
        attachment.lifetime = .keepAlways
        add(attachment)
    }
}
