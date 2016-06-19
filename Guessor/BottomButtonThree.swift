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
    func createBotThreeSymbolRandom(){
        value = Int(arc4random_uniform(3) + 1)
        switch value {
        case 1: botThreeSymbol = 1
        case 2: botThreeSymbol = 2
        case 3: botThreeSymbol = 3
        default: botThreeSymbol = 10
        }
    }
    
    // BACKGROUND
    func createBotThreeColorRandom(){
        value = Int(arc4random_uniform(4) + 1)
        switch value {
        case 1: botThreeColorBackground = 1
        case 2: botThreeColorBackground = 2
        case 3: botThreeColorBackground = 3
        case 4: botThreeColorBackground = 4
        default: botThreeColorBackground = 10
        }
    }
    
    // IMAGE
    func updateBotThreeImage(){
        if botThreeSymbol == 1 {
            caneB3.hidden = false
            candyB3.hidden = true
            popB3.hidden = true
        }
        if botThreeSymbol == 2 {
            caneB3.hidden = true
            candyB3.hidden = false
            popB3.hidden = true
        }
        if botThreeSymbol == 3 {
            caneB3.hidden = true
            candyB3.hidden = true
            popB3.hidden = false
        }
    }
    
    // BACKGROUND IMAGE
    func updateBotThreeColorBackground(){
        if botThreeColorBackground == 1 {
            botThreeButtonColor.backgroundColor = UIColor(netHex: 0x99e1c3)
        }
        if botThreeColorBackground == 2 {
            botThreeButtonColor.backgroundColor = UIColor(netHex: 0xf7b220)
        }
        if botThreeColorBackground == 3 {
            botThreeButtonColor.backgroundColor = UIColor(netHex: 0xf77c2c)
        }
        if botThreeColorBackground == 4 {
            botThreeButtonColor.backgroundColor = UIColor(netHex: 0xa7cfff)
        }
    }
    
    // GREEN BACKGROUND
    func setBotThreeGreenBackground(){
        botThreeGreenColor.hidden = false
    }
    func removeBotThreeGreenBackground(){
        botThreeGreenColor.hidden = true
    }
    // RED BACKGROUND
    func setBotThreeRedBackground(){
        botThreeRedColor.hidden = false
        delay(0.5){
            self.removeBotThreeRedBackground()
        }
    }
    func removeBotThreeRedBackground(){
        botThreeRedColor.hidden = true
    }
    
    // BUTTON DOWN PRESS
    func botThreeDownPress(){
        if runOrNot == 4 {
            if botThreeSymbol == topOneSymbol && botThreeColorBackground == topOneColorBackground{
                scoreKeep += 1
                correctAnswer()
                // green color button - correct coice
                setTopOneGreenBackground()
                setBotThreeGreenBackground()
                matchingAnswer = true
            } else {
                // subtract life if incorrect choice is chosen
                incorrectAnswer()
                
                // red color button - incorrect choice
                setBotThreeRedBackground()
                pressButtonWrongSound()
            }
        }
        
        gameFinish()
        
        if runOrNot == 3 {
            if botThreeSymbol == topTwoSymbol && botThreeColorBackground == topTwoColorBackground{
                scoreKeep += 1
                correctAnswer()
                // green color button - correct coice
                setTopTwoGreenBackground()
                setBotThreeGreenBackground()
                matchingAnswer = true
            } else {
                // subtract life if incorrect choice is chosen
                incorrectAnswer()
                
                // red color button - incorrect choice
                setBotThreeRedBackground()
                pressButtonWrongSound()
            }
        }
        
        gameFinish()
        
        if runOrNot == 2 {
            if botThreeSymbol == topThreeSymbol && botThreeColorBackground == topThreeColorBackground{
                scoreKeep += 1
                correctAnswer()
                // green color button - correct coice
                setTopThreeGreenBackground()
                setBotThreeGreenBackground()
                matchingAnswer = true
            } else {
                // subtract life if incorrect choice is chosen
                incorrectAnswer()
                
                // red color button - incorrect choice
                setBotThreeRedBackground()
                pressButtonWrongSound()
            }
        }
        
        gameFinish()
        
        if runOrNot == 1 {
            if botThreeSymbol == topFourSymbol && botThreeColorBackground == topFourColorBackground{
                scoreKeep += 1
                correctAnswer()
                // green color button - correct coice
                setTopFourGreenBackground()
                setBotThreeGreenBackground()
                matchingAnswer = true
            } else {
                // subtract life if incorrect choice is chosen
                incorrectAnswer()
                
                // red color button - incorrect choice
                setBotThreeRedBackground()
                pressButtonWrongSound()
            }
        }
        
        gameFinish()
    }
    
    // BUTTON RELEASE
    func botThreeRelase(){
        if runOrNot == 4 {
            if botThreeColorBackground == topOneColorBackground && botThreeSymbol == topOneSymbol{
                runOrNot -= 1
            }
        }
        
        if runOrNot == 3 {
            if botThreeColorBackground == topTwoColorBackground && botThreeSymbol == topTwoSymbol {
                runOrNot -= 1
            }
        }
        
        if runOrNot == 2 {
            if botThreeColorBackground == topThreeColorBackground && botThreeSymbol == topThreeSymbol {
                runOrNot -= 1
            }
        }
        
        if runOrNot == 1 {
            if botThreeColorBackground == topFourColorBackground && botThreeSymbol == topFourSymbol {
                runOrNot -= 1
            }
        }
    }
    
    
}
