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
        runOrNot = 4
        scoreKeep = 0
        xpProgressBar.progress = 0
        xp = 0
        xpLabel.text = "\(xp)"
        generateTopAndBottomButtons()
        realRandomGeneratorFirst()
        
        startTimer()
        
        count = 10
        self.countDownLabel.text = "\(count)"
        updateTimerBar()
        
        lives = 3
        
        lifeOne.backgroundColor = UIColor (netHex: 0xF54040)
        lifeTwo.backgroundColor = UIColor (netHex: 0xF54040)
        lifeThree.backgroundColor = UIColor (netHex: 0xF54040)
        
        tryAgainLabel.layer.opacity = 0
    }
    
    // Reset Roll
    func resetRoll(){
        
        startTimer()

        count += 2
        updateTimerBar()
        self.countDownLabel.text = "\(count)"
        
        if lives >= 1 {
        enableButtons()

        delay(0.5){
        self.runOrNot = 4
        self.scoreKeep = 0
        self.generateTopAndBottomButtons()
        self.realRandomGeneratorFirst()
        }

            
        }
    }
    
    func resetRollZeroCount(){
        
        lives -= 1
        updateLivesLeftIcons()
        
        if lives > 0{

        delay(0.5){
        self.runOrNot = 4
        self.scoreKeep = 0
        self.generateTopAndBottomButtons()
        self.realRandomGeneratorFirst()
        self.startTimer()
        
        self.count = 10
        self.updateTimerBar()
        self.countDownLabel.text = "\(self.count)"
        
        self.enableButtons()
        
        self.scoreKeep = 0
        

        }


        }
        
    }
    
    func correctAnswer(){
        pressButtonCorrectSound()
        
        updateLevel()
        
        // TIMER COUNT
        if scoreKeep <= 3 {
        count += 1
        countDownLabel.text = "\(count)"
        }
        // PROGRESS BAR
        progressTimer.progress = progressTimer.progress + 0.1
        countDownLabel.text = String(count)
        updateTimerBar()
        
    }
    
    func updateLevel(){
        
        if scoreKeep == 4{
        scoreTarget -= 10
        level.text = "Target \(scoreTarget)"
        
        xp += 1
        xpLabel.text = "\(xp)"
        // 500
        xpProgressBar.progress += 0.05
        }
        
        
//        if levelText == 1 {
//            xp += 1
//            xpLabel.text = "\(xp)"
//            xpProgressBar.progress += 0.10
//            if xp == 100 {
//                levelText = 2
//            }
//        }
//        if levelText >= 2 {
//            xp += 2
//            if runOrNot == 1{
//                xp += 3
//            }
//            xpLabel.text = "\(xp)"
//            xpProgressBar.progress += 0.05
//        }
        
        
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
    
    func updateTimer(){
        if count >= 10 {
            progressTimer.progress = 1.0
        }
        if count == 9 {
            progressTimer.progress = 0.9
        }
        if count == 8 {
            progressTimer.progress = 0.8
        }
        if count == 7 {
            progressTimer.progress = 0.7
        }
        if count == 6 {
            progressTimer.progress = 0.6
        }
        if count == 5 {
            progressTimer.progress = 0.5
        }
        if count == 4 {
            progressTimer.progress = 0.4
        }
        if count == 3 {
            progressTimer.progress = 0.3
        }
        if count == 2 {
            progressTimer.progress = 0.2
        }
        if count == 1 {
            progressTimer.progress = 0.1
        }
        if count == 0 {
            progressTimer.progress = 0.0
        }
    }
    

    

    
    
    
    
}