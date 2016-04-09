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
    func createBotTwoSymbolRandom(){
        value = Int(arc4random_uniform(3) + 1)
        switch value {
        case 1: botTwoSymbol = 1
        case 2: botTwoSymbol = 2
        case 3: botTwoSymbol = 3
        default: botTwoSymbol = 10
        }
    }
    
    // BACKGROUND
    func createBotTwoColorRandom(){
        value = Int(arc4random_uniform(4) + 1)
        switch value {
        case 1: botTwoColorBackground = 1
        case 2: botTwoColorBackground = 2
        case 3: botTwoColorBackground = 3
        case 4: botTwoColorBackground = 4
        default: botTwoColorBackground = 10
        }
    }
    
    // IMAGE
    func updateBotTwoImage(){
        if botTwoSymbol == 1 {
            caneB2.hidden = false
            candyB2.hidden = true
            popB2.hidden = true
        }
        if botTwoSymbol == 2 {
            caneB2.hidden = true
            candyB2.hidden = false
            popB2.hidden = true
        }
        if botTwoSymbol == 3 {
            caneB2.hidden = true
            candyB2.hidden = true
            popB2.hidden = false
        }
    }
    
    // BACKGROUND IMAGE
    func updateBotTwoColorBackground(){
        if botTwoColorBackground == 1 {
            botTwoButtonColor.backgroundColor = UIColor(netHex: 0x99e1c3)
        }
        if botTwoColorBackground == 2 {
            botTwoButtonColor.backgroundColor = UIColor(netHex: 0xf7b220)
        }
        if botTwoColorBackground == 3 {
            botTwoButtonColor.backgroundColor = UIColor(netHex: 0xf77c2c)
        }
        if botTwoColorBackground == 4 {
            botTwoButtonColor.backgroundColor = UIColor(netHex: 0xa7cfff)
        }
    }
    
    // GREEN BACKGROUND
    func setBotTwoGreenBackground(){
        botTwoGreenColor.hidden = false
    }
    func removeBotTwoGreenBackground(){
        botTwoGreenColor.hidden = true
    }
    // RED BACKGROUND
    func setBotTwoRedBackground(){
        botTwoRedColor.hidden = false
        delay(0.5){
            self.removeBotTwoRedBackground()
        }
    }
    func removeBotTwoRedBackground(){
        botTwoRedColor.hidden = true
    }
    
    // BUTTON DOWN PRESS
    func botTwoDownPress(){
        if runOrNot == 4 {
            if botTwoSymbol == topOneSymbol && botTwoColorBackground == topOneColorBackground{
                scoreKeep += 1
                correctAnswer()
                // green color button - correct coice
                setTopOneGreenBackground()
                setBotTwoGreenBackground()
                matchingAnswer = true
            } else {
                // subtract life if incorrect choice is chosen
                lives -= 1
                
                // red color button - incorrect choice
                setBotTwoRedBackground()
                pressButtonWrongSound()
            }
        }
        
        gameFinish()
        
        if runOrNot == 3 {
            if botTwoSymbol == topTwoSymbol && botTwoColorBackground == topTwoColorBackground{
                scoreKeep += 1
                correctAnswer()
                // green color button - correct coice
                setTopTwoGreenBackground()
                setBotTwoGreenBackground()
                matchingAnswer = true
            } else {
                // subtract life if incorrect choice is chosen
                lives -= 1
                
                // red color button - incorrect choice
                setBotTwoRedBackground()
                pressButtonWrongSound()
            }
        }
        
        gameFinish()
        
        if runOrNot == 2 {
            if botTwoSymbol == topThreeSymbol && botTwoColorBackground == topThreeColorBackground{
                scoreKeep += 1
                correctAnswer()
                // green color button - correct coice
                setTopThreeGreenBackground()
                setBotTwoGreenBackground()
                matchingAnswer = true
            } else {
                // subtract life if incorrect choice is chosen
                lives -= 1
                
                // red color button - incorrect choice
                setBotTwoRedBackground()
                pressButtonWrongSound()
            }
        }
        
        gameFinish()
        
        if runOrNot == 1 {
            if botTwoSymbol == topFourSymbol && botTwoColorBackground == topFourColorBackground{
                scoreKeep += 1
                correctAnswer()
                // green color button - correct coice
                setTopFourGreenBackground()
                setBotTwoGreenBackground()
                matchingAnswer = true
            } else {
                // subtract life if incorrect choice is chosen
                lives -= 1
                
                // red color button - incorrect choice
                setBotTwoRedBackground()
                pressButtonWrongSound()
            }
        }
        
        gameFinish()
    }
    
    // BUTTON RELEASE
    func botTwoRelase(){
        if runOrNot == 4 {
            if botTwoColorBackground == topOneColorBackground && botTwoSymbol == topOneSymbol{
                runOrNot -= 1
            }
        }
        
        if runOrNot == 3 {
            if botTwoColorBackground == topTwoColorBackground && botTwoSymbol == topTwoSymbol {
                runOrNot -= 1
            }
        }
        
        if runOrNot == 2 {
            if botTwoColorBackground == topThreeColorBackground && botTwoSymbol == topThreeSymbol {
                runOrNot -= 1
            }
        }
        
        if runOrNot == 1 {
            if botTwoColorBackground == topFourColorBackground && botTwoSymbol == topFourSymbol {
                runOrNot -= 1
            }
        }
    }
    
    
}
