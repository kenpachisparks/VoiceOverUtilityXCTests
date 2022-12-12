//
//  XCTestSetup.swift
//  CalculatorXCUITestsUITests
//
//  Created by Ryan T on 7/11/21.
//  Copyright © 2021 Ryan Touvell. All rights reserved.
//

import XCTest

class XCTestSetup: XCTestCase {
    let variableViewPage = ViewVariablePage()
    var menuBar = MenuBar()
    var mainWindow = MainWindow()
    var helperFunctions = HelperFunctions()
    var app: XCUIApplication { variableViewPage.app }

    override func setUp() {
        app.launch()
    }

    override func tearDown() {
        app.terminate()
    }
}
