//
//  LoginViewControllerTests.swift
//  ios-clean-mvp-exampleTests
//
//  Created by Paweł Piątkowski on 30/11/2018.
//

import XCTest
@testable import ios_clean_mvp_example

class LoginViewControllerTests: XCTestCase {
    var loginViewController: LoginViewController?
    
    override func setUp() {
        super.setUp()

        loginViewController = LoginViewController.instantiate()
        loginViewController?.loadViewIfNeeded()
    }
    
    override func tearDown() {
        loginViewController = nil

        super.tearDown()
    }
    
    func testOutlets() {
        XCTAssertNotNil(loginViewController?.loginButton)
        XCTAssertNotNil(loginViewController?.registerButton)
        XCTAssertNotNil(loginViewController?.phoneNumberTextField)
        XCTAssertNotNil(loginViewController?.passwordTextField)
        XCTAssertNotNil(loginViewController?.feedbackLabel)
        XCTAssertNotNil(loginViewController?.activityIndicator)
    }
    
}
