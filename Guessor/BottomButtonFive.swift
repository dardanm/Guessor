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
    func createBotFiveSymbolRandom(){
        value = Int(arc4random_uniform(4) + 1)
        switch value {
        case 1: botFiveSymbol = 1
        case 2: botFiveSymbol = 2
        case 3: botFiveSymbol = 3
        case 4: botFiveSymbol = 4
        default: botFiveSymbol = 10
        }
    }
    
    // BACKGROUND
    func createBotFiveColorRandom(){
        value = Int(arc4random_uniform(4) + 1)
        switch value {
        case 1: botFiveColorBackground = 1
        case 2: botFiveColorBackground = 2
        case 3: botFiveColorBackground = 3
        case 4: botFiveColorBackground = 4
        default: botFiveColorBackground = 10
        }
    }
    
    // IMAGE
    func updateBotFiveImage(){
        if botFiveSymbol == 1 {
            caneB5.hidden = false
            candyB5.hidden = true
            popB5.hidden = true
        }
        if botFiveSymbol == 2 {
            caneB5.hidden = true
            candyB5.hidden = false
            popB5.hidden = true
        }
        if botFiveSymbol == 3 {
            caneB5.hidden = true
            candyB5.hidden = true
            popB5.hidden = false
        }
    }
    
    
}