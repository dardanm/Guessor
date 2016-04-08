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
    func createBottomButtonRandomSymbolNumEight(){
        value = Int(arc4random_uniform(4) + 1)
        switch value {
        case 1: bottomButtonSymbolEight = 1
        case 2: bottomButtonSymbolEight = 2
        case 3: bottomButtonSymbolEight = 3
        case 4: bottomButtonSymbolEight = 4
        default: bottomButtonSymbolEight = 10
        }
    }
    
    // BACKGROUND
    func createBottomButtonRandomColorNumEight(){
        value = Int(arc4random_uniform(4) + 1)
        switch value {
        case 1: bottomButtonBackgroundColorEight = 1
        case 2: bottomButtonBackgroundColorEight = 2
        case 3: bottomButtonBackgroundColorEight = 3
        case 4: bottomButtonBackgroundColorEight = 4
        default: bottomButtonBackgroundColorEight = 10
        }
    }
    
    // IMAGE
    func updateBottomButtonImageNumEight(){
        if bottomButtonSymbolEight == 1 {
            caneB8.hidden = false
            candyB8.hidden = true
            popB8.hidden = true
        }
        if bottomButtonSymbolEight == 2 {
            caneB8.hidden = true
            candyB8.hidden = false
            popB8.hidden = true
        }
        if bottomButtonSymbolEight == 3 {
            caneB8.hidden = true
            candyB8.hidden = true
            popB8.hidden = false
        }
    }
    
    
}
