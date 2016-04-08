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
    func createBottomButtonRandomSymbolNumNine(){
        value = Int(arc4random_uniform(4) + 1)
        switch value {
        case 1: bottomButtonSymbolNine = 1
        case 2: bottomButtonSymbolNine = 2
        case 3: bottomButtonSymbolNine = 3
        case 4: bottomButtonSymbolNine = 4
        default: bottomButtonSymbolNine = 10
        }
    }
    
    // BACKGROUND
    func createBottomButtonRandomColorNumNine(){
        value = Int(arc4random_uniform(4) + 1)
        switch value {
        case 1: bottomButtonBackgroundColorNine = 1
        case 2: bottomButtonBackgroundColorNine = 2
        case 3: bottomButtonBackgroundColorNine = 3
        case 4: bottomButtonBackgroundColorNine = 4
        default: bottomButtonBackgroundColorNine = 10
        }
    }
    
    // IMAGE
    func updateBottomButtonImageNumNine(){
        if bottomButtonSymbolNine == 1 {
            caneB9.hidden = false
            candyB9.hidden = true
            popB9.hidden = true
        }
        if bottomButtonSymbolNine == 2 {
            caneB9.hidden = true
            candyB9.hidden = false
            popB9.hidden = true
        }
        if bottomButtonSymbolNine == 3 {
            caneB9.hidden = true
            candyB9.hidden = true
            popB9.hidden = false
        }
    }
    
    
}
