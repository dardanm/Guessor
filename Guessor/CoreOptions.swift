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
    override var shouldAutorotate : Bool {
        if (UIDevice.current.orientation == UIDeviceOrientation.landscapeLeft ||
            UIDevice.current.orientation == UIDeviceOrientation.landscapeRight ||
            UIDevice.current.orientation == UIDeviceOrientation.unknown) {
                return false
        }
        else {
            return true
        }
    }
    
    override var supportedInterfaceOrientations : UIInterfaceOrientationMask {
        return [UIInterfaceOrientationMask.portrait ,UIInterfaceOrientationMask.portraitUpsideDown]
    }
    
    // function to delay executing code
    func delay(_ delay:Double, closure:@escaping ()->()) {
        DispatchQueue.main.asyncAfter(
            deadline: DispatchTime.now() + Double(Int64(delay * Double(NSEC_PER_SEC))) / Double(NSEC_PER_SEC), execute: closure)
    }
    
    // Try Again
    func tryAgain(){
        
//        enableButtons()
        runOrNot = 4
        scoreKeep = 0
        levelProgressBar.progress = 0
        coinLabel.text = "\(coin)"
//        generateTopAndBottomButtons()
//        realRandomGeneratorFirst()
        
        startTimer()
        
        count = 10

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
            //        enableButtons()

        delay(0.5){

        self.runOrNot = 4
        self.scoreKeep = 0
//        self.realRandomGeneratorFirst()
        }

            
        }
    }
    
    func resetRollZeroCount(){
        
        lives -= 1
        updateLivesLeftIcons()
        
        if lives > 0{

//            delay(0.5){
            self.startTimer()
        
            compare.counter = 10
            self.updateTimerBar()
            self.countDownLabel.text = "\(self.count)"
        
//            }

        }
        
    }
    
    func incorrectAnswer(){
        pressButtonWrongSound()
    }

    
    
    func correctAnswer(){
        
        if scoreKeep <= 3{
        pressButtonCorrectSound()
        }
        
        if scoreKeep == 4{
          pressCorrectFour()
        }
        
        updateLevel()
        
        // PROGRESS BAR
        progressTimer.progress = progressTimer.progress + 0.1
        countDownLabel.text = String(count)
        updateTimerBar()
        
    }
    
    func updateLevel(){
        
        if scoreKeep == 4{
        scoreTarget -= 10
        level.text = "\(scoreTarget)"
        
        coin += 1
        coinLabel.text = "\(coin)"
        // 500
        levelProgressBar.progress += 0.1
        }
        
        
    }
    

    
    func updateTimer(){
        
        for i in 0...9 {
            for j in 0...1 {
                if count >= 10 {
                    progressTimer.progress = 1.0
                }
                if count == Float(i) {
                    progressTimer.progress = Float(j)
                } else {
                    progressTimer.progress = -1
                }
            }
        }
        
//        if count >= 10 {
//            progressTimer.progress = 1.0
//        }
//        if count == 9 {
//            progressTimer.progress = 0.9
//        }
//        if count == 8 {
//            progressTimer.progress = 0.8
//        }
//        if count == 7 {
//            progressTimer.progress = 0.7
//        }
//        if count == 6 {
//            progressTimer.progress = 0.6
//        }
//        if count == 5 {
//            progressTimer.progress = 0.5
//        }
//        if count == 4 {
//            progressTimer.progress = 0.4
//        }
//        if count == 3 {
//            progressTimer.progress = 0.3
//        }
//        if count == 2 {
//            progressTimer.progress = 0.2
//        }
//        if count == 1 {
//            progressTimer.progress = 0.1
//        }
//        if count == 0 {
//            progressTimer.progress = 0.0
//        }
    }


    
    
    
    
}
