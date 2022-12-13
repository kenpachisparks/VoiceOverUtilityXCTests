//
//  VoiceOverUtilityUITests.swift
//  VoiceOverUtilityUITests
//
//  Created by Ryan Touvell on 12/11/22.
//

import XCTest

class VoiceOverUtilityUITests: XCTestSetup {

    override func setUp() {
        app.launch()
    }

    func testDefaultAppLaunchFromSideBar() throws {
        XCTContext.runActivity(named: "Running testDefaultAppLaunchFromSideBar") { _ in
            XCTAssertTrue(helperFunctions.elementSelected(elemetToClick: mainWindow.generalTabButton), "General Is not Selected")
        }
    }
    
    func testSelectVerbosityFromSideBar() throws {
        XCTContext.runActivity(named: "Running testSelectVerbosityFromSideBar") { _ in
            helperFunctions.click(elemetToClick: mainWindow.verbosityTabButton)
            XCTAssertTrue(helperFunctions.elementSelected(elemetToClick: mainWindow.verbosityTabButton), "Verbosity Is not Selected")
        }
    }
    
    func testSelectSpeechFromSideBar() throws {
        XCTContext.runActivity(named: "Running testSelectSpeechFromSideBar") { _ in
            helperFunctions.click(elemetToClick: mainWindow.speechTabButton)
            XCTAssertTrue(helperFunctions.elementSelected(elemetToClick: mainWindow.speechTabButton), "Speed Is not Selected")
        }
    }
    
    func testSelectNavigationFromSideBar() throws {
        XCTContext.runActivity(named: "Running testSelectNavigationFromSideBar") { _ in
            helperFunctions.click(elemetToClick: mainWindow.navigationTabButton)
            XCTAssertTrue(helperFunctions.elementSelected(elemetToClick: mainWindow.navigationTabButton), "Navigation Is not Selected")
        }
    }
    
    func testSelectWebFromSideBar() throws {
        XCTContext.runActivity(named: "Running testSelectWebFromSideBar") { _ in
            helperFunctions.click(elemetToClick: mainWindow.webTabButton)
            XCTAssertTrue(helperFunctions.elementSelected(elemetToClick: mainWindow.webTabButton), "Web Is not Selected")
        }
    }
    
    func testSelectSoundFromSideBar() throws {
        XCTContext.runActivity(named: "Running testSelectSoundFromSideBar") { _ in
            helperFunctions.click(elemetToClick: mainWindow.soundTabButton)
            XCTAssertTrue(helperFunctions.elementSelected(elemetToClick: mainWindow.soundTabButton), "Sound Is not Selected")
        }
    }
    
    func testSelectVisualsFromSideBar() throws {
        XCTContext.runActivity(named: "Running testSelectVisualsFromSideBar") { _ in
            helperFunctions.click(elemetToClick: mainWindow.visualsTabButton)
            XCTAssertTrue(helperFunctions.elementSelected(elemetToClick: mainWindow.visualsTabButton), "Visuals Is not Selected")
        }
    }
    
    func testSelectCommandersFromSideBar() throws {
        XCTContext.runActivity(named: "Running testSelectCommandersFromSideBar") { _ in
            helperFunctions.click(elemetToClick: mainWindow.commandersTabButton)
            XCTAssertTrue(helperFunctions.elementSelected(elemetToClick: mainWindow.commandersTabButton), "Commanders Is not Selected")
        }
    }
    
    func testSelectBrailleFromSideBar() throws {
        XCTContext.runActivity(named: "Running testSelectBrailleFromSideBar") { _ in
            helperFunctions.click(elemetToClick: mainWindow.brailleTabButton)
            XCTAssertTrue(helperFunctions.elementSelected(elemetToClick: mainWindow.brailleTabButton), "Braille Is not Selected")
        }
    }
    
    func testSelectActivitiesFromSideBar() throws {
        XCTContext.runActivity(named: "Running testSelectActivitiesFromSideBar") { _ in
            helperFunctions.click(elemetToClick: mainWindow.activitiesTabButton)
            XCTAssertTrue(helperFunctions.elementSelected(elemetToClick: mainWindow.activitiesTabButton), "Activities Is not Selected")
        }
    }
    
    func testSelectVoiceOverRecognitionFromSideBar() throws {
        XCTContext.runActivity(named: "Running testSelectVoiceOverRecognitionFromSideBar") { _ in
            helperFunctions.click(elemetToClick: mainWindow.voiceOverRecognitionTabButton)
            XCTAssertTrue(helperFunctions.elementSelected(elemetToClick: mainWindow.voiceOverRecognitionTabButton), "VoiceOver Recognition Is not Selected")
        }
    }
    
    func testGeneralSelectionFromViewMenu() throws {
            XCTContext.runActivity(named: "Running testDefaultAppLaunchFromViewMenu") { _ in
                helperFunctions.click(elemetToClick: mainWindow.verbosityTabButton)
                helperFunctions.click(elemetToClick: menuBar.generalMenuItemButton)
                XCTAssertTrue(helperFunctions.elementSelected(elemetToClick: mainWindow.generalTabButton), "General Is not Selected")
            }
    }
        
