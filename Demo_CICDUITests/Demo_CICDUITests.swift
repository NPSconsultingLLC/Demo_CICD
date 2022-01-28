//
//  Demo_CICDUITests.swift
//  Demo_CICDUITests
//
//  Created by Stryker, Nathan P on 1/27/22.
//

import XCTest

class Demo_CICDUITests: XCTestCase {
    
    func testBadLogin() throws {
        // UI tests must launch the application that they test.
        let app = XCUIApplication()
        app.launch()
        app.textFields["Username"].tap()
        app.typeText("BadUserName")
        app.secureTextFields["Password"].tap()
        app.typeText("BadPassword")
        app.buttons["LOGIN"].tap()
        let failedLogin = app.staticTexts["Information not correct. Try again."]
        let successLogin = app.staticTexts["Login succeeded!"]
        XCTAssertEqual(failedLogin.exists, true)
        XCTAssertEqual(successLogin.exists, false)
    }
    
    func testGoodLogin() throws {
        let app = XCUIApplication()
        app.launch()
        app.textFields["Username"].tap()
        app.typeText("OptumUser@optum.com")
        app.secureTextFields["Password"].tap()
        app.typeText("Test2Day")
        app.buttons["LOGIN"].tap()
        let failedLogin = app.staticTexts["Information not correct. Try again."]
        let successLogin = app.staticTexts["Login succeeded!"]
        XCTAssertEqual(failedLogin.exists, false)
        XCTAssertEqual(successLogin.exists, true)
    }
}
