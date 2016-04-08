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
    func createTopButtonRandomSymbolNumTwo(){
        value = Int(arc4random_uniform(4) + 1)
        switch value {
        case 1: topButtonSymbolTwo = 1
        case 2: topButtonSymbolTwo = 2
        case 3: topButtonSymbolTwo = 3
        case 4: topButtonSymbolTwo = 4
        default: topButtonSymbolTwo = 10
        }
    }
    
    // BACKGROUND
    func createTopButtonRandomColorNumTwo(){
        value = Int(arc4random_uniform(4) + 1)
        switch value {
        case 1: topButtonBackgroundColorTwo = 1
        case 2: topButtonBackgroundColorTwo = 2
        case 3: topButtonBackgroundColorTwo = 3
        case 4: topButtonBackgroundColorTwo = 4
        default: topButtonBackgroundColorTwo = 10
        }
    }
    
    // IMAGE
    func updateTopButtonImageNumOne(){
        if topButtonSymbolTwo == 1 {
            caneN2.hidden = false
            candyN2.hidden = true
            popN2.hidden = true
        }
        if topButtonSymbolTwo == 2 {
            caneN2.hidden = true
            candyN2.hidden = false
            popN2.hidden = true
        }
        if topButtonSymbolTwo == 3 {
            caneN2.hidden = true
            candyN2.hidden = true
            popN2.hidden = false
        }
    }
    
    
    
    

}
