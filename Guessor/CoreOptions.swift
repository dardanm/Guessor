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
        
        startTimer()
        
        count = 10 + 1
        scoreKeep = 0
        score.text = "0" + "\(scoreKeep)"
        lives = 3
        runOrNot = 4
        
        lifeOne.backgroundColor = UIColor (netHex: 0xF54040)
        lifeTwo.backgroundColor = UIColor (netHex: 0xF54040)
        lifeThree.backgroundColor = UIColor (netHex: 0xF54040)
        
        tryAgainLabel.layer.opacity = 0
    }
    
    // Reset Roll
    func resetRoll(){
        
        enableButtons()
        
        // top numbers randomize
        numberOneOptionsColors()
        numberOneOptionsText()
        
        numberTwoOptionsColors()
        numberTwoOptionsText()
        
        numberThreeOptionsColors()
        numberThreeOptionsText()
        
        numberFourOptionsColors()
        numberFourOptionsText()
        
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
        
        startTimer()
        
        count = 10 + 1
        runOrNot = 4
        scoreKeep = 0
        score.text = "0" + "\(scoreKeep)"

    }
    
    
}