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
        value = Int(arc4random_uniform(3) + 1)
        switch value {
        case 1: botSevenSymbol = 1
        case 2: botSevenSymbol = 2
        case 3: botSevenSymbol = 3
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
    
    // BACKGROUND IMAGE
    func updateBotSevenColorBackground(){
        if botSevenColorBackground == 1 {
            botSevenButtonColor.backgroundColor = UIColor(netHex: 0x99e1c3)
        }
        if botSevenColorBackground == 2 {
            botSevenButtonColor.backgroundColor = UIColor(netHex: 0xf7b220)
        }
        if botSevenColorBackground == 3 {
            botSevenButtonColor.backgroundColor = UIColor(netHex: 0xf77c2c)
        }
        if botSevenColorBackground == 4 {
            botSevenButtonColor.backgroundColor = UIColor(netHex: 0xa7cfff)
        }
    }
    
    // BUTTON DOWN PRESS
    func botSevenDownPress(){
        if runOrNot == 4 {
            if botSevenSymbol == topOneSymbol && botSevenColorBackground == topOneColorBackground{
                scoreKeep += 1
                correctAnswer()
                // green color button - correct coice
                topOneLabelColor.backgroundColor = UIColor(netHex: 0x96f10d)
                botSevenButtonColor.backgroundColor = UIColor(netHex: 0x96f10d)
                matchingAnswer = true
            } else {
                // subtract life if incorrect choice is chosen
                lives -= 1
                
                // red color button - incorrect choice
                botSevenButtonColor.backgroundColor = UIColor(netHex: 0xff4f51)
                //                    disableButtons()
                pressButtonWrongSound()
            }
        }
        
        gameFinish()
        
        if runOrNot == 3 {
            if botSevenSymbol == topTwoSymbol && botSevenColorBackground == topTwoColorBackground{
                scoreKeep += 1
                correctAnswer()
                // green color button - correct coice
                topTwoLabelColor.backgroundColor = UIColor(netHex: 0x96f10d)
                botSevenButtonColor.backgroundColor = UIColor(netHex: 0x96f10d)
                matchingAnswer = true
            } else {
                // subtract life if incorrect choice is chosen
                lives -= 1
                
                // red color button - incorrect choice
                botSevenButtonColor.backgroundColor = UIColor(netHex: 0xff4f51)
                pressButtonWrongSound()
            }
        }
        
        gameFinish()
        
        if runOrNot == 2 {
            if botSevenSymbol == topThreeSymbol && botSevenColorBackground == topThreeColorBackground{
                scoreKeep += 1
                correctAnswer()
                // green color button - correct coice
                topThreeLabelColor.backgroundColor = UIColor(netHex: 0x96f10d)
                botSevenButtonColor.backgroundColor = UIColor(netHex: 0x96f10d)
                matchingAnswer = true
            } else {
                // subtract life if incorrect choice is chosen
                lives -= 1
                
                // red color button - incorrect choice
                botSevenButtonColor.backgroundColor = UIColor(netHex: 0xff4f51)
                pressButtonWrongSound()
            }
        }
        
        gameFinish()
        
        if runOrNot == 1 {
            if botSevenSymbol == topFourSymbol && botSevenColorBackground == topFourColorBackground{
                scoreKeep += 1
                correctAnswer()
                // green color button - correct coice
                topFourLabelColor.backgroundColor = UIColor(netHex: 0x96f10d)
                botSevenButtonColor.backgroundColor = UIColor(netHex: 0x96f10d)
                matchingAnswer = true
            } else {
                // subtract life if incorrect choice is chosen
                lives -= 1
                
                // red color button - incorrect choice
                botSevenButtonColor.backgroundColor = UIColor(netHex: 0xff4f51)
                pressButtonWrongSound()
            }
        }
        
        gameFinish()
    }
    
    // BUTTON RELEASE
    func botSevenRelase(){
        if runOrNot == 4 {
            if botSevenColorBackground == topOneColorBackground && botSevenSymbol == topOneSymbol{
                runOrNot -= 1
            }
        }
        
        if runOrNot == 3 {
            if botSevenColorBackground == topTwoColorBackground && botSevenSymbol == topTwoSymbol {
                runOrNot -= 1
            }
        }
        
        if runOrNot == 2 {
            if botSevenColorBackground == topThreeColorBackground && botSevenSymbol == topThreeSymbol {
                runOrNot -= 1
            }
        }
        
        if runOrNot == 1 {
            if botSevenColorBackground == topFourColorBackground && botSevenSymbol == topFourSymbol {
                runOrNot -= 1
            }
        }
    }
    
    
}
