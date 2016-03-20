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
    
    // ========= GUI / BUTTONS
    
    func shadowOptions() {
        firstNumber.layer.shadowRadius = 0
        firstNumber.layer.shadowOpacity = 1
        firstNumber.layer.shadowOffset = CGSizeMake(0, 4)
        
        secondNumber.layer.shadowRadius = 0
        secondNumber.layer.shadowOpacity = 1
        secondNumber.layer.shadowOffset = CGSizeMake(0, 4)
        
        thirdNumber.layer.shadowRadius = 0
        thirdNumber.layer.shadowOpacity = 1
        thirdNumber.layer.shadowOffset = CGSizeMake(0, 4)
        
        fourthNumber.layer.shadowRadius = 0
        fourthNumber.layer.shadowOpacity = 1
        fourthNumber.layer.shadowOffset = CGSizeMake(0, 4)
        
        buttonOneLabel.layer.shadowRadius = 0
        buttonOneLabel.layer.shadowOpacity = 1
        buttonOneLabel.layer.shadowOffset = CGSizeMake(0, 4)
        
        buttonTwoLabel.layer.shadowRadius = 0
        buttonTwoLabel.layer.shadowOpacity = 1
        buttonTwoLabel.layer.shadowOffset = CGSizeMake(0, 4)
        
        buttonThreeLabel.layer.shadowRadius = 0
        buttonThreeLabel.layer.shadowOpacity = 1
        buttonThreeLabel.layer.shadowOffset = CGSizeMake(0, 4)
        
        buttonFourLabel.layer.shadowRadius = 0
        buttonFourLabel.layer.shadowOpacity = 1
        buttonFourLabel.layer.shadowOffset = CGSizeMake(0, 4)
        
        buttonFiveLabel.layer.shadowRadius = 0
        buttonFiveLabel.layer.shadowOpacity = 1
        buttonFiveLabel.layer.shadowOffset = CGSizeMake(0, 4)
        
        buttonSixLabel.layer.shadowRadius = 0
        buttonSixLabel.layer.shadowOpacity = 1
        buttonSixLabel.layer.shadowOffset = CGSizeMake(0, 4)
        
        buttonSevenLabel.layer.shadowRadius = 0
        buttonSevenLabel.layer.shadowOpacity = 1
        buttonSevenLabel.layer.shadowOffset = CGSizeMake(0, 4)
        
        buttonEightLabel.layer.shadowRadius = 0
        buttonEightLabel.layer.shadowOpacity = 1
        buttonEightLabel.layer.shadowOffset = CGSizeMake(0, 4)
        
        buttonNineLabel.layer.shadowRadius = 0
        buttonNineLabel.layer.shadowOpacity = 1
        buttonNineLabel.layer.shadowOffset = CGSizeMake(0, 4)
    }
    
    func greenBackgroundOptions(){
        self.buttonOneOptionsColors()
        self.buttonOneOptionsText()
        self.buttonTwoOptionsColors()
        self.buttonTwoOptionsText()
        self.buttonThreeOptionsText()
        self.buttonThreeOptionsColors()
        self.buttonFourOptionsColors()
        self.buttonFourOptionsText()
        self.buttonFiveOptionsColors()
        self.buttonFiveOptionsText()
        self.buttonSixOptionsText()
        self.buttonSixOptionsColors()
        self.buttonSevenOptionsColors()
        self.buttonSevenOptionsText()
        self.buttonEightOptionsColors()
        self.buttonEightOptionsText()
        self.buttonNineOptionsText()
        self.buttonNineOptionsColors()
    }
    
    func disableButtons(){
        buttonOneLabel.enabled = false
        buttonTwoLabel.enabled = false
        buttonThreeLabel.enabled = false
        buttonFourLabel.enabled = false
        buttonFiveLabel.enabled = false
        buttonSixLabel.enabled = false
        buttonSevenLabel.enabled = false
        buttonEightLabel.enabled = false
        buttonNineLabel.enabled = false
        generateLabel.enabled = false
    }
    
    func enableButtons(){
        buttonOneLabel.enabled = true
        buttonTwoLabel.enabled = true
        buttonThreeLabel.enabled = true
        buttonFourLabel.enabled = true
        buttonFiveLabel.enabled = true
        buttonSixLabel.enabled = true
        buttonSevenLabel.enabled = true
        buttonEightLabel.enabled = true
        buttonNineLabel.enabled = true
        generateLabel.enabled = true
    }
    
    func levelCompleteOptions(){
        levelComplete.textColor = UIColor (netHex: 0xFFFFFF)
        levelComplete.backgroundColor = UIColor (netHex: 0xA8E6CE)
        levelComplete.layer.opacity = 1.0
    }
    
    
    func gameFinish(){
        
        if ( count == 0 ){
            disableButtons()
            tryAgainLabel.layer.opacity = 1
            tryAgainLabel.enabled = true
        }
        if ( lives == 0 ){
            disableButtons()
            tryAgainLabel.layer.opacity = 1
            tryAgainLabel.enabled = true
        }
        if scoreKeep == 4 {
            levelCompleteOptions()
            disableButtons()
            tryAgain()
            // time pause
            //            timer.invalidate()
        }
        if lives == 2 {lifeOne.backgroundColor = UIColor (netHex: 0xFFFFFF)}
        if lives == 1 {lifeTwo.backgroundColor = UIColor (netHex: 0xFFFFFF)}
        if lives == 0 {lifeThree.backgroundColor = UIColor (netHex: 0xFFFFFF)}
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
    
    
    
    
    
    
    
    
    
}