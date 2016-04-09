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
    func createBottomButtonRandomSymbolNumFour(){
        value = Int(arc4random_uniform(4) + 1)
        switch value {
        case 1: botFourSymbol = 1
        case 2: botFourSymbol = 2
        case 3: botFourSymbol = 3
        case 4: botFourSymbol = 4
        default: botFourSymbol = 10
        }
    }
    
    // BACKGROUND
    func createBottomButtonRandomColorNumFour(){
        value = Int(arc4random_uniform(4) + 1)
        switch value {
        case 1: botFourColorBackground = 1
        case 2: botFourColorBackground = 2
        case 3: botFourColorBackground = 3
        case 4: botFourColorBackground = 4
        default: botFourColorBackground = 10
        }
    }
    
    // IMAGE
    func updateBottomButtonImageNumFour(){
        if botFourSymbol == 1 {
            caneB4.hidden = false
            candyB4.hidden = true
            popB4.hidden = true
        }
        if botFourSymbol == 2 {
            caneB4.hidden = true
            candyB4.hidden = false
            popB4.hidden = true
        }
        if botFourSymbol == 3 {
            caneB4.hidden = true
            candyB4.hidden = true
            popB4.hidden = false
        }
    }
    
    
}
