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
    func createBotOneSymbolRandom(){
        value = Int(arc4random_uniform(4) + 1)
        switch value {
        case 1: botOneSymbol = 1
        case 2: botOneSymbol = 2
        case 3: botOneSymbol = 3
        case 4: botOneSymbol = 4
        default: botOneSymbol = 10
        }
    }
    
    // BACKGROUND
    func createBotOneColorRandom(){
        value = Int(arc4random_uniform(4) + 1)
        switch value {
        case 1: botOneColorBackground = 1
        case 2: botOneColorBackground = 2
        case 3: botOneColorBackground = 3
        case 4: botOneColorBackground = 4
        default: botOneColorBackground = 10
        }
    }
    
    // IMAGE
    func updateBotOneImage(){
        if botOneSymbol == 1 {
            caneB1.hidden = false
            candyB1.hidden = true
            popB1.hidden = true
        }
        if botOneSymbol == 2 {
            caneB1.hidden = true
            candyB1.hidden = false
            popB1.hidden = true
        }
        if botOneSymbol == 3 {
            caneB1.hidden = true
            candyB1.hidden = true
            popB1.hidden = false
        }
    }
    

}
