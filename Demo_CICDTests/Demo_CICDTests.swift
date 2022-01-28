//
//  Demo_CICDTests.swift
//  Demo_CICDTests
//
//  Created by Stryker, Nathan P on 1/27/22.
//

import XCTest
@testable import Demo_CICD

class Demo_CICDTests: XCTestCase {
    func testEmailValidator() throws {
        let emailValidator = EmailValidator()
        let validEmail = emailValidator.textFieldValidatorEmail("Nathan.Stryker@gmail.com")
        let badEmail = emailValidator.textFieldValidatorEmail("NotValidEmail")
        XCTAssertTrue(validEmail)
        XCTAssertFalse(badEmail)
        //testing 
    }
}
