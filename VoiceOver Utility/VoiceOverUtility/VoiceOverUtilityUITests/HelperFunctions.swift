//
//  HelperFunctions.swift
//  VoiceOverUtilityUITests
//
//  Created by Ryan Touvell on 12/12/22.
//

import XCTest
import Foundation

public class HelperFunctions: NSViewController {
    var app = ViewVariablePage().app
    
    func click(elemetToClick: XCUIElement? = nil) {
        elemetToClick?.click()
    }
    
    func elementSelected(elemetToClick: XCUIElement) -> Bool {
        return elemetToClick.isSelected
    }
}
