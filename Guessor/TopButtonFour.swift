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
    func createTopFourSymbolRandom(){
        value = Int(arc4random_uniform(4) + 1)
        switch value {
        case 1: topFourSymbol = 1
        case 2: topFourSymbol = 2
        case 3: topFourSymbol = 3
        case 4: topFourSymbol = 4
        default: topFourSymbol = 10
        }
    }
    
    // BACKGROUND
    func createTopFourColorRandom(){
        value = Int(arc4random_uniform(4) + 1)
        switch value {
        case 1: topFourColorBackground = 1
        case 2: topFourColorBackground = 2
        case 3: topFourColorBackground = 3
        case 4: topFourColorBackground = 4
        default: topFourColorBackground = 10
        }
    }
    
    // IMAGE
    func updateTopFourImage(){
        if topFourSymbol == 1 {
            caneN4.hidden = false
            candyN4.hidden = true
            popN4.hidden = true
        }
        if topFourSymbol == 2 {
            caneN4.hidden = true
            candyN4.hidden = false
            popN4.hidden = true
        }
        if topFourSymbol == 3 {
            caneN4.hidden = true
            candyN4.hidden = true
            popN4.hidden = false
        }
    }
    
    
    
    

}
