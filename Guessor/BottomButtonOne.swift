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
