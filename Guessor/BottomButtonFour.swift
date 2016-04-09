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
    func createBotFourSymbolRandom(){
        value = Int(arc4random_uniform(4) + 1)
        switch value {
        case 1: botFourSymbol = 1
        case 2: botFourSymbol = 2
        case 3: botFourSymbol = 3
        case 4: botFourSymbol = 4
        default: botFourSymbol = 10
        }
    }
    
    // BACKGROUND
    func createBotFourColorRandom(){
        value = Int(arc4random_uniform(4) + 1)
        switch value {
        case 1: botFourColorBackground = 1
        case 2: botFourColorBackground = 2
        case 3: botFourColorBackground = 3
        case 4: botFourColorBackground = 4
        default: botFourColorBackground = 10
        }
    }
    
    // IMAGE
    func updateBotFourImage(){
        if botFourSymbol == 1 {
            caneB4.hidden = false
            candyB4.hidden = true
            popB4.hidden = true
        }
        if botFourSymbol == 2 {
            caneB4.hidden = true
            candyB4.hidden = false
            popB4.hidden = true
        }
        if botFourSymbol == 3 {
            caneB4.hidden = true
            candyB4.hidden = true
            popB4.hidden = false
        }
    }
    
    // BUTTON DOWN PRESS
    func botFourDownPress(){
        if runOrNot == 4 {
            if botFourSymbol == topOneSymbol && botFourColorBackground == topOneColorBackground{
                scoreKeep += 1
                correctAnswer()
                // green color button - correct coice
                topOneLabelColor.backgroundColor = UIColor(netHex: 0x96f10d)
                botFourButtonColor.backgroundColor = UIColor(netHex: 0x96f10d)
                matchingAnswer = true
            } else {
                // subtract life if incorrect choice is chosen
                lives -= 1
                
                // red color button - incorrect choice
                botFourButtonColor.backgroundColor = UIColor(netHex: 0xff4f51)
                //                    disableButtons()
                pressButtonWrongSound()
            }
        }
        
        gameFinish()
        
        if runOrNot == 3 {
            if botFourSymbol == topTwoSymbol && botFourColorBackground == topTwoColorBackground{
                scoreKeep += 1
                correctAnswer()
                // green color button - correct coice
                topTwoLabelColor.backgroundColor = UIColor(netHex: 0x96f10d)
                botFourButtonColor.backgroundColor = UIColor(netHex: 0x96f10d)
                matchingAnswer = true
            } else {
                // subtract life if incorrect choice is chosen
                lives -= 1
                
                // red color button - incorrect choice
                botFourButtonColor.backgroundColor = UIColor(netHex: 0xff4f51)
                pressButtonWrongSound()
            }
        }
        
        gameFinish()
        
        if runOrNot == 2 {
            if botFourSymbol == topThreeSymbol && botFourColorBackground == topThreeColorBackground{
                scoreKeep += 1
                correctAnswer()
                // green color button - correct coice
                topThreeLabelColor.backgroundColor = UIColor(netHex: 0x96f10d)
                botFourButtonColor.backgroundColor = UIColor(netHex: 0x96f10d)
                matchingAnswer = true
            } else {
                // subtract life if incorrect choice is chosen
                lives -= 1
                
                // red color button - incorrect choice
                botFourButtonColor.backgroundColor = UIColor(netHex: 0xff4f51)
                pressButtonWrongSound()
            }
        }
        
        gameFinish()
        
        if runOrNot == 1 {
            if botFourSymbol == topFourSymbol && botFourColorBackground == topFourColorBackground{
                scoreKeep += 1
                correctAnswer()
                // green color button - correct coice
                topFourLabelColor.backgroundColor = UIColor(netHex: 0x96f10d)
                botFourButtonColor.backgroundColor = UIColor(netHex: 0x96f10d)
                matchingAnswer = true
            } else {
                // subtract life if incorrect choice is chosen
                lives -= 1
                
                // red color button - incorrect choice
                botFourButtonColor.backgroundColor = UIColor(netHex: 0xff4f51)
                pressButtonWrongSound()
            }
        }
        
        gameFinish()
    }
    
    // BUTTON RELEASE
    func botFourRelase(){
        if runOrNot == 4 {
            if botFourColorBackground == topOneColorBackground && botFourSymbol == topOneSymbol{
                runOrNot -= 1
            }
        }
        
        if runOrNot == 3 {
            if botFourColorBackground == topTwoColorBackground && botFourSymbol == topTwoSymbol {
                runOrNot -= 1
            }
        }
        
        if runOrNot == 2 {
            if botFourColorBackground == topThreeColorBackground && botFourSymbol == topThreeSymbol {
                runOrNot -= 1
            }
        }
        
        if runOrNot == 1 {
            if botFourColorBackground == topFourColorBackground && botFourSymbol == topFourSymbol {
                runOrNot -= 1
            }
        }
    }
    
    
}
