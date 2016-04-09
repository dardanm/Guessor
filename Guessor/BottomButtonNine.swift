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
    func createBottomButtonRandomSymbolNumNine(){
        value = Int(arc4random_uniform(4) + 1)
        switch value {
        case 1: botNineSymbol = 1
        case 2: botNineSymbol = 2
        case 3: botNineSymbol = 3
        case 4: botNineSymbol = 4
        default: botNineSymbol = 10
        }
    }
    
    // BACKGROUND
    func createBottomButtonRandomColorNumNine(){
        value = Int(arc4random_uniform(4) + 1)
        switch value {
        case 1: botNineColorBackground = 1
        case 2: botNineColorBackground = 2
        case 3: botNineColorBackground = 3
        case 4: botNineColorBackground = 4
        default: botNineColorBackground = 10
        }
    }
    
    // IMAGE
    func updateBottomButtonImageNumNine(){
        if botNineSymbol == 1 {
            caneB9.hidden = false
            candyB9.hidden = true
            popB9.hidden = true
        }
        if botNineSymbol == 2 {
            caneB9.hidden = true
            candyB9.hidden = false
            popB9.hidden = true
        }
        if botNineSymbol == 3 {
            caneB9.hidden = true
            candyB9.hidden = true
            popB9.hidden = false
        }
    }
    
    
}
