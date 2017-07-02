//
//  CoreOptions.swift
//  Guessor
//
//  Created by Dardan Meha on 7/1/17.
//  Copyright © 2017 Meha. All rights reserved.
//

import UIKit
import AVFoundation
import QuartzCore
import UIColor_Hex_Swift
import SpriteKit

extension BaseLevel {

    func update() {
        // testing
        if count < 5 {count = 5}
        
        lives = 3
        tempCountTracker = count
        
        if buttonIndex != 4{ generateAtLeastOneMatchBottomButtons() }
        
        if count > 0 {count -= 1}
        if count > 9 {count = 9}
        
        scoreKeep.text = "\(points) / \(pointsTarget)"
        updateTimerBar()
        
    }
    
    func gamePausedMode() {
        gpView.isHidden = false
        stopTimer()
    }
    
    func gameUnpauseMode() {
        gpView.isHidden = true
        startTimer()
        gamePaused = true
    }
    
    func setupScene() {
        
        // BATTERY
        UIDevice.current.isBatteryMonitoringEnabled = true
        batteryProgress.progress = UIDevice.current.batteryLevel
        batteryProgress.transform = levelProgressBar.transform.scaledBy(x: 1, y: 5)
        batteryProgressKeep()
        
        // Timer
        progressTimer.transform = progressTimer.transform.scaledBy(x: 1, y: 10)
        // "coin" / Coins bar
        levelProgressBar.transform = levelProgressBar.transform.scaledBy(x: 1, y: 8)
        coinLabel.text = "\(UserDefaults.standard.integer(forKey: "coinKey"))"
        
        // Add targets for bottoms buttons when they're pressed
        for i in 0..<bottomButtons.count {
            bottomButtons[i].addTarget(self, action: #selector(checkIfCorrect), for: .touchDown)
            // exclusive touch
            bottomButtons[i].isExclusiveTouch = true
            // dont strecth images
            bottomButtons[i].imageView?.contentMode = .scaleAspectFit
        }
        // when they're released
        for i in 0..<bottomButtons.count {bottomButtons[i].addTarget(self, action: #selector(buttonRelease), for: .touchUpInside)}
        
        generateTopAndBottomButtons()
        
    }
    
    func buttonRelease(sender: UIButton!) {
        if buttonIndex >= 4{
            if correctInARow == 4{
                correctInARow = 0
                coin += 3
                coinLabel.text = "\(coin)"
            }
            buttonIndex = 0
            generateTopButtons()
        }
        if buttonIndex == 4 && correctInARow != 4 {correctInARow = 0}
    }
    
    func checkIfCorrect(sender: UIButton!) {
        if buttonIndex == buttonIndex {
            // CORRECT BUTTON PRESSED
            if (((sender.backgroundColor == topButtons[buttonIndex].backgroundColor) &&
                (sender.currentImage?.imageAsset == topButtons[buttonIndex].currentImage?.imageAsset))){
                
                // double rewards if counter is higher than x
                if count >= 4 {
                    coin += 1
                    points += 2
                }
                
                coin += 1
                points += 2
                count += 2
                scoreKeep.text = "\(points) / \(pointsTarget)"
                coinLabel.text = "\(coin)"
                progressTimer.progress = Float(count)/10
                
                topButtons[buttonIndex].makeBackgroundGreen()
                pressButtonCorrectSound()
                
                buttonIndex += 1
                correctInARow += 1
                
                if buttonIndex >= 4 { pressCorrectFour() }
                
            } else {
                // INCORRECT BUTTON PRESSED
                //sender.makeBackgroundRed()
                pressButtonWrongSound()
                if coin >= 2{
                    coin -= 2
                    coinLabel.text = "\(coin)"
                }
                count -= 1
                progressTimer.progress = Float(count)/10
                
                correctInARow = 0
            }
        }
    }
    
    
    func batteryProgressKeep() {
        
        batteryProgress.progress = UIDevice.current.batteryLevel
        
        if UIDevice.current.batteryLevel <= 0.2{ batteryProgress.progressTintColor = UIColor ("#ff4f51") }
    }
    
    func updateTimerBar(){ progressTimer.progress = Float(count)/10 }

    // TIMER
    func startTimer(){ timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(UIMenuController.update), userInfo: nil, repeats: true) }
    func stopTimer(){ timer.invalidate() }

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

}
