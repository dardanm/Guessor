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
