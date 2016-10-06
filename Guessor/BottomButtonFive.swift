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
        value = Int(arc4random_uniform(3) + 1)
        switch value {
        case 1: botFiveSymbol = 1
        case 2: botFiveSymbol = 2
        case 3: botFiveSymbol = 3
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
            caneB5.isHidden = false
            candyB5.isHidden = true
            popB5.isHidden = true
        }
        if botFiveSymbol == 2 {
            caneB5.isHidden = true
            candyB5.isHidden = false
            popB5.isHidden = true
        }
        if botFiveSymbol == 3 {
            caneB5.isHidden = true
            candyB5.isHidden = true
            popB5.isHidden = false
        }
    }
    
    // BACKGROUND IMAGE
    func updateBotFiveColorBackground(){
        if botFiveColorBackground == 1 {
            botFiveButtonColor.backgroundColor = UIColor(netHex: 0x99e1c3)
        }
        if botFiveColorBackground == 2 {
            botFiveButtonColor.backgroundColor = UIColor(netHex: 0xf7b220)
        }
        if botFiveColorBackground == 3 {
            botFiveButtonColor.backgroundColor = UIColor(netHex: 0xf77c2c)
        }
        if botFiveColorBackground == 4 {
            botFiveButtonColor.backgroundColor = UIColor(netHex: 0xa7cfff)
        }
    }
    
    // GREEN BACKGROUND
    func setBotFiveGreenBackground(){
        botFiveGreenColor.isHidden = false
    }
    func removeBotFiveGreenBackground(){
        botFiveGreenColor.isHidden = true
    }
    // RED BACKGROUND
    func setBotFiveRedBackground(){
        botFiveRedColor.isHidden = false
        delay(0.5){
            self.removeBotFiveRedBackground()
        }
    }
    func removeBotFiveRedBackground(){
        botFiveRedColor.isHidden = true
    }
    
    // BUTTON DOWN PRESS
    func botFiveDownPress(){
        if runOrNot == 4 {
            if botFiveSymbol == topOneSymbol && botFiveColorBackground == topOneColorBackground{
                scoreKeep += 1
                correctAnswer()
                // green color button - correct coice
                setTopOneGreenBackground()
                setBotFiveGreenBackground()
                matchingAnswer = true
            } else {
                // subtract life if incorrect choice is chosen
                incorrectAnswer()
                
                // red color button - incorrect choice
                setBotFiveRedBackground()
                pressButtonWrongSound()
            }
        }
        
        gameFinish()
        
        if runOrNot == 3 {
            if botFiveSymbol == topTwoSymbol && botFiveColorBackground == topTwoColorBackground{
                scoreKeep += 1
                correctAnswer()
                // green color button - correct coice
                setTopTwoGreenBackground()
                setBotFiveGreenBackground()
                matchingAnswer = true
            } else {
                // subtract life if incorrect choice is chosen
                incorrectAnswer()
                
                // red color button - incorrect choice
                setBotFiveRedBackground()
                pressButtonWrongSound()
            }
        }
        
        gameFinish()
        
        if runOrNot == 2 {
            if botFiveSymbol == topThreeSymbol && botFiveColorBackground == topThreeColorBackground{
                scoreKeep += 1
                correctAnswer()
                // green color button - correct coice
                setTopThreeGreenBackground()
                setBotFiveGreenBackground()
                matchingAnswer = true
            } else {
                // subtract life if incorrect choice is chosen
                incorrectAnswer()
                
                // red color button - incorrect choice
                setBotFiveRedBackground()
                pressButtonWrongSound()
            }
        }
        
        gameFinish()
        
        if runOrNot == 1 {
            if botFiveSymbol == topFourSymbol && botFiveColorBackground == topFourColorBackground{
                scoreKeep += 1
                correctAnswer()
                // green color button - correct coice
                setTopFourGreenBackground()
                setBotFiveGreenBackground()
                matchingAnswer = true
            } else {
                // subtract life if incorrect choice is chosen
                incorrectAnswer()
                
                // red color button - incorrect choice
                setBotFiveRedBackground()
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