    func testSelectVerbosityFromViewMenu() throws {
            XCTContext.runActivity(named: "Running testSelectVerbosityFromViewMenu") { _ in
                helperFunctions.click(elemetToClick: menuBar.verbosityMenuItemButton)
                XCTAssertTrue(helperFunctions.elementSelected(elemetToClick: mainWindow.verbosityTabButton), "Verbosity Is not Selected")
            }
    }
        
    func testSelectSpeechFromViewMenu() throws {
            XCTContext.runActivity(named: "Running testSelectSpeechFromViewMenu") { _ in
                helperFunctions.click(elemetToClick: menuBar.speechMenuItemButton)
                XCTAssertTrue(helperFunctions.elementSelected(elemetToClick: mainWindow.speechTabButton), "Speech Is not Selected")
            }
    }
        
    func testSelectNavigationFromViewMenu() throws {
            XCTContext.runActivity(named: "Running testSelectNavigationFromViewMenu") { _ in
                helperFunctions.click(elemetToClick: menuBar.navigationMenuItemButton)
                XCTAssertTrue(helperFunctions.elementSelected(elemetToClick: mainWindow.navigationTabButton), "Navigation Is not Selected")
            }
    }
        
    func testSelectWebFromViewMenu() throws {
            XCTContext.runActivity(named: "Running testSelectWebFromViewMenu") { _ in
                helperFunctions.click(elemetToClick: menuBar.webMenuItemButton)
                XCTAssertTrue(helperFunctions.elementSelected(elemetToClick: mainWindow.webTabButton), "Web Is not Selected")
            }
    }
        
    func testSelectSoundFromViewMenu() throws {
            XCTContext.runActivity(named: "Running testSelectSoundFromViewMenu") { _ in
                helperFunctions.click(elemetToClick: menuBar.soundMenuItemButton)
                XCTAssertTrue(helperFunctions.elementSelected(elemetToClick: mainWindow.soundTabButton), "Sound Is not Selected")
            }
    }
        
    func testSelectVisualsFromViewMenu() throws {
            XCTContext.runActivity(named: "Running testSelectVisualsFromViewMenu") { _ in
                helperFunctions.click(elemetToClick: menuBar.visualsMenuItemButton)
                XCTAssertTrue(helperFunctions.elementSelected(elemetToClick: mainWindow.visualsTabButton), "Visuals Is not Selected")
            }
    }
        
    func testSelectCommandersFromViewMenu() throws {
            XCTContext.runActivity(named: "Running testSelectCommandersFromViewMenu") { _ in
                helperFunctions.click(elemetToClick: menuBar.commandersMenuItemButton)
                XCTAssertTrue(helperFunctions.elementSelected(elemetToClick: mainWindow.commandersTabButton), "Commanders Is not Selected")
            }
    }
        
    func testSelectBrailleFromViewMenu() throws {
            XCTContext.runActivity(named: "Running testSelectBrailleFromViewMenu") { _ in
                helperFunctions.click(elemetToClick: menuBar.brailleMenuItemButton)
                XCTAssertTrue(helperFunctions.elementSelected(elemetToClick: mainWindow.brailleTabButton), "Braille Is not Selected")
            }
    }
        
    func testSelectActivitiesFromViewMenu() throws {
            XCTContext.runActivity(named: "Running testSelectActivitiesFromViewMenu") { _ in
                helperFunctions.click(elemetToClick: menuBar.viewActivitiesMenuItemButton)
                XCTAssertTrue(helperFunctions.elementSelected(elemetToClick: mainWindow.activitiesTabButton), "Activities Is not Selected")
            }
    }
        
    func testSelectVoiceOverRecognitionFromViewMenu() throws {
            XCTContext.runActivity(named: "Running testSelectVoiceOverRecognitionFromViewMenu") { _ in
                helperFunctions.click(elemetToClick: menuBar.voiceOverRecognitionMenuItemButton)
                XCTAssertTrue(helperFunctions.elementSelected(elemetToClick: mainWindow.voiceOverRecognitionTabButton), "VoiceOverRecognition Is not Selected")
            }
    }
    
    func testBasicReset() throws {
            XCTContext.runActivity(named: "Running testBasicReset") { _ in
                XCTAssertTrue(mainWindow.voiceOverModifierControlOptionAndCaps.exists, "Default Setting for Modifier is changed.")
                helperFunctions.click(elemetToClick: mainWindow.voiceOverModifierControlOptionAndCaps)
                helperFunctions.click(elemetToClick: mainWindow.voiceOverModifierCapsPopUpButton)
                XCTAssertTrue(mainWindow.voiceOverModifierCaps.exists, "Caps is not set to the Modifier.")
                helperFunctions.click(elemetToClick: menuBar.resestBasicVoiceOverPreferencesItemButton)
                helperFunctions.click(elemetToClick: mainWindow.resetBasicSheetButton)
                XCTAssertTrue(mainWindow.voiceOverModifierControlOptionAndCaps.exists, "Clicking Reset Basic VoiceOverPreferences failed to reset the setting.")
            }
    }
}
