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
    func createTopOneSymbolRandom(){
        value = Int(arc4random_uniform(4) + 1)
        switch value {
        case 1: topOneSymbol = 1
        case 2: topOneSymbol = 2
        case 3: topOneSymbol = 3
        case 4: topOneSymbol = 4
        default: topOneSymbol = 10
        }
    }
    
    // BACKGROUND
    func createTopOneColorRandom(){
        value = Int(arc4random_uniform(4) + 1)
        switch value {
        case 1: topOneColorBackground = 1
        case 2: topOneColorBackground = 2
        case 3: topOneColorBackground = 3
        case 4: topOneColorBackground = 4
        default: topOneColorBackground = 10
        }
    }
    
    // IMAGE
    func updateTopOneImage(){
        if topOneSymbol == 1 {
            caneN1.hidden = false
            candyN1.hidden = true
            popN1.hidden = true
        }
        if topOneSymbol == 2 {
            caneN1.hidden = true
            candyN1.hidden = false
            popN1.hidden = true
        }
        if topOneSymbol == 3 {
            caneN1.hidden = true
            candyN1.hidden = true
            popN1.hidden = false
        }
    }
    
    
    
    

}
