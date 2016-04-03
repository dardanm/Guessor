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

        count += 3
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
        }
        // PROGRESS BAR
        progressTimer.progress = progressTimer.progress + 0.1
        countDownLabel.text = String(count)
        updateTimerBar()
        
    }
    
    func updateLevel(){
        
        level.text = "LEVEL \(levelText)"
        
        if levelText == 1 {
            xp += 1
            xpLabel.text = "\(xp)"
            xpProgressBar.progress += 0.10
            if xp == 100 {
                levelText = 2
            }
        }
        if levelText >= 2 {
            xp += 2
            if runOrNot == 1{
                xp += 4
            }
            xpLabel.text = "\(xp)"
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
    
    func generateBottomButtons(){
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
        
        generateButtonImages()
    }
    
    func generateTopAndBottomButtons(){
        
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
        
        generateButtonImages()
        
    }
    
    
    
    func topNumbersEqualSomeBottomButton(){
        
        if
        (
        (       buttonOneText.text == firstNumber.text && buttonOneLabel.backgroundColor!.isEqual(numberOneLabel.backgroundColor)  ||
                buttonTwoText.text == firstNumber.text && buttonTwoLabel.backgroundColor!.isEqual(numberOneLabel.backgroundColor)  ||
                buttonThreeText.text == firstNumber.text && buttonThreeLabel.backgroundColor!.isEqual(numberOneLabel.backgroundColor)  ||
                buttonFourText.text == firstNumber.text && buttonFourLabel.backgroundColor!.isEqual(numberOneLabel.backgroundColor)  ||
                buttonFiveText.text == firstNumber.text && buttonFiveLabel.backgroundColor!.isEqual(numberOneLabel.backgroundColor)  ||
                buttonSixText.text == firstNumber.text && buttonSixLabel.backgroundColor!.isEqual(numberOneLabel.backgroundColor)  ||
                buttonSevenText.text == firstNumber.text && buttonSevenLabel.backgroundColor!.isEqual(numberOneLabel.backgroundColor)  ||
                buttonEightText.text == firstNumber.text && buttonEightLabel.backgroundColor!.isEqual(numberOneLabel.backgroundColor)  ||
                buttonNineText.text == firstNumber.text && buttonNineLabel.backgroundColor!.isEqual(numberOneLabel.backgroundColor) )
            
            &&
            
            // check second number
            (   buttonOneText.text == secondNumber.text && buttonOneLabel.backgroundColor!.isEqual(numberTwoLabel.backgroundColor)  ||
                buttonTwoText.text == secondNumber.text && buttonTwoLabel.backgroundColor!.isEqual(numberTwoLabel.backgroundColor)  ||
                buttonThreeText.text == secondNumber.text && buttonThreeLabel.backgroundColor!.isEqual(numberTwoLabel.backgroundColor)  ||
                buttonFourText.text == secondNumber.text && buttonFourLabel.backgroundColor!.isEqual(numberTwoLabel.backgroundColor)  ||
                buttonFiveText.text == secondNumber.text && buttonFiveLabel.backgroundColor!.isEqual(numberTwoLabel.backgroundColor)  ||
                buttonSixText.text == secondNumber.text && buttonSixLabel.backgroundColor!.isEqual(numberTwoLabel.backgroundColor)  ||
                buttonSevenText.text == secondNumber.text && buttonSevenLabel.backgroundColor!.isEqual(numberTwoLabel.backgroundColor)  ||
                buttonEightText.text == secondNumber.text && buttonEightLabel.backgroundColor!.isEqual(numberTwoLabel.backgroundColor)  ||
                buttonNineText.text == secondNumber.text && buttonNineLabel.backgroundColor!.isEqual(numberTwoLabel.backgroundColor) )
            
            &&
            
            // check third number
            (   buttonOneText.text == thirdNumber.text && buttonOneLabel.backgroundColor!.isEqual(numberThreeLabel.backgroundColor)  ||
                buttonTwoText.text == thirdNumber.text && buttonTwoLabel.backgroundColor!.isEqual(numberThreeLabel.backgroundColor)  ||
                buttonThreeText.text == thirdNumber.text && buttonThreeLabel.backgroundColor!.isEqual(numberThreeLabel.backgroundColor)  ||
                buttonFourText.text == thirdNumber.text && buttonFourLabel.backgroundColor!.isEqual(numberThreeLabel.backgroundColor)  ||
                buttonFiveText.text == thirdNumber.text && buttonFiveLabel.backgroundColor!.isEqual(numberThreeLabel.backgroundColor)  ||
                buttonSixText.text == thirdNumber.text && buttonSixLabel.backgroundColor!.isEqual(numberThreeLabel.backgroundColor)  ||
                buttonSevenText.text == thirdNumber.text && buttonSevenLabel.backgroundColor!.isEqual(numberThreeLabel.backgroundColor)  ||
                buttonEightText.text == thirdNumber.text && buttonEightLabel.backgroundColor!.isEqual(numberThreeLabel.backgroundColor)  ||
                buttonNineText.text == thirdNumber.text && buttonNineLabel.backgroundColor!.isEqual(numberThreeLabel.backgroundColor) )
            
            &&
            
            // check fourth number
            (   buttonOneText.text == fourthNumber.text && buttonOneLabel.backgroundColor!.isEqual(numberFourLabel.backgroundColor)  ||
                buttonTwoText.text == fourthNumber.text && buttonTwoLabel.backgroundColor!.isEqual(numberFourLabel.backgroundColor)  ||
                buttonThreeText.text == fourthNumber.text && buttonThreeLabel.backgroundColor!.isEqual(numberFourLabel.backgroundColor)  ||
                buttonFourText.text == fourthNumber.text && buttonFourLabel.backgroundColor!.isEqual(numberFourLabel.backgroundColor)  ||
                buttonFiveText.text == fourthNumber.text && buttonFiveLabel.backgroundColor!.isEqual(numberFourLabel.backgroundColor)  ||
                buttonSixText.text == fourthNumber.text && buttonSixLabel.backgroundColor!.isEqual(numberFourLabel.backgroundColor)  ||
                buttonSevenText.text == fourthNumber.text && buttonSevenLabel.backgroundColor!.isEqual(numberFourLabel.backgroundColor)  ||
                buttonEightText.text == fourthNumber.text && buttonEightLabel.backgroundColor!.isEqual(numberFourLabel.backgroundColor)  ||
                buttonNineText.text == fourthNumber.text && buttonNineLabel.backgroundColor!.isEqual(numberFourLabel.backgroundColor) )
        )
        {trueOrNot = true}
        
        
    }
    
    
    func realRandomGeneratorFirst(){
        
        repeat{
            generateTopAndBottomButtons()
            topNumbersEqualSomeBottomButton()
            print("before \(trueOrNot)")

                numberOneNoMatchCheck()

                numberTwoNoMatchCheck()
 
                numberThreeNoMatchCheck()

                numberFourNoMatchCheck()
            while trueOrNot == false {
                generateBottomButtons()
                topNumbersEqualSomeBottomButton()
            }
            print("after \(trueOrNot)")
            print("after \(runOrNot)")
        }
        
        while
        (
            // check first number
            (   !(buttonOneText.text == firstNumber.text && buttonOneLabel.backgroundColor!.isEqual(numberOneLabel.backgroundColor))  &&
                !(buttonTwoText.text == firstNumber.text && buttonTwoLabel.backgroundColor!.isEqual(numberOneLabel.backgroundColor)) &&
                !(buttonThreeText.text == firstNumber.text && buttonThreeLabel.backgroundColor!.isEqual(numberOneLabel.backgroundColor)) &&
                !(buttonFourText.text == firstNumber.text && buttonFourLabel.backgroundColor!.isEqual(numberOneLabel.backgroundColor)) &&
                !(buttonFiveText.text == firstNumber.text && buttonFiveLabel.backgroundColor!.isEqual(numberOneLabel.backgroundColor)) &&
                !(buttonSixText.text == firstNumber.text && buttonSixLabel.backgroundColor!.isEqual(numberOneLabel.backgroundColor)) &&
                !(buttonSevenText.text == firstNumber.text && buttonSevenLabel.backgroundColor!.isEqual(numberOneLabel.backgroundColor)) &&
                !(buttonEightText.text == firstNumber.text && buttonEightLabel.backgroundColor!.isEqual(numberOneLabel.backgroundColor)) &&
                !(buttonNineText.text == firstNumber.text && buttonNineLabel.backgroundColor!.isEqual(numberOneLabel.backgroundColor)) )
                
                &&
            
            // check second number
            (   !(buttonOneText.text == secondNumber.text && buttonOneLabel.backgroundColor!.isEqual(numberTwoLabel.backgroundColor))  &&
                !(buttonTwoText.text == secondNumber.text && buttonTwoLabel.backgroundColor!.isEqual(numberTwoLabel.backgroundColor)) &&
                !(buttonThreeText.text == secondNumber.text && buttonThreeLabel.backgroundColor!.isEqual(numberTwoLabel.backgroundColor)) &&
                !(buttonFourText.text == secondNumber.text && buttonFourLabel.backgroundColor!.isEqual(numberTwoLabel.backgroundColor)) &&
                !(buttonFiveText.text == secondNumber.text && buttonFiveLabel.backgroundColor!.isEqual(numberTwoLabel.backgroundColor)) &&
                !(buttonSixText.text == secondNumber.text && buttonSixLabel.backgroundColor!.isEqual(numberTwoLabel.backgroundColor)) &&
                !(buttonSevenText.text == secondNumber.text && buttonSevenLabel.backgroundColor!.isEqual(numberTwoLabel.backgroundColor)) &&
                !(buttonEightText.text == secondNumber.text && buttonEightLabel.backgroundColor!.isEqual(numberTwoLabel.backgroundColor)) &&
                !(buttonNineText.text == secondNumber.text && buttonNineLabel.backgroundColor!.isEqual(numberTwoLabel.backgroundColor)) )
            
                &&
                
            // check third number
            (   !(buttonOneText.text == thirdNumber.text && buttonOneLabel.backgroundColor!.isEqual(numberThreeLabel.backgroundColor))  &&
                !(buttonTwoText.text == thirdNumber.text && buttonTwoLabel.backgroundColor!.isEqual(numberThreeLabel.backgroundColor)) &&
                !(buttonThreeText.text == thirdNumber.text && buttonThreeLabel.backgroundColor!.isEqual(numberThreeLabel.backgroundColor)) &&
                !(buttonFourText.text == thirdNumber.text && buttonFourLabel.backgroundColor!.isEqual(numberThreeLabel.backgroundColor)) &&
                !(buttonFiveText.text == thirdNumber.text && buttonFiveLabel.backgroundColor!.isEqual(numberThreeLabel.backgroundColor)) &&
                !(buttonSixText.text == thirdNumber.text && buttonSixLabel.backgroundColor!.isEqual(numberThreeLabel.backgroundColor)) &&
                !(buttonSevenText.text == thirdNumber.text && buttonSevenLabel.backgroundColor!.isEqual(numberThreeLabel.backgroundColor)) &&
                !(buttonEightText.text == thirdNumber.text && buttonEightLabel.backgroundColor!.isEqual(numberThreeLabel.backgroundColor)) &&
                !(buttonNineText.text == thirdNumber.text && buttonNineLabel.backgroundColor!.isEqual(numberThreeLabel.backgroundColor)) )
            
                &&
                
            // check fourth number
            (   !(buttonOneText.text == fourthNumber.text && buttonOneLabel.backgroundColor!.isEqual(numberFourLabel.backgroundColor))  &&
                !(buttonTwoText.text == fourthNumber.text && buttonTwoLabel.backgroundColor!.isEqual(numberFourLabel.backgroundColor)) &&
                !(buttonThreeText.text == fourthNumber.text && buttonThreeLabel.backgroundColor!.isEqual(numberFourLabel.backgroundColor)) &&
                !(buttonFourText.text == fourthNumber.text && buttonFourLabel.backgroundColor!.isEqual(numberFourLabel.backgroundColor)) &&
                !(buttonFiveText.text == fourthNumber.text && buttonFiveLabel.backgroundColor!.isEqual(numberFourLabel.backgroundColor)) &&
                !(buttonSixText.text == fourthNumber.text && buttonSixLabel.backgroundColor!.isEqual(numberFourLabel.backgroundColor)) &&
                !(buttonSevenText.text == fourthNumber.text && buttonSevenLabel.backgroundColor!.isEqual(numberFourLabel.backgroundColor)) &&
                !(buttonEightText.text == fourthNumber.text && buttonEightLabel.backgroundColor!.isEqual(numberFourLabel.backgroundColor)) &&
                !(buttonNineText.text == fourthNumber.text && buttonNineLabel.backgroundColor!.isEqual(numberFourLabel.backgroundColor)) )
            
                &&
                trueOrNot == false
            

            
        )// end while par
        
        

        
        
    }
    
    
    func numberOneNoMatchCheck(){
        if
        (
            !(buttonOneText.text == firstNumber.text && buttonOneLabel.backgroundColor!.isEqual(numberOneLabel.backgroundColor))  &&
            !(buttonTwoText.text == firstNumber.text && buttonTwoLabel.backgroundColor!.isEqual(numberOneLabel.backgroundColor)) &&
            !(buttonThreeText.text == firstNumber.text && buttonThreeLabel.backgroundColor!.isEqual(numberOneLabel.backgroundColor)) &&
            !(buttonFourText.text == firstNumber.text && buttonFourLabel.backgroundColor!.isEqual(numberOneLabel.backgroundColor)) &&
            !(buttonFiveText.text == firstNumber.text && buttonFiveLabel.backgroundColor!.isEqual(numberOneLabel.backgroundColor)) &&
            !(buttonSixText.text == firstNumber.text && buttonSixLabel.backgroundColor!.isEqual(numberOneLabel.backgroundColor)) &&
            !(buttonSevenText.text == firstNumber.text && buttonSevenLabel.backgroundColor!.isEqual(numberOneLabel.backgroundColor)) &&
            !(buttonEightText.text == firstNumber.text && buttonEightLabel.backgroundColor!.isEqual(numberOneLabel.backgroundColor)) &&
            !(buttonNineText.text == firstNumber.text && buttonNineLabel.backgroundColor!.isEqual(numberOneLabel.backgroundColor))
            
            )
        {trueOrNot = false}
    }
    
    func numberTwoNoMatchCheck(){
        if
            (   !(buttonOneText.text == secondNumber.text && buttonOneLabel.backgroundColor!.isEqual(numberTwoLabel.backgroundColor))  &&
                !(buttonTwoText.text == secondNumber.text && buttonTwoLabel.backgroundColor!.isEqual(numberTwoLabel.backgroundColor)) &&
                !(buttonThreeText.text == secondNumber.text && buttonThreeLabel.backgroundColor!.isEqual(numberTwoLabel.backgroundColor)) &&
                !(buttonFourText.text == secondNumber.text && buttonFourLabel.backgroundColor!.isEqual(numberTwoLabel.backgroundColor)) &&
                !(buttonFiveText.text == secondNumber.text && buttonFiveLabel.backgroundColor!.isEqual(numberTwoLabel.backgroundColor)) &&
                !(buttonSixText.text == secondNumber.text && buttonSixLabel.backgroundColor!.isEqual(numberTwoLabel.backgroundColor)) &&
                !(buttonSevenText.text == secondNumber.text && buttonSevenLabel.backgroundColor!.isEqual(numberTwoLabel.backgroundColor)) &&
                !(buttonEightText.text == secondNumber.text && buttonEightLabel.backgroundColor!.isEqual(numberTwoLabel.backgroundColor)) &&
                !(buttonNineText.text == secondNumber.text && buttonNineLabel.backgroundColor!.isEqual(numberTwoLabel.backgroundColor)) )
        {trueOrNot = false}
    }
    
    func numberThreeNoMatchCheck(){
        if
            (   !(buttonOneText.text == thirdNumber.text && buttonOneLabel.backgroundColor!.isEqual(numberThreeLabel.backgroundColor))  &&
                !(buttonTwoText.text == thirdNumber.text && buttonTwoLabel.backgroundColor!.isEqual(numberThreeLabel.backgroundColor)) &&
                !(buttonThreeText.text == thirdNumber.text && buttonThreeLabel.backgroundColor!.isEqual(numberThreeLabel.backgroundColor)) &&
                !(buttonFourText.text == thirdNumber.text && buttonFourLabel.backgroundColor!.isEqual(numberThreeLabel.backgroundColor)) &&
                !(buttonFiveText.text == thirdNumber.text && buttonFiveLabel.backgroundColor!.isEqual(numberThreeLabel.backgroundColor)) &&
                !(buttonSixText.text == thirdNumber.text && buttonSixLabel.backgroundColor!.isEqual(numberThreeLabel.backgroundColor)) &&
                !(buttonSevenText.text == thirdNumber.text && buttonSevenLabel.backgroundColor!.isEqual(numberThreeLabel.backgroundColor)) &&
                !(buttonEightText.text == thirdNumber.text && buttonEightLabel.backgroundColor!.isEqual(numberThreeLabel.backgroundColor)) &&
                !(buttonNineText.text == thirdNumber.text && buttonNineLabel.backgroundColor!.isEqual(numberThreeLabel.backgroundColor)) )
        {trueOrNot = false}
    }
    
    func numberFourNoMatchCheck(){
        if
            (   !(buttonOneText.text == fourthNumber.text && buttonOneLabel.backgroundColor!.isEqual(numberFourLabel.backgroundColor))  &&
                !(buttonTwoText.text == fourthNumber.text && buttonTwoLabel.backgroundColor!.isEqual(numberFourLabel.backgroundColor)) &&
                !(buttonThreeText.text == fourthNumber.text && buttonThreeLabel.backgroundColor!.isEqual(numberFourLabel.backgroundColor)) &&
                !(buttonFourText.text == fourthNumber.text && buttonFourLabel.backgroundColor!.isEqual(numberFourLabel.backgroundColor)) &&
                !(buttonFiveText.text == fourthNumber.text && buttonFiveLabel.backgroundColor!.isEqual(numberFourLabel.backgroundColor)) &&
                !(buttonSixText.text == fourthNumber.text && buttonSixLabel.backgroundColor!.isEqual(numberFourLabel.backgroundColor)) &&
                !(buttonSevenText.text == fourthNumber.text && buttonSevenLabel.backgroundColor!.isEqual(numberFourLabel.backgroundColor)) &&
                !(buttonEightText.text == fourthNumber.text && buttonEightLabel.backgroundColor!.isEqual(numberFourLabel.backgroundColor)) &&
                !(buttonNineText.text == fourthNumber.text && buttonNineLabel.backgroundColor!.isEqual(numberFourLabel.backgroundColor)) )
        {trueOrNot = false}
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    // outdate
    func realRandomGeneratorOld() {
        
        
        generateTopAndBottomButtons()
        
        var i: Int = 5
        
        while i >= 0 {
            print(i)
            i -= 1
        }
        print("success!")
        
        var count:Int = 0
        
        while count == 0 {
        
        if numberTrackerForRandomizing == 0 {
            
        if numberTrackerForRandomizing == 0 {
        if buttonOneText.text == firstNumber.text && buttonOneLabel.backgroundColor!.isEqual(numberOneLabel.backgroundColor){
            numberTrackerForRandomizing += 1
            count += 1
            }
        }
        if numberTrackerForRandomizing == 0 {
        if buttonTwoText.text == firstNumber.text && buttonTwoLabel.backgroundColor!.isEqual(numberOneLabel.backgroundColor){
            numberTrackerForRandomizing += 1
            count += 1
            }
        }
        if numberTrackerForRandomizing == 0 {
        if buttonThreeText.text == firstNumber.text && buttonThreeLabel.backgroundColor!.isEqual(numberOneLabel.backgroundColor){
            numberTrackerForRandomizing += 1
            count += 1
            }
        }
        if numberTrackerForRandomizing == 0 {
        if buttonFourText.text == firstNumber.text && buttonFourLabel.backgroundColor!.isEqual(numberOneLabel.backgroundColor){
            numberTrackerForRandomizing += 1
            count += 1
            }
        }
        if numberTrackerForRandomizing == 0 {
        if buttonFiveText.text == firstNumber.text && buttonFiveLabel.backgroundColor!.isEqual(numberOneLabel.backgroundColor){
            numberTrackerForRandomizing += 1
            count += 1
            }
        }
        if numberTrackerForRandomizing == 0 {
        if buttonSixText.text == firstNumber.text && buttonSixLabel.backgroundColor!.isEqual(numberOneLabel.backgroundColor){
            numberTrackerForRandomizing += 1
            count += 1
            }
        }
        if numberTrackerForRandomizing == 0 {
        if buttonSevenText.text == firstNumber.text && buttonSevenLabel.backgroundColor!.isEqual(numberOneLabel.backgroundColor){
            numberTrackerForRandomizing += 1
            count += 1
            }
        }
            
        if numberTrackerForRandomizing == 0 {
        if buttonEightText.text == firstNumber.text && buttonEightLabel.backgroundColor!.isEqual(numberOneLabel.backgroundColor){
            numberTrackerForRandomizing += 1
            count += 1
            }
        }
        if numberTrackerForRandomizing == 0 {
        if buttonNineText.text == firstNumber.text && buttonNineLabel.backgroundColor!.isEqual(numberOneLabel.backgroundColor){
            numberTrackerForRandomizing += 1
            count += 1
            }
        }
        
        if count == 0 {
          generateTopAndBottomButtons()
        }
            
        } // end 'if numberTrackerForRandomizing == 0'
            
        } // end while loop

        // reset count to zero aftering finding answer for #1
        count = 0
    
        
        while count == 0 {
            
            if numberTrackerForRandomizing == 0 {
                
                if numberTrackerForRandomizing == 0 {
                    if buttonOneText.text == secondNumber.text && buttonOneLabel.backgroundColor!.isEqual(numberTwoLabel.backgroundColor){
                        numberTrackerForRandomizing += 1
                        count += 1
                    }
                }
                if numberTrackerForRandomizing == 0 {
                    if buttonTwoText.text == secondNumber.text && buttonTwoLabel.backgroundColor!.isEqual(numberTwoLabel.backgroundColor){
                        numberTrackerForRandomizing += 1
                        count += 1
                    }
                }
                if numberTrackerForRandomizing == 0 {
                    if buttonThreeText.text == secondNumber.text && buttonThreeLabel.backgroundColor!.isEqual(numberTwoLabel.backgroundColor){
                        numberTrackerForRandomizing += 1
                        count += 1
                    }
                }
                if numberTrackerForRandomizing == 0 {
                    if buttonFourText.text == secondNumber.text && buttonFourLabel.backgroundColor!.isEqual(numberTwoLabel.backgroundColor){
                        numberTrackerForRandomizing += 1
                        count += 1
                    }
                }
                if numberTrackerForRandomizing == 0 {
                    if buttonFiveText.text == secondNumber.text && buttonFiveLabel.backgroundColor!.isEqual(numberTwoLabel.backgroundColor){
                        numberTrackerForRandomizing += 1
                        count += 1
                    }
                }
                if numberTrackerForRandomizing == 0 {
                    if buttonSixText.text == secondNumber.text && buttonSixLabel.backgroundColor!.isEqual(numberTwoLabel.backgroundColor){
                        numberTrackerForRandomizing += 1
                        count += 1
                    }
                }
                if numberTrackerForRandomizing == 0 {
                    if buttonSevenText.text == secondNumber.text && buttonSevenLabel.backgroundColor!.isEqual(numberTwoLabel.backgroundColor){
                        numberTrackerForRandomizing += 1
                        count += 1
                    }
                }
                if numberTrackerForRandomizing == 0 {
                    if buttonEightText.text == secondNumber.text && buttonEightLabel.backgroundColor!.isEqual(numberTwoLabel.backgroundColor){
                        numberTrackerForRandomizing += 1
                        count += 1
                    }
                }
                if numberTrackerForRandomizing == 0 {
                    if buttonNineText.text == secondNumber.text && buttonNineLabel.backgroundColor!.isEqual(numberTwoLabel.backgroundColor){
                        numberTrackerForRandomizing += 1
                        count += 1
                    }
                }
                
                if count == 0 {
                    
                    generateTopAndBottomButtons()
                }
                
            } // end 'if numberTrackerForRandomizing == 0'
            
        } // end while loop
        
        // reset count to zero aftering finding answer for #1
        count = 0
    

    }

    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
}