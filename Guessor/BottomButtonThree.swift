//
//  BottomNumberButton.swift
//  Guessor
//
//  Created by Dardan on 4/8/16.
//  Copyright © 2016 Meha. All rights reserved.
//

import UIKit
import AVFoundation
import QuartzCore

extension BaseLevel {
    
    // SYMBOL
    func createBottomButtonRandomSymbolNumThree(){
        value = Int(arc4random_uniform(4) + 1)
        switch value {
        case 1: bottomButtonSymbolThree = 1
        case 2: bottomButtonSymbolThree = 2
        case 3: bottomButtonSymbolThree = 3
        case 4: bottomButtonSymbolThree = 4
        default: bottomButtonSymbolThree = 10
        }
    }
    
    // BACKGROUND
    func createBottomButtonRandomColorNumThree(){
        value = Int(arc4random_uniform(4) + 1)
        switch value {
        case 1: bottomButtonBackgroundColorThree = 1
        case 2: bottomButtonBackgroundColorThree = 2
        case 3: bottomButtonBackgroundColorThree = 3
        case 4: bottomButtonBackgroundColorThree = 4
        default: bottomButtonBackgroundColorThree = 10
        }
    }
    
    // IMAGE
    func updateBottomButtonImageNumThree(){
        if bottomButtonSymbolThree == 1 {
            caneB3.hidden = false
            candyB3.hidden = true
            popB3.hidden = true
        }
        if bottomButtonSymbolThree == 2 {
            caneB3.hidden = true
            candyB3.hidden = false
            popB3.hidden = true
        }
        if bottomButtonSymbolThree == 3 {
            caneB3.hidden = true
            candyB3.hidden = true
            popB3.hidden = false
        }
    }
    
    
}
