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
    func createBottomButtonRandomSymbolNumSix(){
        value = Int(arc4random_uniform(4) + 1)
        switch value {
        case 1: bottomButtonSymbolSix = 1
        case 2: bottomButtonSymbolSix = 2
        case 3: bottomButtonSymbolSix = 3
        case 4: bottomButtonSymbolSix = 4
        default: bottomButtonSymbolSix = 10
        }
    }
    
    // BACKGROUND
    func createBottomButtonRandomColorNumSix(){
        value = Int(arc4random_uniform(4) + 1)
        switch value {
        case 1: bottomButtonBackgroundColorSix = 1
        case 2: bottomButtonBackgroundColorSix = 2
        case 3: bottomButtonBackgroundColorSix = 3
        case 4: bottomButtonBackgroundColorSix = 4
        default: bottomButtonBackgroundColorSix = 10
        }
    }
    
    // IMAGE
    func updateBottomButtonImageNumSix(){
        if bottomButtonSymbolSix == 1 {
            caneB6.hidden = false
            candyB6.hidden = true
            popB6.hidden = true
        }
        if bottomButtonSymbolSix == 2 {
            caneB6.hidden = true
            candyB6.hidden = false
            popB6.hidden = true
        }
        if bottomButtonSymbolSix == 3 {
            caneB6.hidden = true
            candyB6.hidden = true
            popB6.hidden = false
        }
    }
    
    
}
