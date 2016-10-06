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
        value = Int(arc4random_uniform(3) + 1)
        switch value {
        case 1: botFourSymbol = 1
        case 2: botFourSymbol = 2
        case 3: botFourSymbol = 3
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
            caneB4.isHidden = false
            candyB4.isHidden = true
            popB4.isHidden = true
        }
        if botFourSymbol == 2 {
            caneB4.isHidden = true
            candyB4.isHidden = false
            popB4.isHidden = true
        }
        if botFourSymbol == 3 {
            caneB4.isHidden = true
            candyB4.isHidden = true
            popB4.isHidden = false
        }
    }
    
    // BACKGROUND IMAGE
    func updateBotFourColorBackground(){
        if botFourColorBackground == 1 {
            botFourButtonColor.backgroundColor = UIColor(netHex: 0x99e1c3)
        }
        if botFourColorBackground == 2 {
            botFourButtonColor.backgroundColor = UIColor(netHex: 0xf7b220)
        }
        if botFourColorBackground == 3 {
            botFourButtonColor.backgroundColor = UIColor(netHex: 0xf77c2c)
        }
        if botFourColorBackground == 4 {
            botFourButtonColor.backgroundColor = UIColor(netHex: 0xa7cfff)
        }
    }
    
    // GREEN BACKGROUND
    func setBotFourGreenBackground(){
        botFourGreenColor.isHidden = false
    }
    func removeBotFourGreenBackground(){
        botFourGreenColor.isHidden = true
    }
    // RED BACKGROUND
    func setBotFourRedBackground(){
        botFourRedColor.isHidden = false
        delay(0.5){
            self.removeBotFourRedBackground()
        }
    }
    func removeBotFourRedBackground(){
        botFourRedColor.isHidden = true
    }
    
    // BUTTON DOWN PRESS
    func botFourDownPress(){
        if runOrNot == 4 {
            if botFourSymbol == topOneSymbol && botFourColorBackground == topOneColorBackground{
                scoreKeep += 1
                correctAnswer()
                // green color button - correct coice
                setTopOneGreenBackground()
                setBotFourGreenBackground()
                matchingAnswer = true
            } else {
                // subtract life if incorrect choice is chosen
                incorrectAnswer()
                
                // red color button - incorrect choice
                setBotFourRedBackground()
                pressButtonWrongSound()
            }
        }
        
        gameFinish()
        
        if runOrNot == 3 {
            if botFourSymbol == topTwoSymbol && botFourColorBackground == topTwoColorBackground{
                scoreKeep += 1
                correctAnswer()
                // green color button - correct coice
                setTopTwoGreenBackground()
                setBotFourGreenBackground()
                matchingAnswer = true
            } else {
                // subtract life if incorrect choice is chosen
                incorrectAnswer()
                
                // red color button - incorrect choice
                setBotFourRedBackground()
                pressButtonWrongSound()
            }
        }
        
        gameFinish()
        
        if runOrNot == 2 {
            if botFourSymbol == topThreeSymbol && botFourColorBackground == topThreeColorBackground{
                scoreKeep += 1
                correctAnswer()
                // green color button - correct coice
                setTopThreeGreenBackground()
                setBotFourGreenBackground()
                matchingAnswer = true
            } else {
                // subtract life if incorrect choice is chosen
                incorrectAnswer()
                
                // red color button - incorrect choice
                setBotFourRedBackground()
                pressButtonWrongSound()
            }
        }
        
        gameFinish()
        
        if runOrNot == 1 {
            if botFourSymbol == topFourSymbol && botFourColorBackground == topFourColorBackground{
                scoreKeep += 1
                correctAnswer()
                // green color button - correct coice
                setTopFourGreenBackground()
                setBotFourGreenBackground()
                matchingAnswer = true
            } else {
                // subtract life if incorrect choice is chosen
                incorrectAnswer()
                
                // red color button - incorrect choice
                setBotFourRedBackground()
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
