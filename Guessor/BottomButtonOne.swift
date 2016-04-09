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
    func createBotOneSymbolRandom(){
        value = Int(arc4random_uniform(3) + 1)
        switch value {
        case 1: botOneSymbol = 1
        case 2: botOneSymbol = 2
        case 3: botOneSymbol = 3
        default: botOneSymbol = 10
        }
    }
    
    // BACKGROUND
    func createBotOneColorRandom(){
        value = Int(arc4random_uniform(4) + 1)
        switch value {
        case 1: botOneColorBackground = 1
        case 2: botOneColorBackground = 2
        case 3: botOneColorBackground = 3
        case 4: botOneColorBackground = 4
        default: botOneColorBackground = 10
        }
    }
    
    // IMAGE
    func updateBotOneImage(){
        if botOneSymbol == 1 {
            caneB1.hidden = false
            candyB1.hidden = true
            popB1.hidden = true
        }
        if botOneSymbol == 2 {
            caneB1.hidden = true
            candyB1.hidden = false
            popB1.hidden = true
        }
        if botOneSymbol == 3 {
            caneB1.hidden = true
            candyB1.hidden = true
            popB1.hidden = false
        }
    }
    
    // BUTTON DOWN PRESS
    func botOneDownPress(){
        if runOrNot == 4 {
            if botOneSymbol == topOneSymbol && botOneColorBackground == topOneColorBackground{
                scoreKeep += 1
                correctAnswer()
                // green color button - correct coice
                topOneLabelColor.backgroundColor = UIColor(netHex: 0x96f10d)
                botOneButtonColor.backgroundColor = UIColor(netHex: 0x96f10d)
                matchingAnswer = true
            } else {
                // subtract life if incorrect choice is chosen
                lives -= 1
                
                // red color button - incorrect choice
                botOneButtonColor.backgroundColor = UIColor(netHex: 0xff4f51)
                //                    disableButtons()
                pressButtonWrongSound()
            }
        }
        
        gameFinish()
        
        if runOrNot == 3 {
            if botOneSymbol == topTwoSymbol && botOneColorBackground == topTwoColorBackground{
                scoreKeep += 1
                correctAnswer()
                // green color button - correct coice
                topTwoLabelColor.backgroundColor = UIColor(netHex: 0x96f10d)
                botOneButtonColor.backgroundColor = UIColor(netHex: 0x96f10d)
                matchingAnswer = true
            } else {
                // subtract life if incorrect choice is chosen
                lives -= 1
                
                // red color button - incorrect choice
                botOneButtonColor.backgroundColor = UIColor(netHex: 0xff4f51)
                pressButtonWrongSound()
            }
        }
        
        gameFinish()
        
        if runOrNot == 2 {
            if botOneSymbol == topThreeSymbol && botOneColorBackground == topThreeColorBackground{
                scoreKeep += 1
                correctAnswer()
                // green color button - correct coice
                topThreeLabelColor.backgroundColor = UIColor(netHex: 0x96f10d)
                botOneButtonColor.backgroundColor = UIColor(netHex: 0x96f10d)
                matchingAnswer = true
            } else {
                // subtract life if incorrect choice is chosen
                lives -= 1
                
                // red color button - incorrect choice
                botOneButtonColor.backgroundColor = UIColor(netHex: 0xff4f51)
                pressButtonWrongSound()
            }
        }
        
        gameFinish()
        
        if runOrNot == 1 {
            if botOneSymbol == topFourSymbol && botOneColorBackground == topFourColorBackground{
                scoreKeep += 1
                correctAnswer()
                // green color button - correct coice
                topFourLabelColor.backgroundColor = UIColor(netHex: 0x96f10d)
                botOneButtonColor.backgroundColor = UIColor(netHex: 0x96f10d)
                matchingAnswer = true
            } else {
                // subtract life if incorrect choice is chosen
                lives -= 1
                
                // red color button - incorrect choice
                botOneButtonColor.backgroundColor = UIColor(netHex: 0xff4f51)
                pressButtonWrongSound()
            }
        }
        
        gameFinish()
    }
    
    // BUTTON RELEASE
    func botOneRelase(){
        if runOrNot == 4 {
            if botOneColorBackground == topOneColorBackground && botOneSymbol == topOneSymbol{
                runOrNot -= 1
            }
        }
        
        if runOrNot == 3 {
            if botOneColorBackground == topTwoColorBackground && botOneSymbol == topTwoSymbol {
                runOrNot -= 1
            }
        }
        
        if runOrNot == 2 {
            if botOneColorBackground == topThreeColorBackground && botOneSymbol == topThreeSymbol {
                runOrNot -= 1
            }
        }
        
        if runOrNot == 1 {
            if botOneColorBackground == topFourColorBackground && botOneSymbol == topFourSymbol {
                runOrNot -= 1
            }
        }
    }
    

}
