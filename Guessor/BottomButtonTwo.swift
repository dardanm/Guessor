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
    func createBottomButtonRandomSymbolNumTwo(){
        value = Int(arc4random_uniform(4) + 1)
        switch value {
        case 1: bottomButtonSymbolTwo = 1
        case 2: bottomButtonSymbolTwo = 2
        case 3: bottomButtonSymbolTwo = 3
        case 4: bottomButtonSymbolTwo = 4
        default: bottomButtonSymbolTwo = 10
        }
    }
    
    // BACKGROUND
    func createBottomButtonRandomColorNumTwo(){
        value = Int(arc4random_uniform(4) + 1)
        switch value {
        case 1: bottomButtonBackgroundColorTwo = 1
        case 2: bottomButtonBackgroundColorTwo = 2
        case 3: bottomButtonBackgroundColorTwo = 3
        case 4: bottomButtonBackgroundColorTwo = 4
        default: bottomButtonBackgroundColorTwo = 10
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
