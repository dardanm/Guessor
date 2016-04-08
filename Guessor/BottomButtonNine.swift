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
