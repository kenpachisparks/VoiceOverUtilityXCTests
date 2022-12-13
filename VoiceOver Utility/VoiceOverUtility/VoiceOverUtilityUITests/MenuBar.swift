//
//  MenuBar.swift
//  voiceOverUtilityXCUITestsUITests
//
//  Created by Ryan Touvell on 12/11/22.
//

import XCTest
import Foundation

public class MenuBar: NSViewController {
    var app = ViewVariablePage().app
    
    struct menuLabels {
        static let voiceOverUtility = "VoiceOver Utility"
        static let about = "About VoiceOver Utility"
        static let hideVoiceOverUtility = "Hide VoiceOver Utility"
        static let hideOthers = "Hide Others"
        static let showAll = "Show All"
        static let quitVoiceOverUtility = "Quit VoiceOver Utility"
        static let file = "File"
        static let importPreferences = "Import Preferences…"
        static let exportPreferences = "Export Preferences…"
        static let setUpPortablePreferences = "Set Up Portable Preferences…"
        static let resestBasicVoiceOverPreferences = "Reset Basic VoiceOver Preferences…"
        static let resestCustomVoiceOverPreferences = "Reset Custom VoiceOver Preferences…"
        static let resestAllVoiceOverPreferences = "Reset All VoiceOver Preferences…"
        static let edit = "Edit"
        static let view = "View"
    }
    
    struct resetCustomVoiceOverPreferencesLabels {
        static let activites = "Activities…"
        static let brailleDisplayInputkeys = "Braille Display Input Keys…"
        static let hotSpots = "Hot Spots…"
        static let keyboardCommanderKeys = "Keyboard Commander Keys…"
        static let labels = "Labels…"
        static let numpadCommanderKeys = "Numpad Commander Keys…"
        static let pronuciations = "Pronuciations…"
        static let quickNavCommanderKeys = "Quick Nav Commander Keys…"
        static let trackpadCommanderGestures = "Trackpad Commander Gestures…"
        static let webSpots = "Web Spots…"
    }
    
    struct viewMenuLabels {
        static let general = "General"
        static let verbosity = "Verbosity"
        static let speech = "Speech"
        static let navigation = "Navigation"
        static let web = "Web"
        static let sound = "Sound"
        static let visuals = "Visuals"
        static let commanders = "Commanders"
        static let braille = "Braille"
        static let activities = "Activities"
        static let voiceOverRecognition = "VoiceOver Recognition"
        static let recognition = "Recognition"
    }
    
    var calculatorMenuBarButton: XCUIElement { app.menuBarItems[menuLabels.voiceOverUtility].firstMatch }
    var aboutMenuItemButton: XCUIElement { calculatorMenuBarButton.menuItems[menuLabels.about].firstMatch }
    var hideCalculatorMenuItemButton: XCUIElement { calculatorMenuBarButton.menuItems[menuLabels.hideVoiceOverUtility].firstMatch }
    var hideOthersMenuItemButton: XCUIElement { calculatorMenuBarButton.menuItems[menuLabels.hideOthers].firstMatch }
    var showAllMenuItemButton: XCUIElement { calculatorMenuBarButton.menuItems[menuLabels.showAll].firstMatch }
    var quitCalculatorMenuItemButton: XCUIElement { calculatorMenuBarButton.menuItems[menuLabels.quitVoiceOverUtility].firstMatch }
    var fileMenuBarButton: XCUIElement { app.menuBarItems[menuLabels.file].firstMatch }
    var importPreferencesMenuItemButton: XCUIElement { fileMenuBarButton.menuItems[menuLabels.importPreferences].firstMatch }
    var closeAllMenuItemButton: XCUIElement { fileMenuBarButton.menuItems[menuLabels.exportPreferences].firstMatch }
    var exportPreferencesMenuItemButton: XCUIElement { fileMenuBarButton.menuItems[menuLabels.setUpPortablePreferences].firstMatch }
    var editMenuBarButton: XCUIElement { app.menuBarItems[menuLabels.edit].firstMatch }
    var viewMenuBarButton: XCUIElement { app.menuBarItems[menuLabels.view].firstMatch }
    var resestBasicVoiceOverPreferencesItemButton: XCUIElement { fileMenuBarButton.menuItems[menuLabels.resestBasicVoiceOverPreferences].firstMatch }
    var resestCustomVoiceOverPreferencesMenuItemButton: XCUIElement { fileMenuBarButton.menuItems[menuLabels.resestCustomVoiceOverPreferences].firstMatch }
    var copyMenuItemButton: XCUIElement { editMenuBarButton.menuItems[menuLabels.resestAllVoiceOverPreferences].firstMatch }
    
