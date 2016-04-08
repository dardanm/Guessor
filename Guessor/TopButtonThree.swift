//
//  ButtonOne.swift
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
    func createTopButtonRandomSymbolNumThree(){
        value = Int(arc4random_uniform(4) + 1)
        switch value {
        case 1: topButtonSymbolThree = 1
        case 2: topButtonSymbolThree = 2
        case 3: topButtonSymbolThree = 3
        case 4: topButtonSymbolThree = 4
        default: topButtonSymbolThree = 10
        }
    }
    
    // BACKGROUND
    func createTopButtonRandomColorNumThree(){
        value = Int(arc4random_uniform(4) + 1)
        switch value {
        case 1: topButtonBackgroundColorThree = 1
        case 2: topButtonBackgroundColorThree = 2
        case 3: topButtonBackgroundColorThree = 3
        case 4: topButtonBackgroundColorThree = 4
        default: topButtonBackgroundColorThree = 10
        }
    }
    
    // IMAGE
    func updateTopButtonImageNumOne(){
        if topButtonSymbolThree == 1 {
            caneN3.hidden = false
            candyN3.hidden = true
            popN3.hidden = true
        }
        if topButtonSymbolThree == 2 {
            caneN3.hidden = true
            candyN3.hidden = false
            popN3.hidden = true
        }
        if topButtonSymbolThree == 3 {
            caneN3.hidden = true
            candyN3.hidden = true
            popN3.hidden = false
        }
    }
    
    
    
    

}
