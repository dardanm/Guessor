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
    func createBottomButtonRandomSymbolNumFour(){
        value = Int(arc4random_uniform(4) + 1)
        switch value {
        case 1: bottomButtonSymbolFour = 1
        case 2: bottomButtonSymbolFour = 2
        case 3: bottomButtonSymbolFour = 3
        case 4: bottomButtonSymbolFour = 4
        default: bottomButtonSymbolFour = 10
        }
    }
    
    // BACKGROUND
    func createBottomButtonRandomColorNumFour(){
        value = Int(arc4random_uniform(4) + 1)
        switch value {
        case 1: bottomButtonBackgroundColorFour = 1
        case 2: bottomButtonBackgroundColorFour = 2
        case 3: bottomButtonBackgroundColorFour = 3
        case 4: bottomButtonBackgroundColorFour = 4
        default: bottomButtonBackgroundColorFour = 10
        }
    }
    
    // IMAGE
    func updateBottomButtonImageNumFour(){
        if bottomButtonSymbolFour == 1 {
            caneB4.hidden = false
            candyB4.hidden = true
            popB4.hidden = true
        }
        if bottomButtonSymbolFour == 2 {
            caneB4.hidden = true
            candyB4.hidden = false
            popB4.hidden = true
        }
        if bottomButtonSymbolFour == 3 {
            caneB4.hidden = true
            candyB4.hidden = true
            popB4.hidden = false
        }
    }
    
    
}