    var resetActivitiesMenuItemButton: XCUIElement { fileMenuBarButton.menuItems[resetCustomVoiceOverPreferencesLabels.activites].firstMatch }
    var brailleDisplayInputkeysMenuItemButton: XCUIElement { fileMenuBarButton.menuItems[resetCustomVoiceOverPreferencesLabels.brailleDisplayInputkeys].firstMatch }
    var hotSpotsMenuItemButton: XCUIElement { fileMenuBarButton.menuItems[resetCustomVoiceOverPreferencesLabels.hotSpots].firstMatch }
    var keyboardCommanderKeysMenuItemButton: XCUIElement { fileMenuBarButton.menuItems[resetCustomVoiceOverPreferencesLabels.keyboardCommanderKeys].firstMatch }
    var labelsMenuItemButton: XCUIElement { fileMenuBarButton.menuItems[resetCustomVoiceOverPreferencesLabels.labels].firstMatch }
    var numpadCommanderKeysMenuItemButton: XCUIElement { fileMenuBarButton.menuItems[resetCustomVoiceOverPreferencesLabels.numpadCommanderKeys].firstMatch }
    var pronuciationsMenuItemButton: XCUIElement { fileMenuBarButton.menuItems[resetCustomVoiceOverPreferencesLabels.pronuciations].firstMatch }
    var quickNavCommanderKeysMenuItemButton: XCUIElement { fileMenuBarButton.menuItems[resetCustomVoiceOverPreferencesLabels.quickNavCommanderKeys].firstMatch }
    var webSpotsMenuItemButton: XCUIElement { fileMenuBarButton.menuItems[resetCustomVoiceOverPreferencesLabels.webSpots].firstMatch }
    
    var generalMenuItemButton: XCUIElement { viewMenuBarButton.menuItems[viewMenuLabels.general].firstMatch }
    var verbosityMenuItemButton: XCUIElement { viewMenuBarButton.menuItems[viewMenuLabels.verbosity].firstMatch }
    var speechMenuItemButton: XCUIElement { viewMenuBarButton.menuItems[viewMenuLabels.speech].firstMatch }
    var navigationMenuItemButton: XCUIElement { viewMenuBarButton.menuItems[viewMenuLabels.navigation].firstMatch }
    var webMenuItemButton: XCUIElement { viewMenuBarButton.menuItems[viewMenuLabels.web].firstMatch }
    var soundMenuItemButton: XCUIElement { viewMenuBarButton.menuItems[viewMenuLabels.sound].firstMatch }
    var visualsMenuItemButton: XCUIElement { viewMenuBarButton.menuItems[viewMenuLabels.visuals].firstMatch }
    var commandersMenuItemButton: XCUIElement { viewMenuBarButton.menuItems[viewMenuLabels.commanders].firstMatch }
    var brailleMenuItemButton: XCUIElement { viewMenuBarButton.menuItems[viewMenuLabels.braille].firstMatch }
    var viewActivitiesMenuItemButton: XCUIElement { viewMenuBarButton.menuItems[viewMenuLabels.activities].firstMatch }
    var voiceOverRecognitionMenuItemButton: XCUIElement { viewMenuBarButton.menuItems[viewMenuLabels.recognition].firstMatch }
    
    func enableMenuItem (_ description: String, menuItem: XCUIElement) {
        XCTContext.runActivity(named: description) { _ in
                menuItem.click()
        }
    }
}
