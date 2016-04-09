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
    func createBotNineSymbolRandom(){
        value = Int(arc4random_uniform(3) + 1)
        switch value {
        case 1: botNineSymbol = 1
        case 2: botNineSymbol = 2
        case 3: botNineSymbol = 3
        default: botNineSymbol = 10
        }
    }
    
    // BACKGROUND
    func createBotNineColorRandom(){
        value = Int(arc4random_uniform(4) + 1)
        switch value {
        case 1: botNineColorBackground = 1
        case 2: botNineColorBackground = 2
        case 3: botNineColorBackground = 3
        case 4: botNineColorBackground = 4
        default: botNineColorBackground = 10
        }
    }
    
    // IMAGE
    func updateBotNineImage(){
        if botNineSymbol == 1 {
            caneB9.hidden = false
            candyB9.hidden = true
            popB9.hidden = true
        }
        if botNineSymbol == 2 {
            caneB9.hidden = true
            candyB9.hidden = false
            popB9.hidden = true
        }
        if botNineSymbol == 3 {
            caneB9.hidden = true
            candyB9.hidden = true
            popB9.hidden = false
        }
    }
    
    // BUTTON DOWN PRESS
    func botNineDownPress(){
        if runOrNot == 4 {
            if botNineSymbol == topOneSymbol && botNineColorBackground == topOneColorBackground{
                scoreKeep += 1
                correctAnswer()
                // green color button - correct coice
                topOneLabelColor.backgroundColor = UIColor(netHex: 0x96f10d)
                botNineButtonColor.backgroundColor = UIColor(netHex: 0x96f10d)
                matchingAnswer = true
            } else {
                // subtract life if incorrect choice is chosen
                lives -= 1
                
                // red color button - incorrect choice
                botNineButtonColor.backgroundColor = UIColor(netHex: 0xff4f51)
                //                    disableButtons()
                pressButtonWrongSound()
            }
        }
        
        gameFinish()
        
        if runOrNot == 3 {
            if botNineSymbol == topTwoSymbol && botNineColorBackground == topTwoColorBackground{
                scoreKeep += 1
                correctAnswer()
                // green color button - correct coice
                topTwoLabelColor.backgroundColor = UIColor(netHex: 0x96f10d)
                botNineButtonColor.backgroundColor = UIColor(netHex: 0x96f10d)
                matchingAnswer = true
            } else {
                // subtract life if incorrect choice is chosen
                lives -= 1
                
                // red color button - incorrect choice
                botNineButtonColor.backgroundColor = UIColor(netHex: 0xff4f51)
                pressButtonWrongSound()
            }
        }
        
        gameFinish()
        
        if runOrNot == 2 {
            if botNineSymbol == topThreeSymbol && botNineColorBackground == topThreeColorBackground{
                scoreKeep += 1
                correctAnswer()
                // green color button - correct coice
                topThreeLabelColor.backgroundColor = UIColor(netHex: 0x96f10d)
                botNineButtonColor.backgroundColor = UIColor(netHex: 0x96f10d)
                matchingAnswer = true
            } else {
                // subtract life if incorrect choice is chosen
                lives -= 1
                
                // red color button - incorrect choice
                botNineButtonColor.backgroundColor = UIColor(netHex: 0xff4f51)
                pressButtonWrongSound()
            }
        }
        
        gameFinish()
        
        if runOrNot == 1 {
            if botNineSymbol == topFourSymbol && botNineColorBackground == topFourColorBackground{
                scoreKeep += 1
                correctAnswer()
                // green color button - correct coice
                topFourLabelColor.backgroundColor = UIColor(netHex: 0x96f10d)
                botNineButtonColor.backgroundColor = UIColor(netHex: 0x96f10d)
                matchingAnswer = true
            } else {
                // subtract life if incorrect choice is chosen
                lives -= 1
                
                // red color button - incorrect choice
                botNineButtonColor.backgroundColor = UIColor(netHex: 0xff4f51)
                pressButtonWrongSound()
            }
        }
        
        gameFinish()
    }
    
    // BUTTON RELEASE
    func botNineRelase(){
        if runOrNot == 4 {
            if botNineColorBackground == topOneColorBackground && botNineSymbol == topOneSymbol{
                runOrNot -= 1
            }
        }
        
        if runOrNot == 3 {
            if botNineColorBackground == topTwoColorBackground && botNineSymbol == topTwoSymbol {
                runOrNot -= 1
            }
        }
        
        if runOrNot == 2 {
            if botNineColorBackground == topThreeColorBackground && botNineSymbol == topThreeSymbol {
                runOrNot -= 1
            }
        }
        
        if runOrNot == 1 {
            if botNineColorBackground == topFourColorBackground && botNineSymbol == topFourSymbol {
                runOrNot -= 1
            }
        }
    }
    
    
}
