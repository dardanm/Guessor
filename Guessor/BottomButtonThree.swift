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
    func createBotThreeSymbolRandom(){
        value = Int(arc4random_uniform(4) + 1)
        switch value {
        case 1: botThreeSymbol = 1
        case 2: botThreeSymbol = 2
        case 3: botThreeSymbol = 3
        case 4: botThreeSymbol = 4
        default: botThreeSymbol = 10
        }
    }
    
    // BACKGROUND
    func createBotThreeColorRandom(){
        value = Int(arc4random_uniform(4) + 1)
        switch value {
        case 1: botThreeColorBackground = 1
        case 2: botThreeColorBackground = 2
        case 3: botThreeColorBackground = 3
        case 4: botThreeColorBackground = 4
        default: botThreeColorBackground = 10
        }
    }
    
    // IMAGE
    func updateBotThreeImage(){
        if botThreeSymbol == 1 {
            caneB3.hidden = false
            candyB3.hidden = true
            popB3.hidden = true
        }
        if botThreeSymbol == 2 {
            caneB3.hidden = true
            candyB3.hidden = false
            popB3.hidden = true
        }
        if botThreeSymbol == 3 {
            caneB3.hidden = true
            candyB3.hidden = true
            popB3.hidden = false
        }
    }
    
    
}
