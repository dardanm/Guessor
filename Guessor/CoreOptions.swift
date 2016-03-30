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

extension BaseLevel {
    

    // "level complete" display options
    func levelCompleteOptions(){
        levelComplete.textColor = UIColor (netHex: 0xFFFFFF)
        levelComplete.backgroundColor = UIColor (netHex: 0xA8E6CE)
        levelComplete.layer.opacity = 1.0
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
    
    // function to delay executing code
    func delay(delay:Double, closure:()->()) {
        dispatch_after(
            dispatch_time(
                DISPATCH_TIME_NOW,
                Int64(delay * Double(NSEC_PER_SEC))
            ),
            dispatch_get_main_queue(), closure)
    }
    
    // Try Again
    func tryAgain(){
        
        enableButtons()
        
        startTimer()
        
//        count = 10 + 1
        scoreKeep = 0
        score.text = "0\(scoreKeep)"
        lives = 3
        
        lifeOne.backgroundColor = UIColor (netHex: 0xF54040)
        lifeTwo.backgroundColor = UIColor (netHex: 0xF54040)
        lifeThree.backgroundColor = UIColor (netHex: 0xF54040)
        
        // top numbers randomize
        numberOneOptionsColors()
        numberOneOptionsText()
        
        numberTwoOptionsColors()
        numberTwoOptionsText()
        
        numberThreeOptionsColors()
        numberThreeOptionsText()
        
        numberFourOptionsColors()
        numberFourOptionsText()
        
        // bottom numbers randomize
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
        
        tryAgainLabel.layer.opacity = 0
    }
    
    // Reset Roll
    func resetRoll(){
        
        enableButtons()
        
        startTimer()
        
//      count = 10 + 1
        
        delay(0.5){
        
        self.scoreKeep = 0
        self.score.text = "0\(self.scoreKeep)"
        self.levelComplete.layer.opacity = 0.0
            
            
        // top numbers randomize
        self.numberOneOptionsColors()
        self.numberOneOptionsText()
        
        self.numberTwoOptionsColors()
        self.numberTwoOptionsText()
        
        self.numberThreeOptionsColors()
        self.numberThreeOptionsText()
        
        self.numberFourOptionsColors()
        self.numberFourOptionsText()
        
        // bottom numbers randomize
        self.buttonOneOptionsText()
        self.buttonTwoOptionsText()
        self.buttonThreeOptionsText()
        self.buttonFourOptionsText()
        self.buttonFiveOptionsText()
        self.buttonSixOptionsText()
        self.buttonSevenOptionsText()
        self.buttonEightOptionsText()
        self.buttonNineOptionsText()
        
        self.buttonOneOptionsColors()
        self.buttonTwoOptionsColors()
        self.buttonThreeOptionsColors()
        self.buttonFourOptionsColors()
        self.buttonFiveOptionsColors()
        self.buttonSixOptionsColors()
        self.buttonSevenOptionsColors()
        self.buttonEightOptionsColors()
        self.buttonNineOptionsColors()
        }
            
        shadowOptions()
    }
    
    func correctAnswer(){
        pressButtonCorrectSound()
        
        updateLevel()
        
        // TIMER COUNT
        count += 1
        // PROGRESS BAR
        progressTimer.progress = progressTimer.progress + 0.1
        countDownLabel.text = String(count)
        
    }
    
    func updateLevel(){
        
        level.text = "LEVEL \(levelText)"
        
        if levelText == 1 {
            xp += 10
            xpLabel.text = "\(xp) / 120"
            xpProgressBar.progress += 0.10
            if xp == 100 {
                levelText = 2
            }
        }
        if levelText == 2 {
            xp += 20
            xpLabel.text = "\(xp) / 520"
            xpProgressBar.progress += 0.05
        }
        
        
    }
    
    func printTopNumbers(){
        print("Top Numbers:")
        print("1 " + "\(firstNumber.text)")
        print(firstNumber.backgroundColor)
        print("2 " + "\(secondNumber.text)")
        print(secondNumber.backgroundColor)
        print("3 " + "\(thirdNumber.text)")
        print(thirdNumber.backgroundColor)
        print("4 " + "\(fourthNumber.text)")
        print(fourthNumber.backgroundColor)

    }
    
    func printButtonNumbers(){
        print("Buttons:")
        print("1 " + "\(buttonOneText.text)")
        print(buttonOneLabel.backgroundColor)
        print("2 " + "\(buttonTwoText.text)")
        print(buttonTwoLabel.backgroundColor)
        print("3 " + "\(buttonThreeText.text)")
        print(buttonThreeLabel.backgroundColor)
        print("4 " + "\(buttonFourText.text)")
        print(buttonFourLabel.backgroundColor)
        print("5 " + "\(buttonFiveText.text)")
        print(buttonFiveLabel.backgroundColor)
        print("6 " + "\(buttonSixText.text)")
        print(buttonSixLabel.backgroundColor)
        print("7 " + "\(buttonSevenText.text)")
        print(buttonSevenLabel.backgroundColor)
        print("8 " + "\(buttonEightText.text)")
        print(buttonEightLabel.backgroundColor)
        print("9 " + "\(buttonNineText.text)")
        print(buttonNineLabel.backgroundColor)
    }
    
    func bugTestNumbers(){
        printTopNumbers()
        print(" ")
        printButtonNumbers()
        print(" ")
        print(" ")
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
}