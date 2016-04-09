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
    func createTopTwoSymbolRandom(){
        value = Int(arc4random_uniform(3) + 1)
        switch value {
        case 1: topTwoSymbol = 1
        case 2: topTwoSymbol = 2
        case 3: topTwoSymbol = 3
        default: topTwoSymbol = 10
        }
    }
    
    // BACKGROUND
    func createTopTwoColorRandom(){
        value = Int(arc4random_uniform(4) + 1)
        switch value {
        case 1: topTwoColorBackground = 1
        case 2: topTwoColorBackground = 2
        case 3: topTwoColorBackground = 3
        case 4: topTwoColorBackground = 4
        default: topTwoColorBackground = 10
        }
    }
    
    // IMAGE
    func updateTopTwoImage(){
        if topTwoSymbol == 1 {
            caneN2.hidden = false
            candyN2.hidden = true
            popN2.hidden = true
        }
        if topTwoSymbol == 2 {
            caneN2.hidden = true
            candyN2.hidden = false
            popN2.hidden = true
        }
        if topTwoSymbol == 3 {
            caneN2.hidden = true
            candyN2.hidden = true
            popN2.hidden = false
        }
    }
    
    
    
    

}
