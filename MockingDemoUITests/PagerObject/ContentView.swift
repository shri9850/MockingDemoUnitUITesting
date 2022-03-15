//
//  ContentView.swift
//  MockingDemoUITests
//
//  Created by skotakal on 3/15/22.
//

import Foundation
import XCTest

class ContentView{
    var app: XCUIApplication
    
    init(app: XCUIApplication){
        self.app = app
    }
    var loginButton:XCUIElement{
        app.buttons["loginButton"]
    }
    var messageText: XCUIElement{
        app.staticTexts["messageText"]
    }
    
    var userNameTextField:XCUIElement{
        app.textFields["usernameTextField"]
    }
    
    var passwordTextField: XCUIElement{
        app.textFields["passwordTextField"]
    }
    
    var dashboardText: XCUIElement{
        app.staticTexts["Dashboard"]
    }
}
