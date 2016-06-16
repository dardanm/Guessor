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
        levelProgressBar.progress = 0
        coin = 0
        coinLabel.text = "\(coin)"
        generateTopAndBottomButtons()
        realRandomGeneratorFirst()
        
        startTimer()
        
        count = 10
        resestTopColorBackground()
        resestBotColorBackground()
        self.countDownLabel.text = "\(count)"
        updateTimerBar()
        
        lives = 3
        updateLivesLeftIcons()
        
        tryAgainLabel.layer.opacity = 0
    }
    
    // Reset Roll
    func resetRoll(){
        stopTimer()
        startTimer()

        count += 2
        updateTimerBar()
        self.countDownLabel.text = "\(count)"
        
        if lives >= 1 {
        enableButtons()

        delay(0.5){
        self.resestTopColorBackground()
        self.resestBotColorBackground()
        self.runOrNot = 4
        self.scoreKeep = 0
        self.realRandomGeneratorFirst()
        }

            
        }
    }
    
    func resetRollZeroCount(){
        
        lives -= 1
        updateLivesLeftIcons()
        
        if lives > 0{

        delay(0.5){
        self.startTimer()
        
        self.count = 10
        self.updateTimerBar()
        self.countDownLabel.text = "\(self.count)"
        
        self.enableButtons()
        
        

        }


        }
        
    }
    
    // reset top buttons background color
    func resestTopColorBackground(){
        removeTopOneGreenBackground()
        removeTopTwoGreenBackground()
        removeTopThreeGreenBackground()
        removeTopFourGreenBackground()
    }
    
    // reset bottom buttons background color
    func resestBotColorBackground(){
        removeBotOneGreenBackground()
        removeBotTwoGreenBackground()
        removeBotThreeGreenBackground()
        removeBotFourGreenBackground()
        removeBotFiveGreenBackground()
        removeBotSixGreenBackground()
        removeBotSevenGreenBackground()
        removeBotEightGreenBackground()
        removeBotNineGreenBackground()
    }
    
    
    func correctAnswer(){
        
        if scoreKeep <= 3{
        pressButtonCorrectSound()
        }
        
        if scoreKeep == 4{
          pressButtonCorrectSound()
          pressCorrectFour()
        }
        
        if scoreKeep == 4{
           count = 10;
        }
        
        updateLevel()
        
        // PROGRESS BAR
        progressTimer.progress = progressTimer.progress + 0.2
        countDownLabel.text = String(count)
        updateTimerBar()
        
    }
    
    func updateLevel(){
        

        score += 5
        level.text = "\(score)"
        
        coin += 1
        coinLabel.text = "\(coin)"
        // 500
        levelProgressBar.progress += 0.1

        
        
    }
    

    
    func updateTimer(){

        if count == 5 {
            progressTimer.progress = 1.0
        }
        if count == 4 {
            progressTimer.progress = 0.75
        }
        if count == 3 {
            progressTimer.progress = 0.50
        }
        if count == 2 {
            progressTimer.progress = 0.25
        }
        if count == 1 {
            progressTimer.progress = 0.1
        }
        if count == 0 {
            progressTimer.progress = 0.0
        }
    }

    func updateTimer2(){
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