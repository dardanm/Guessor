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
    func createBotSixSymbolRandom(){
        value = Int(arc4random_uniform(4) + 1)
        switch value {
        case 1: botSixSymbol = 1
        case 2: botSixSymbol = 2
        case 3: botSixSymbol = 3
        case 4: botSixSymbol = 4
        default: botSixSymbol = 10
        }
    }
    
    // BACKGROUND
    func createBotSixColorRandom(){
        value = Int(arc4random_uniform(4) + 1)
        switch value {
        case 1: botSixColorBackground = 1
        case 2: botSixColorBackground = 2
        case 3: botSixColorBackground = 3
        case 4: botSixColorBackground = 4
        default: botSixColorBackground = 10
        }
    }
    
    // IMAGE
    func updateBotSixImage(){
        if botSixSymbol == 1 {
            caneB6.hidden = false
            candyB6.hidden = true
            popB6.hidden = true
        }
        if botSixSymbol == 2 {
            caneB6.hidden = true
            candyB6.hidden = false
            popB6.hidden = true
        }
        if botSixSymbol == 3 {
            caneB6.hidden = true
            candyB6.hidden = true
            popB6.hidden = false
        }
    }
    
    
}
