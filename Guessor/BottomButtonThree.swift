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
        value = Int(arc4random_uniform(4) + 1)
        switch value {
        case 1: botThreeSymbol = 1
        case 2: botThreeSymbol = 2
        case 3: botThreeSymbol = 3
        case 4: botThreeSymbol = 4
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
    
    // BUTTON DOWN PRESS
    func botThreeDownPress(){
        if runOrNot == 4 {
            if botThreeSymbol == topOneSymbol && botThreeColorBackground == topOneColorBackground{
                scoreKeep += 1
                correctAnswer()
                // green color button - correct coice
                topOneLabelColor.backgroundColor = UIColor(netHex: 0x96f10d)
                botThreeButtonColor.backgroundColor = UIColor(netHex: 0x96f10d)
                matchingAnswer = true
            } else {
                // subtract life if incorrect choice is chosen
                lives -= 1
                
                // red color button - incorrect choice
                botThreeButtonColor.backgroundColor = UIColor(netHex: 0xff4f51)
                //                    disableButtons()
                pressButtonWrongSound()
            }
        }
        
        gameFinish()
        
        if runOrNot == 3 {
            if botThreeSymbol == topTwoSymbol && botThreeColorBackground == topTwoColorBackground{
                scoreKeep += 1
                correctAnswer()
                // green color button - correct coice
                topTwoLabelColor.backgroundColor = UIColor(netHex: 0x96f10d)
                botThreeButtonColor.backgroundColor = UIColor(netHex: 0x96f10d)
                matchingAnswer = true
            } else {
                // subtract life if incorrect choice is chosen
                lives -= 1
                
                // red color button - incorrect choice
                botThreeButtonColor.backgroundColor = UIColor(netHex: 0xff4f51)
                pressButtonWrongSound()
            }
        }
        
        gameFinish()
        
        if runOrNot == 2 {
            if botThreeSymbol == topThreeSymbol && botThreeColorBackground == topThreeColorBackground{
                scoreKeep += 1
                correctAnswer()
                // green color button - correct coice
                topThreeLabelColor.backgroundColor = UIColor(netHex: 0x96f10d)
                botThreeButtonColor.backgroundColor = UIColor(netHex: 0x96f10d)
                matchingAnswer = true
            } else {
                // subtract life if incorrect choice is chosen
                lives -= 1
                
                // red color button - incorrect choice
                botThreeButtonColor.backgroundColor = UIColor(netHex: 0xff4f51)
                pressButtonWrongSound()
            }
        }
        
        gameFinish()
        
        if runOrNot == 1 {
            if botThreeSymbol == topFourSymbol && botThreeColorBackground == topFourColorBackground{
                scoreKeep += 1
                correctAnswer()
                // green color button - correct coice
                topFourLabelColor.backgroundColor = UIColor(netHex: 0x96f10d)
                botThreeButtonColor.backgroundColor = UIColor(netHex: 0x96f10d)
                matchingAnswer = true
            } else {
                // subtract life if incorrect choice is chosen
                lives -= 1
                
                // red color button - incorrect choice
                botThreeButtonColor.backgroundColor = UIColor(netHex: 0xff4f51)
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
