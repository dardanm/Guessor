//
//  CoreOptions.swift
//  Guessor
//
//  Created by Dardan on 3/19/16.
//  Copyright © 2016 Meha. All rights reserved.
//

import UIKit
import AVFoundation
import QuartzCore

extension ViewController {
    

    
    func levelCompleteOptions(){
        levelComplete.textColor = UIColor (netHex: 0xFFFFFF)
        levelComplete.backgroundColor = UIColor (netHex: 0xA8E6CE)
        levelComplete.layer.opacity = 1.0
    }
    
    func randomizeTopNumbers(){
        value = Int(arc4random_uniform(3) + 1)
        switch value {
        case 1: firstNumber.text = "\(4)"
        case 2: firstNumber.text = "\(2)"
        case 3: if secondNumber.text != "\(2)"{
            firstNumber.text = "\(3)"
        } else {
            randomizeTopNumbers()
            }
        default: firstNumber.text = "\(20)"
        }
        
        value = Int(arc4random_uniform(3) + 1)
        switch value {
        case 1: secondNumber.text = "\(4)"
        case 2: secondNumber.text = "\(2)"
        case 3: if firstNumber.text != "\(2)"{
            secondNumber.text = "\(3)"
        } else {
            randomizeTopNumbers()
            }
        default: firstNumber.text = "\(20)"
        }
    }
    
    func wrongAnswer(){
        if buttonOneText.text == "\(3)" {
            pressButtonCorrectSound()
        }
        
        if buttonTwoText.text == "\(3)" {
            pressButtonCorrectSound()
        }
    }
    
    
    // LOCK PORTRAIT
    override func shouldAutorotate() -> Bool {
        if (UIDevice.currentDevice().orientation == UIDeviceOrientation.LandscapeLeft ||
            UIDevice.currentDevice().orientation == UIDeviceOrientation.LandscapeRight ||
            UIDevice.currentDevice().orientation == UIDeviceOrientation.Unknown) {
                return false
        }
        else {
            return true
        }
    }
    
    override func supportedInterfaceOrientations() -> UIInterfaceOrientationMask {
        return [UIInterfaceOrientationMask.Portrait ,UIInterfaceOrientationMask.PortraitUpsideDown]
    }
    
    // Try Again
    func tryAgain(){
        
        enableButtons()
        
        numberOneOptionsColors()
        numberTwoOptionsColors()
        numberThreeOptionsColors()
        numberFourOptionsColors()
        
        buttonOneOptionsText()
        buttonTwoOptionsText()
        buttonThreeOptionsText()
        buttonFourOptionsText()
        buttonFiveOptionsText()
        buttonSixOptionsText()
        buttonSevenOptionsText()
        buttonEightOptionsText()
        buttonNineOptionsText()
        
        buttonOneOptionsColors()
        buttonTwoOptionsColors()
        buttonThreeOptionsColors()
        buttonFourOptionsColors()
        buttonFiveOptionsColors()
        buttonSixOptionsColors()
        buttonSevenOptionsColors()
        buttonEightOptionsColors()
        buttonNineOptionsColors()
        
        shadowOptions()
        
        count = 10
        scoreKeep = 0
        score.text = "0" + "\(scoreKeep)"
        lives = 3
        
        lifeOne.backgroundColor = UIColor (netHex: 0xF54040)
        lifeTwo.backgroundColor = UIColor (netHex: 0xF54040)
        lifeThree.backgroundColor = UIColor (netHex: 0xF54040)
        
        tryAgainLabel.layer.opacity = 0
    }
    
    func newGameScreen(){
        
        enableButtons()
        
        numberOneOptionsColors()
        numberTwoOptionsColors()
        numberThreeOptionsColors()
        numberFourOptionsColors()
        
        buttonOneOptionsText()
        buttonTwoOptionsText()
        buttonThreeOptionsText()
        buttonFourOptionsText()
        buttonFiveOptionsText()
        buttonSixOptionsText()
        buttonSevenOptionsText()
        buttonEightOptionsText()
        buttonNineOptionsText()
        
        buttonOneOptionsColors()
        buttonTwoOptionsColors()
        buttonThreeOptionsColors()
        buttonFourOptionsColors()
        buttonFiveOptionsColors()
        buttonSixOptionsColors()
        buttonSevenOptionsColors()
        buttonEightOptionsColors()
        buttonNineOptionsColors()
        
        shadowOptions()
        
        count = 10
        scoreKeep = 0
        score.text = "0" + "\(scoreKeep)"
        lives = 3
        
        lifeOne.backgroundColor = UIColor (netHex: 0xF54040)
        lifeTwo.backgroundColor = UIColor (netHex: 0xF54040)
        lifeThree.backgroundColor = UIColor (netHex: 0xF54040)
        
        tryAgainLabel.layer.opacity = 0
        
    }
    

    
    
    
    
    
    
    
    
    
}