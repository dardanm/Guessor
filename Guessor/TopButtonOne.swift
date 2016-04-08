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
    func createTopButtonRandomSymbolNumOne(){
        value = Int(arc4random_uniform(4) + 1)
        switch value {
        case 1: topButtonSymbolOne = 1
        case 2: topButtonSymbolOne = 2
        case 3: topButtonSymbolOne = 3
        case 4: topButtonSymbolOne = 4
        default: topButtonSymbolOne = 10
        }
    }
    
    // BACKGROUND
    func createTopButtonRandomColorNumOne(){
        value = Int(arc4random_uniform(4) + 1)
        switch value {
        case 1: topButtonBackgroundColorOne = 1
        case 2: topButtonBackgroundColorOne = 2
        case 3: topButtonBackgroundColorOne = 3
        case 4: topButtonBackgroundColorOne = 4
        default: topButtonBackgroundColorOne = 10
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
