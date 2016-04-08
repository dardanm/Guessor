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
    func updateTopButtonImageNumOne(){
        if topButtonSymbolOne == 1 {
            caneN1.hidden = false
            candyN1.hidden = true
            popN1.hidden = true
        }
        if topButtonSymbolOne == 2 {
            caneN1.hidden = true
            candyN1.hidden = false
            popN1.hidden = true
        }
        if topButtonSymbolOne == 3 {
            caneN1.hidden = true
            candyN1.hidden = true
            popN1.hidden = false
        }
    }
    
    
}
