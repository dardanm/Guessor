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
    func createBotEightSymbolRandom(){
        value = Int(arc4random_uniform(4) + 1)
        switch value {
        case 1: botEightSymbol = 1
        case 2: botEightSymbol = 2
        case 3: botEightSymbol = 3
        case 4: botEightSymbol = 4
        default: botEightSymbol = 10
        }
    }
    
    // BACKGROUND
    func createBotEightColorRandom(){
        value = Int(arc4random_uniform(4) + 1)
        switch value {
        case 1: botEightColorBackground = 1
        case 2: botEightColorBackground = 2
        case 3: botEightColorBackground = 3
        case 4: botEightColorBackground = 4
        default: botEightColorBackground = 10
        }
    }
    
    // IMAGE
    func updateBotEightImage(){
        if botEightSymbol == 1 {
            caneB8.hidden = false
            candyB8.hidden = true
            popB8.hidden = true
        }
        if botEightSymbol == 2 {
            caneB8.hidden = true
            candyB8.hidden = false
            popB8.hidden = true
        }
        if botEightSymbol == 3 {
            caneB8.hidden = true
            candyB8.hidden = true
            popB8.hidden = false
        }
    }
    
    
}
