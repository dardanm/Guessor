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
    func createTopButtonRandomSymbolNumFour(){
        value = Int(arc4random_uniform(4) + 1)
        switch value {
        case 1: topButtonSymbolFour = 1
        case 2: topButtonSymbolFour = 2
        case 3: topButtonSymbolFour = 3
        case 4: topButtonSymbolFour = 4
        default: topButtonSymbolFour = 10
        }
    }
    
    // BACKGROUND
    func createTopButtonRandomColorNumFour(){
        value = Int(arc4random_uniform(4) + 1)
        switch value {
        case 1: topButtonBackgroundColorFour = 1
        case 2: topButtonBackgroundColorFour = 2
        case 3: topButtonBackgroundColorFour = 3
        case 4: topButtonBackgroundColorFour = 4
        default: topButtonBackgroundColorFour = 10
        }
    }
    
    // IMAGE
    func updateTopButtonImageNumOne(){
        if topButtonSymbolFour == 1 {
            caneN4.hidden = false
            candyN4.hidden = true
            popN4.hidden = true
        }
        if topButtonSymbolFour == 2 {
            caneN4.hidden = true
            candyN4.hidden = false
            popN4.hidden = true
        }
        if topButtonSymbolFour == 3 {
            caneN4.hidden = true
            candyN4.hidden = true
            popN4.hidden = false
        }
    }
    
    
    
    

}
