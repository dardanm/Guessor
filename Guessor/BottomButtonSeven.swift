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
    func createBotSevenSymbolRandom(){
        value = Int(arc4random_uniform(4) + 1)
        switch value {
        case 1: botSevenSymbol = 1
        case 2: botSevenSymbol = 2
        case 3: botSevenSymbol = 3
        case 4: botSevenSymbol = 4
        default: botSevenSymbol = 10
        }
    }
    
    // BACKGROUND
    func createBotSevenColorRandom(){
        value = Int(arc4random_uniform(4) + 1)
        switch value {
        case 1: botSevenColorBackground = 1
        case 2: botSevenColorBackground = 2
        case 3: botSevenColorBackground = 3
        case 4: botSevenColorBackground = 4
        default: botSevenColorBackground = 10
        }
    }
    
    // IMAGE
    func updateBotSevenImage(){
        if botSevenSymbol == 1 {
            caneB7.hidden = false
            candyB7.hidden = true
            popB7.hidden = true
        }
        if botSevenSymbol == 2 {
            caneB7.hidden = true
            candyB7.hidden = false
            popB7.hidden = true
        }
        if botSevenSymbol == 3 {
            caneB7.hidden = true
            candyB7.hidden = true
            popB7.hidden = false
        }
    }
    
    
}
