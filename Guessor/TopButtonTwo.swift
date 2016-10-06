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
            caneN2.isHidden = false
            candyN2.isHidden = true
            popN2.isHidden = true
        }
        if topTwoSymbol == 2 {
            caneN2.isHidden = true
            candyN2.isHidden = false
            popN2.isHidden = true
        }
        if topTwoSymbol == 3 {
            caneN2.isHidden = true
            candyN2.isHidden = true
            popN2.isHidden = false
        }
    }
    
    // BACKGROUND IMAGE
    func updateTopTwoColorBackground(){
        if topTwoColorBackground == 1 {
            topTwoLabelColor.backgroundColor = UIColor(netHex: 0x99e1c3)
        }
        if topTwoColorBackground == 2 {
            topTwoLabelColor.backgroundColor = UIColor(netHex: 0xf7b220)
        }
        if topTwoColorBackground == 3 {
            topTwoLabelColor.backgroundColor = UIColor(netHex: 0xf77c2c)
        }
        if topTwoColorBackground == 4 {
            topTwoLabelColor.backgroundColor = UIColor(netHex: 0xa7cfff)
        }
    }
    
    // GREEN BACKGROUND
    func setTopTwoGreenBackground(){
        topTwoGreenColor.isHidden = false
    }
    func removeTopTwoGreenBackground(){
        topTwoGreenColor.isHidden = true
    }
    // RED BACKGROUND
    func setTopTwoRedBackground(){
        topTwoRedColor.isHidden = false
    }
    func removeTopTwoRedBackground(){
        topTwoRedColor.isHidden = true
    }

}
