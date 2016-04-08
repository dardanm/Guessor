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
    func createBottomButtonRandomSymbolNumFive(){
        value = Int(arc4random_uniform(4) + 1)
        switch value {
        case 1: bottomButtonSymbolFive = 1
        case 2: bottomButtonSymbolFive = 2
        case 3: bottomButtonSymbolFive = 3
        case 4: bottomButtonSymbolFive = 4
        default: bottomButtonSymbolFive = 10
        }
    }
    
    // BACKGROUND
    func createBottomButtonRandomColorNumFive(){
        value = Int(arc4random_uniform(4) + 1)
        switch value {
        case 1: bottomButtonBackgroundColorFive = 1
        case 2: bottomButtonBackgroundColorFive = 2
        case 3: bottomButtonBackgroundColorFive = 3
        case 4: bottomButtonBackgroundColorFive = 4
        default: bottomButtonBackgroundColorFive = 10
        }
    }
    
    // IMAGE
    func updateBottomButtonImageNumFive(){
        if bottomButtonSymbolFive == 1 {
            caneB5.hidden = false
            candyB5.hidden = true
            popB5.hidden = true
        }
        if bottomButtonSymbolFive == 2 {
            caneB5.hidden = true
            candyB5.hidden = false
            popB5.hidden = true
        }
        if bottomButtonSymbolFive == 3 {
            caneB5.hidden = true
            candyB5.hidden = true
            popB5.hidden = false
        }
    }
    
    
}
