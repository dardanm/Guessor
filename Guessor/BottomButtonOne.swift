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
    func createBottomButtonRandomSymbolNumOne(){
        value = Int(arc4random_uniform(4) + 1)
        switch value {
        case 1: bottomButtonSymbolOne = 1
        case 2: bottomButtonSymbolOne = 2
        case 3: bottomButtonSymbolOne = 3
        case 4: bottomButtonSymbolOne = 4
        default: bottomButtonSymbolOne = 10
        }
    }
    
    // BACKGROUND
    func createBottomButtonRandomColorNumOne(){
        value = Int(arc4random_uniform(4) + 1)
        switch value {
        case 1: bottomButtonBackgroundColorOne = 1
        case 2: bottomButtonBackgroundColorOne = 2
        case 3: bottomButtonBackgroundColorOne = 3
        case 4: bottomButtonBackgroundColorOne = 4
        default: bottomButtonBackgroundColorOne = 10
        }
    }
    
    // IMAGE
    func updateBottomButtonImageNumOne(){
        if bottomButtonSymbolOne == 1 {
            caneB1.hidden = false
            candyB1.hidden = true
            popB1.hidden = true
        }
        if bottomButtonSymbolOne == 2 {
            caneB1.hidden = true
            candyB1.hidden = false
            popB1.hidden = true
        }
        if bottomButtonSymbolOne == 3 {
            caneB1.hidden = true
            candyB1.hidden = true
            popB1.hidden = false
        }
    }
    

}
