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
        value = Int(arc4random_uniform(3) + 1)
        switch value {
        case 1: botSixSymbol = 1
        case 2: botSixSymbol = 2
        case 3: botSixSymbol = 3
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
    
    // BACKGROUND IMAGE
    func updateBotSixColorBackground(){
        if botSixColorBackground == 1 {
            botSixButtonColor.backgroundColor = UIColor(netHex: 0x99e1c3)
        }
        if botSixColorBackground == 2 {
            botSixButtonColor.backgroundColor = UIColor(netHex: 0xf7b220)
        }
        if botSixColorBackground == 3 {
            botSixButtonColor.backgroundColor = UIColor(netHex: 0xf77c2c)
        }
        if botSixColorBackground == 4 {
            botSixButtonColor.backgroundColor = UIColor(netHex: 0xa7cfff)
        }
    }
    
    // GREEN BACKGROUND
    func setBotSixGreenBackground(){
        botSixGreenColor.hidden = false
    }
    func removeBotSixGreenBackground(){
        botSixGreenColor.hidden = true
    }
    // RED BACKGROUND
    func setBotSixRedBackground(){
        botSixRedColor.hidden = false
        delay(0.5){
            self.removeBotSixRedBackground()
        }
    }
    func removeBotSixRedBackground(){
        botSixRedColor.hidden = true
    }
    
    // BUTTON DOWN PRESS
    func botSixDownPress(){
        if runOrNot == 4 {
            if botSixSymbol == topOneSymbol && botSixColorBackground == topOneColorBackground{
                scoreKeep += 1
                correctAnswer()
                // green color button - correct coice
                setTopOneGreenBackground()
                setBotSixGreenBackground()
                matchingAnswer = true
            } else {
                // subtract life if incorrect choice is chosen
                incorrectAnswer()
                
                // red color button - incorrect choice
                setBotSixRedBackground()
                pressButtonWrongSound()
            }
        }
        
        gameFinish()
        
        if runOrNot == 3 {
            if botSixSymbol == topTwoSymbol && botSixColorBackground == topTwoColorBackground{
                scoreKeep += 1
                correctAnswer()
                // green color button - correct coice
                setTopTwoGreenBackground()
                setBotSixGreenBackground()
                matchingAnswer = true
            } else {
                // subtract life if incorrect choice is chosen
                incorrectAnswer()
                
                // red color button - incorrect choice
                setBotSixRedBackground()
                pressButtonWrongSound()
            }
        }
        
        gameFinish()
        
        if runOrNot == 2 {
            if botSixSymbol == topThreeSymbol && botSixColorBackground == topThreeColorBackground{
                scoreKeep += 1
                correctAnswer()
                // green color button - correct coice
                setTopThreeGreenBackground()
                setBotSixGreenBackground()
                matchingAnswer = true
            } else {
                // subtract life if incorrect choice is chosen
                incorrectAnswer()
                
                // red color button - incorrect choice
                setBotSixRedBackground()
                pressButtonWrongSound()
            }
        }
        
        gameFinish()
        
        if runOrNot == 1 {
            if botSixSymbol == topFourSymbol && botSixColorBackground == topFourColorBackground{
                scoreKeep += 1
                correctAnswer()
                // green color button - correct coice
                setTopFourGreenBackground()
                setBotSixGreenBackground()
                matchingAnswer = true
            } else {
                // subtract life if incorrect choice is chosen
                incorrectAnswer()
                
                // red color button - incorrect choice
                setBotSixRedBackground()
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
