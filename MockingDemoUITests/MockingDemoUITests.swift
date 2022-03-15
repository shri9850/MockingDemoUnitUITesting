//
//  MockingDemoUITests.swift
//  MockingDemoUITests
//
//  Created by skotakal on 3/15/22.
//

import XCTest

class When_user_clicks_on_login_button: XCTestCase {
    private var app: XCUIApplication!
    private var pagerObject: ContentView!
    override func setUp() {
        app = XCUIApplication()
        pagerObject = ContentView(app: app)
        app.launchEnvironment = ["ENV": "Test"]
        continueAfterFailure = false
        app.launch()
    }
    func test_should_dispaly_error_message_missing_required_field(){
        pagerObject.loginButton.tap()
        let _ = pagerObject.messageText.waitForExistence(timeout: 0.5)
        XCTAssertEqual(pagerObject.messageText.label ,"Required fields are missing" )
    }
    
    func test_should_nnavigate_dashboard_wheen_authenticated() {
        pagerObject.userNameTextField.tap()
        pagerObject.userNameTextField.typeText("JohnDoe")
        
        pagerObject.passwordTextField.tap()
        pagerObject.passwordTextField.typeText("password")
        
        pagerObject.loginButton.tap()
        XCTAssertTrue(pagerObject.dashboardText.waitForExistence(timeout: 0.5))
    }
    
    func test_should_show_error_msg_on_wrong_authentication(){
        pagerObject.userNameTextField.tap()
        pagerObject.userNameTextField.typeText("JohnDoe")
        
        pagerObject.passwordTextField.tap()
        pagerObject.passwordTextField.typeText("wrongPassword")
        
        pagerObject.loginButton.tap()
        let _ = pagerObject.messageText.waitForExistence(timeout: 0.5)
        XCTAssertEqual(pagerObject.messageText.label, "Invalid credentials")
    }
}
