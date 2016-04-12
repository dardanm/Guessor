//
//  TopButton.swift
//  Guessor
//
//  Created by Dardan on 4/12/16.
//  Copyright © 2016 Meha. All rights reserved.
//

import Foundation
import UIKit
import AVFoundation
import QuartzCore

class GenerateButton : BaseLevel {
    
    var symb:Int = 0
    var back:Int = 0
    var labelcolor:UILabel?
    
    var cane: UIImageView?
    var candy: UIImageView?
    var pop: UIImageView?
    var label: UILabel?
    

    
    
    // Update top button image
    func randomImage(cane:UIImageView, candy:UIImageView, pop:UIImageView){
        value = Int(arc4random_uniform(3) + 1)
        switch value {
        case 1: symb = 1
        case 2: symb = 2
        case 3: symb = 3
        default: symb = 10
        }
        if symb == 1 {
            cane.hidden = false
            candy.hidden = true
            pop.hidden = true
        }
        if symb == 2 {
            cane.hidden = true
            candy.hidden = false
            pop.hidden = true
        }
        if symb == 3 {
            cane.hidden = true
            candy.hidden = true
            pop.hidden = false
        }
    }
    
    // BACKGROUND IMAGE
    func updateTopOneColorBackground(labelcolor:UILabel){
        value = Int(arc4random_uniform(4) + 1)
        switch value {
        case 1: back = 1
        case 2: back = 2
        case 3: back = 3
        case 4: back = 4
        default: back = 10
        }
        if back == 1 {
            labelcolor.backgroundColor = UIColor(netHex: 0x99e1c3)
        }
        if back == 2 {
            labelcolor.backgroundColor = UIColor(netHex: 0xf7b220)
        }
        if back == 3 {
            labelcolor.backgroundColor = UIColor(netHex: 0xf77c2c)
        }
        if back == 4 {
            labelcolor.backgroundColor = UIColor(netHex: 0xa7cfff)
        }
        print("back \(back)")
    }
    
    func compareButtonsDown(buttonToCompare:GenerateButton, topButOne:GenerateButton, topButTwo:GenerateButton, topButThree:GenerateButton, topButFour:GenerateButton){
        var temp:Bool = false
        
        // make into function
        if runOrNot == 4{
            if buttonToCompare.labelcolor == topButOne.labelcolor && buttonToCompare.symb == topButOne.symb{
                temp = true
                scoreKeep += 1
                correctAnswer()
                // green color button - correct coice
                setTopOneGreenBackground()
                setBotOneGreenBackground()
            } else{
                temp = false
            }
        }
        
        print(temp)
        print(runOrNot)
    }

    func compareButtonsRelease(buttonToCompare:GenerateButton, topButOne:GenerateButton, topButTwo:GenerateButton, topButThree:GenerateButton, topButFour:GenerateButton){
        var temp:Bool = false
        
        // make into function
        if buttonToCompare.labelcolor == topButOne.labelcolor && buttonToCompare.symb == topButOne.symb{
            temp = true
            runOrNot -= 1
        }
        
        print(temp)
        print(runOrNot)
    }
    
 
    
}

