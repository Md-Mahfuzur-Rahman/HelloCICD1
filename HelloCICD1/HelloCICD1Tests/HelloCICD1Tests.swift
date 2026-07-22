//
//  HelloCICD1Tests.swift
//  HelloCICD1Tests
//
//  Created by Mahfuz on 2026-07-21.
//

//import Testing
//
//struct HelloCICD1Tests {
//
//    @Test func example() async throws {
//        // Write your test here and use APIs like `#expect(...)` to check expected conditions.
//        ..
//    }
//
//}

import XCTest
@testable import HelloCICD1

final class UserValidatorTests: XCTestCase {

    func testValidEmail() {
        // Arrange
        let validator = UserValidator()
        let email = "test@example.com"

        // Act
        let result = validator.isValidEmail(email)

        // Assert
        XCTAssertTrue(result)
    }

    func testInvalidEmail() {
        let validator = UserValidator()
        let email = "invalid-email"

        let result = validator.isValidEmail(email)

        XCTAssertFalse(result)
    }

    func testValidPassword() {
        let validator = UserValidator()
        let password = "password123"

        let result = validator.isValidPassword(password)

        XCTAssertTrue(result)
    }

    func testInvalidPassword() {
        let validator = UserValidator()
        let password = "123"

        let result = validator.isValidPassword(password)

        XCTAssertFalse(result)
    }
}
