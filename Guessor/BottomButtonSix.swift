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
    func createBotSixSymbolRandom(){
        value = Int(arc4random_uniform(4) + 1)
        switch value {
        case 1: botSixSymbol = 1
        case 2: botSixSymbol = 2
        case 3: botSixSymbol = 3
        case 4: botSixSymbol = 4
        default: botSixSymbol = 10
        }
    }
    
    // BACKGROUND
    func createBotSixColorRandom(){
        value = Int(arc4random_uniform(4) + 1)
        switch value {
        case 1: botSixColorBackground = 1
        case 2: botSixColorBackground = 2
        case 3: botSixColorBackground = 3
        case 4: botSixColorBackground = 4
        default: botSixColorBackground = 10
        }
    }
    
    // IMAGE
    func updateBotSixImage(){
        if botSixSymbol == 1 {
            caneB6.hidden = false
            candyB6.hidden = true
            popB6.hidden = true
        }
        if botSixSymbol == 2 {
            caneB6.hidden = true
            candyB6.hidden = false
            popB6.hidden = true
        }
        if botSixSymbol == 3 {
            caneB6.hidden = true
            candyB6.hidden = true
            popB6.hidden = false
        }
    }
    
    // BUTTON DOWN PRESS
    func botSixDownPress(){
        if runOrNot == 4 {
            if botSixSymbol == topOneSymbol && botSixColorBackground == topOneColorBackground{
                scoreKeep += 1
                correctAnswer()
                // green color button - correct coice
                topOneLabelColor.backgroundColor = UIColor(netHex: 0x96f10d)
                botSixButtonColor.backgroundColor = UIColor(netHex: 0x96f10d)
                matchingAnswer = true
            } else {
                // subtract life if incorrect choice is chosen
                lives -= 1
                
                // red color button - incorrect choice
                botSixButtonColor.backgroundColor = UIColor(netHex: 0xff4f51)
                //                    disableButtons()
                pressButtonWrongSound()
            }
        }
        
        gameFinish()
        
        if runOrNot == 3 {
            if botSixSymbol == topTwoSymbol && botSixColorBackground == topTwoColorBackground{
                scoreKeep += 1
                correctAnswer()
                // green color button - correct coice
                topTwoLabelColor.backgroundColor = UIColor(netHex: 0x96f10d)
                botSixButtonColor.backgroundColor = UIColor(netHex: 0x96f10d)
                matchingAnswer = true
            } else {
                // subtract life if incorrect choice is chosen
                lives -= 1
                
                // red color button - incorrect choice
                botSixButtonColor.backgroundColor = UIColor(netHex: 0xff4f51)
                pressButtonWrongSound()
            }
        }
        
        gameFinish()
        
        if runOrNot == 2 {
            if botSixSymbol == topThreeSymbol && botSixColorBackground == topThreeColorBackground{
                scoreKeep += 1
                correctAnswer()
                // green color button - correct coice
                topThreeLabelColor.backgroundColor = UIColor(netHex: 0x96f10d)
                botSixButtonColor.backgroundColor = UIColor(netHex: 0x96f10d)
                matchingAnswer = true
            } else {
                // subtract life if incorrect choice is chosen
                lives -= 1
                
                // red color button - incorrect choice
                botSixButtonColor.backgroundColor = UIColor(netHex: 0xff4f51)
                pressButtonWrongSound()
            }
        }
        
        gameFinish()
        
        if runOrNot == 1 {
            if botSixSymbol == topFourSymbol && botSixColorBackground == topFourColorBackground{
                scoreKeep += 1
                correctAnswer()
                // green color button - correct coice
                topFourLabelColor.backgroundColor = UIColor(netHex: 0x96f10d)
                botSixButtonColor.backgroundColor = UIColor(netHex: 0x96f10d)
                matchingAnswer = true
            } else {
                // subtract life if incorrect choice is chosen
                lives -= 1
                
                // red color button - incorrect choice
                botSixButtonColor.backgroundColor = UIColor(netHex: 0xff4f51)
                pressButtonWrongSound()
            }
        }
        
        gameFinish()
    }
    
    // BUTTON RELEASE
    func botSixRelase(){
        if runOrNot == 4 {
            if botSixColorBackground == topOneColorBackground && botSixSymbol == topOneSymbol{
                runOrNot -= 1
            }
        }
        
        if runOrNot == 3 {
            if botSixColorBackground == topTwoColorBackground && botSixSymbol == topTwoSymbol {
                runOrNot -= 1
            }
        }
        
        if runOrNot == 2 {
            if botSixColorBackground == topThreeColorBackground && botSixSymbol == topThreeSymbol {
                runOrNot -= 1
            }
        }
        
        if runOrNot == 1 {
            if botSixColorBackground == topFourColorBackground && botSixSymbol == topFourSymbol {
                runOrNot -= 1
            }
        }
    }
    
    
}
