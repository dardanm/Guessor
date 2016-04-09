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
    func createTopThreeSymbolRandom(){
        value = Int(arc4random_uniform(4) + 1)
        switch value {
        case 1: topThreeSymbol = 1
        case 2: topThreeSymbol = 2
        case 3: topThreeSymbol = 3
        case 4: topThreeSymbol = 4
        default: topThreeSymbol = 10
        }
    }
    
    // BACKGROUND
    func createTopThreeColorRandom(){
        value = Int(arc4random_uniform(4) + 1)
        switch value {
        case 1: topThreeColorBackground = 1
        case 2: topThreeColorBackground = 2
        case 3: topThreeColorBackground = 3
        case 4: topThreeColorBackground = 4
        default: topThreeColorBackground = 10
        }
    }
    
    // IMAGE
    func updateTopThreeImage(){
        if topThreeSymbol == 1 {
            caneN3.hidden = false
            candyN3.hidden = true
            popN3.hidden = true
        }
        if topThreeSymbol == 2 {
            caneN3.hidden = true
            candyN3.hidden = false
            popN3.hidden = true
        }
        if topThreeSymbol == 3 {
            caneN3.hidden = true
            candyN3.hidden = true
            popN3.hidden = false
        }
    }
    
    
    
    

}
