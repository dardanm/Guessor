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
    
    // BUTTON DOWN PRESS
    func botTwoDownPress(){
        if runOrNot == 4 {
            if botTwoSymbol == topOneSymbol && botTwoColorBackground == topOneColorBackground{
                scoreKeep += 1
                correctAnswer()
                // green color button - correct coice
                topOneLabelColor.backgroundColor = UIColor(netHex: 0x96f10d)
                botTwoButtonColor.backgroundColor = UIColor(netHex: 0x96f10d)
                matchingAnswer = true
            } else {
                // subtract life if incorrect choice is chosen
                lives -= 1
                
                // red color button - incorrect choice
                botTwoButtonColor.backgroundColor = UIColor(netHex: 0xff4f51)
                //                    disableButtons()
                pressButtonWrongSound()
            }
        }
        
        gameFinish()
        
        if runOrNot == 3 {
            if botTwoSymbol == topTwoSymbol && botTwoColorBackground == topTwoColorBackground{
                scoreKeep += 1
                correctAnswer()
                // green color button - correct coice
                topTwoLabelColor.backgroundColor = UIColor(netHex: 0x96f10d)
                botTwoButtonColor.backgroundColor = UIColor(netHex: 0x96f10d)
                matchingAnswer = true
            } else {
                // subtract life if incorrect choice is chosen
                lives -= 1
                
                // red color button - incorrect choice
                botTwoButtonColor.backgroundColor = UIColor(netHex: 0xff4f51)
                pressButtonWrongSound()
            }
        }
        
        gameFinish()
        
        if runOrNot == 2 {
            if botTwoSymbol == topThreeSymbol && botTwoColorBackground == topThreeColorBackground{
                scoreKeep += 1
                correctAnswer()
                // green color button - correct coice
                topThreeLabelColor.backgroundColor = UIColor(netHex: 0x96f10d)
                botTwoButtonColor.backgroundColor = UIColor(netHex: 0x96f10d)
                matchingAnswer = true
            } else {
                // subtract life if incorrect choice is chosen
                lives -= 1
                
                // red color button - incorrect choice
                botTwoButtonColor.backgroundColor = UIColor(netHex: 0xff4f51)
                pressButtonWrongSound()
            }
        }
        
        gameFinish()
        
        if runOrNot == 1 {
            if botTwoSymbol == topFourSymbol && botTwoColorBackground == topFourColorBackground{
                scoreKeep += 1
                correctAnswer()
                // green color button - correct coice
                topFourLabelColor.backgroundColor = UIColor(netHex: 0x96f10d)
                botTwoButtonColor.backgroundColor = UIColor(netHex: 0x96f10d)
                matchingAnswer = true
            } else {
                // subtract life if incorrect choice is chosen
                lives -= 1
                
                // red color button - incorrect choice
                botTwoButtonColor.backgroundColor = UIColor(netHex: 0xff4f51)
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
