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
    func createBottomButtonRandomSymbolNumSeven(){
        value = Int(arc4random_uniform(4) + 1)
        switch value {
        case 1: bottomButtonSymbolSeven = 1
        case 2: bottomButtonSymbolSeven = 2
        case 3: bottomButtonSymbolSeven = 3
        case 4: bottomButtonSymbolSeven = 4
        default: bottomButtonSymbolSeven = 10
        }
    }
    
    // BACKGROUND
    func createBottomButtonRandomColorNumSeven(){
        value = Int(arc4random_uniform(4) + 1)
        switch value {
        case 1: bottomButtonBackgroundColorSeven = 1
        case 2: bottomButtonBackgroundColorSeven = 2
        case 3: bottomButtonBackgroundColorSeven = 3
        case 4: bottomButtonBackgroundColorSeven = 4
        default: bottomButtonBackgroundColorSeven = 10
        }
    }
    
    // IMAGE
    func updateBottomButtonImageNumSeven(){
        if bottomButtonSymbolSeven == 1 {
            caneB7.hidden = false
            candyB7.hidden = true
            popB7.hidden = true
        }
        if bottomButtonSymbolSeven == 2 {
            caneB7.hidden = true
            candyB7.hidden = false
            popB7.hidden = true
        }
        if bottomButtonSymbolSeven == 3 {
            caneB7.hidden = true
            candyB7.hidden = true
            popB7.hidden = false
        }
    }
    
    
}
