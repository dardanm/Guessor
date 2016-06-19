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
    func createBotEightSymbolRandom(){
        value = Int(arc4random_uniform(3) + 1)
        switch value {
        case 1: botEightSymbol = 1
        case 2: botEightSymbol = 2
        case 3: botEightSymbol = 3
        default: botEightSymbol = 10
        }
    }
    
    // BACKGROUND
    func createBotEightColorRandom(){
        value = Int(arc4random_uniform(4) + 1)
        switch value {
        case 1: botEightColorBackground = 1
        case 2: botEightColorBackground = 2
        case 3: botEightColorBackground = 3
        case 4: botEightColorBackground = 4
        default: botEightColorBackground = 10
        }
    }
    
    // IMAGE
    func updateBotEightImage(){
        if botEightSymbol == 1 {
            caneB8.hidden = false
            candyB8.hidden = true
            popB8.hidden = true
        }
        if botEightSymbol == 2 {
            caneB8.hidden = true
            candyB8.hidden = false
            popB8.hidden = true
        }
        if botEightSymbol == 3 {
            caneB8.hidden = true
            candyB8.hidden = true
            popB8.hidden = false
        }
    }
    
    // BACKGROUND IMAGE
    func updateBotEightColorBackground(){
        if botEightColorBackground == 1 {
            botEightButtonColor.backgroundColor = UIColor(netHex: 0x99e1c3)
        }
        if botEightColorBackground == 2 {
            botEightButtonColor.backgroundColor = UIColor(netHex: 0xf7b220)
        }
        if botEightColorBackground == 3 {
            botEightButtonColor.backgroundColor = UIColor(netHex: 0xf77c2c)
        }
        if botEightColorBackground == 4 {
            botEightButtonColor.backgroundColor = UIColor(netHex: 0xa7cfff)
        }
    }
    
    // GREEN BACKGROUND
    func setBotEightGreenBackground(){
        botEightGreenColor.hidden = false
    }
    func removeBotEightGreenBackground(){
        botEightGreenColor.hidden = true
    }
    // RED BACKGROUND
    func setBotEightRedBackground(){
        botEightRedColor.hidden = false
        delay(0.5){
            self.removeBotEightRedBackground()
        }
    }
    func removeBotEightRedBackground(){
        botEightRedColor.hidden = true
    }
    
    // BUTTON DOWN PRESS
    func botEightDownPress(){
        if runOrNot == 4 {
            if botEightSymbol == topOneSymbol && botEightColorBackground == topOneColorBackground{
                scoreKeep += 1
                correctAnswer()
                // green color button - correct coice
                setTopOneGreenBackground()
                setBotEightGreenBackground()
                matchingAnswer = true
            } else {
                // subtract life if incorrect choice is chosen
                incorrectAnswer()
                
                // red color button - incorrect choice
                setBotEightRedBackground()
                pressButtonWrongSound()
            }
        }
        
        gameFinish()
        
        if runOrNot == 3 {
            if botEightSymbol == topTwoSymbol && botEightColorBackground == topTwoColorBackground{
                scoreKeep += 1
                correctAnswer()
                // green color button - correct coice
                setTopTwoGreenBackground()
                setBotEightGreenBackground()
                matchingAnswer = true
            } else {
                // subtract life if incorrect choice is chosen
                incorrectAnswer()
                
                // red color button - incorrect choice
                setBotEightRedBackground()
                pressButtonWrongSound()
            }
        }
        
        gameFinish()
        
        if runOrNot == 2 {
            if botEightSymbol == topThreeSymbol && botEightColorBackground == topThreeColorBackground{
                scoreKeep += 1
                correctAnswer()
                // green color button - correct coice
                setTopThreeGreenBackground()
                setBotEightGreenBackground()
                matchingAnswer = true
            } else {
                // subtract life if incorrect choice is chosen
                incorrectAnswer()
                
                // red color button - incorrect choice
                setBotEightRedBackground()
                pressButtonWrongSound()
            }
        }
        
        gameFinish()
        
        if runOrNot == 1 {
            if botEightSymbol == topFourSymbol && botEightColorBackground == topFourColorBackground{
                scoreKeep += 1
                correctAnswer()
                // green color button - correct coice
                setTopFourGreenBackground()
                setBotEightGreenBackground()
                matchingAnswer = true
            } else {
                // subtract life if incorrect choice is chosen
                incorrectAnswer()
                
                // red color button - incorrect choice
                setBotEightRedBackground()
                pressButtonWrongSound()
            }
        }
        
        gameFinish()
    }
    
    // BUTTON RELEASE
    func botEightRelase(){
        if runOrNot == 4 {
            if botEightColorBackground == topOneColorBackground && botEightSymbol == topOneSymbol{
                runOrNot -= 1
            }
        }
        
        if runOrNot == 3 {
            if botEightColorBackground == topTwoColorBackground && botEightSymbol == topTwoSymbol {
                runOrNot -= 1
            }
        }
        
        if runOrNot == 2 {
            if botEightColorBackground == topThreeColorBackground && botEightSymbol == topThreeSymbol {
                runOrNot -= 1
            }
        }
        
        if runOrNot == 1 {
            if botEightColorBackground == topFourColorBackground && botEightSymbol == topFourSymbol {
                runOrNot -= 1
            }
        }
    }
    
    
}
