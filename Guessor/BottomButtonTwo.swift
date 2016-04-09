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
    func createBotTwoSymbolRandom(){
        value = Int(arc4random_uniform(4) + 1)
        switch value {
        case 1: botTwoSymbol = 1
        case 2: botTwoSymbol = 2
        case 3: botTwoSymbol = 3
        case 4: botTwoSymbol = 4
        default: botTwoSymbol = 10
        }
    }
    
    // BACKGROUND
    func createBotTwoColorRandom(){
        value = Int(arc4random_uniform(4) + 1)
        switch value {
        case 1: botTwoColorBackground = 1
        case 2: botTwoColorBackground = 2
        case 3: botTwoColorBackground = 3
        case 4: botTwoColorBackground = 4
        default: botTwoColorBackground = 10
        }
    }
    
    // IMAGE
    func updateBotTwoImage(){
        if botTwoSymbol == 1 {
            caneB2.hidden = false
            candyB2.hidden = true
            popB2.hidden = true
        }
        if botTwoSymbol == 2 {
            caneB2.hidden = true
            candyB2.hidden = false
            popB2.hidden = true
        }
        if botTwoSymbol == 3 {
            caneB2.hidden = true
            candyB2.hidden = true
            popB2.hidden = false
        }
    }
    
    
}
