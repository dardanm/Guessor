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
    func createBotFiveSymbolRandom(){
        value = Int(arc4random_uniform(4) + 1)
        switch value {
        case 1: botFiveSymbol = 1
        case 2: botFiveSymbol = 2
        case 3: botFiveSymbol = 3
        case 4: botFiveSymbol = 4
        default: botFiveSymbol = 10
        }
    }
    
    // BACKGROUND
    func createBotFiveColorRandom(){
        value = Int(arc4random_uniform(4) + 1)
        switch value {
        case 1: botFiveColorBackground = 1
        case 2: botFiveColorBackground = 2
        case 3: botFiveColorBackground = 3
        case 4: botFiveColorBackground = 4
        default: botFiveColorBackground = 10
        }
    }
    
    // IMAGE
    func updateBotFiveImage(){
        if botFiveSymbol == 1 {
            caneB5.hidden = false
            candyB5.hidden = true
            popB5.hidden = true
        }
        if botFiveSymbol == 2 {
            caneB5.hidden = true
            candyB5.hidden = false
            popB5.hidden = true
        }
        if botFiveSymbol == 3 {
            caneB5.hidden = true
            candyB5.hidden = true
            popB5.hidden = false
        }
    }
    
    // BUTTON DOWN PRESS
    func botFiveDownPress(){
        if runOrNot == 4 {
            if botFiveSymbol == topOneSymbol && botFiveColorBackground == topOneColorBackground{
                scoreKeep += 1
                correctAnswer()
                // green color button - correct coice
                topOneLabelColor.backgroundColor = UIColor(netHex: 0x96f10d)
                botFiveButtonColor.backgroundColor = UIColor(netHex: 0x96f10d)
                matchingAnswer = true
            } else {
                // subtract life if incorrect choice is chosen
                lives -= 1
                
                // red color button - incorrect choice
                botFiveButtonColor.backgroundColor = UIColor(netHex: 0xff4f51)
                //                    disableButtons()
                pressButtonWrongSound()
            }
        }
        
        gameFinish()
        
        if runOrNot == 3 {
            if botFiveSymbol == topTwoSymbol && botFiveColorBackground == topTwoColorBackground{
                scoreKeep += 1
                correctAnswer()
                // green color button - correct coice
                topTwoLabelColor.backgroundColor = UIColor(netHex: 0x96f10d)
                botFiveButtonColor.backgroundColor = UIColor(netHex: 0x96f10d)
                matchingAnswer = true
            } else {
                // subtract life if incorrect choice is chosen
                lives -= 1
                
                // red color button - incorrect choice
                botFiveButtonColor.backgroundColor = UIColor(netHex: 0xff4f51)
                pressButtonWrongSound()
            }
        }
        
        gameFinish()
        
        if runOrNot == 2 {
            if botFiveSymbol == topThreeSymbol && botFiveColorBackground == topThreeColorBackground{
                scoreKeep += 1
                correctAnswer()
                // green color button - correct coice
                topThreeLabelColor.backgroundColor = UIColor(netHex: 0x96f10d)
                botFiveButtonColor.backgroundColor = UIColor(netHex: 0x96f10d)
                matchingAnswer = true
            } else {
                // subtract life if incorrect choice is chosen
                lives -= 1
                
                // red color button - incorrect choice
                botFiveButtonColor.backgroundColor = UIColor(netHex: 0xff4f51)
                pressButtonWrongSound()
            }
        }
        
        gameFinish()
        
        if runOrNot == 1 {
            if botFiveSymbol == topFourSymbol && botFiveColorBackground == topFourColorBackground{
                scoreKeep += 1
                correctAnswer()
                // green color button - correct coice
                topFourLabelColor.backgroundColor = UIColor(netHex: 0x96f10d)
                botFiveButtonColor.backgroundColor = UIColor(netHex: 0x96f10d)
                matchingAnswer = true
            } else {
                // subtract life if incorrect choice is chosen
                lives -= 1
                
                // red color button - incorrect choice
                botFiveButtonColor.backgroundColor = UIColor(netHex: 0xff4f51)
                pressButtonWrongSound()
            }
        }
        
        gameFinish()
    }
    
    // BUTTON RELEASE
    func botFiveRelase(){
        if runOrNot == 4 {
            if botFiveColorBackground == topOneColorBackground && botFiveSymbol == topOneSymbol{
                runOrNot -= 1
            }
        }
        
        if runOrNot == 3 {
            if botFiveColorBackground == topTwoColorBackground && botFiveSymbol == topTwoSymbol {
                runOrNot -= 1
            }
        }
        
        if runOrNot == 2 {
            if botFiveColorBackground == topThreeColorBackground && botFiveSymbol == topThreeSymbol {
                runOrNot -= 1
            }
        }
        
        if runOrNot == 1 {
            if botFiveColorBackground == topFourColorBackground && botFiveSymbol == topFourSymbol {
                runOrNot -= 1
            }
        }
    }
    
    
}
