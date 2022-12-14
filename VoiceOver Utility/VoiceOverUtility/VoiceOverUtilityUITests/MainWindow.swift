//
//  MainWindow.swift
//  VoiceOverUtilityUITests
//
//  Created by Ryan Touvell on 12/11/22.
//

import XCTest
import Foundation

public class MainWindow: NSViewController {
    var app = ViewVariablePage().app
    static let reset = "Reset"
    
    struct voiceOverModifierLabels {
        static let controlOptionAndCaps = "⌃⌥ or ⇪"
        static let capsLock = "⇪  Caps Lock"
        static let caps = "⇪"
    }

    var generalTabButton: XCUIElement { app.tableRows.cells.containing(.staticText, identifier: MenuBar.viewMenuLabels.general).firstMatch }
    var verbosityTabButton: XCUIElement { app.tableRows.cells.containing(.staticText, identifier: MenuBar.viewMenuLabels.verbosity).firstMatch }
    var speechTabButton: XCUIElement { app.tableRows.cells.containing(.staticText, identifier: MenuBar.viewMenuLabels.speech).firstMatch }
    var navigationTabButton: XCUIElement { app.tableRows.cells.containing(.staticText, identifier: MenuBar.viewMenuLabels.navigation).firstMatch }
    var webTabButton: XCUIElement { app.tableRows.cells.containing(.staticText, identifier: MenuBar.viewMenuLabels.web).firstMatch }
    var soundTabButton: XCUIElement { app.tableRows.cells.containing(.staticText, identifier: MenuBar.viewMenuLabels.sound).firstMatch }
    var visualsTabButton: XCUIElement { app.tableRows.cells.containing(.staticText, identifier: MenuBar.viewMenuLabels.visuals).firstMatch }
    var commandersTabButton: XCUIElement { app.tableRows.cells.containing(.staticText, identifier: MenuBar.viewMenuLabels.commanders).firstMatch }
    var brailleTabButton: XCUIElement { app.tableRows.cells.containing(.staticText, identifier: MenuBar.viewMenuLabels.braille).firstMatch }
    var activitiesTabButton: XCUIElement { app.tableRows.cells.containing(.staticText, identifier: MenuBar.viewMenuLabels.activities).firstMatch }
    var voiceOverRecognitionTabButton: XCUIElement { app.tableRows.cells.containing(.staticText, identifier: MenuBar.viewMenuLabels.voiceOverRecognition).firstMatch }
    var voiceOverModifierControlOptionAndCaps: XCUIElement { app.popUpButtons.containing(.popUpButton, identifier: voiceOverModifierLabels.controlOptionAndCaps).firstMatch }
    var voiceOverModifierCaps: XCUIElement { app.popUpButtons.containing(.popUpButton, identifier: voiceOverModifierLabels.caps).firstMatch }
    var voiceOverModifierCapsPopUpButton: XCUIElement { app.popUpButtons.menus.menuItems.matching(.menuItem, identifier: voiceOverModifierLabels.capsLock).firstMatch }
    var resetBasicSheetButton: XCUIElement { app.sheets.buttons.matching(identifier: MainWindow.reset).firstMatch }
}
