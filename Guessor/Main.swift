//
//  Main.swift
//  Guessor
//
//  Created by Dardan on 3/25/16.
//  Copyright © 2016 Meha. All rights reserved.
//

import UIKit
import AVFoundation
import QuartzCore
import UIColor_Hex_Swift
import SpriteKit

extension BaseLevel {
    
    override func viewDidAppear(_ animated: Bool)
    {
        super.viewDidAppear(animated)
    }

    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        startTimer()
        
        topButtons = [topButtonNumberOne,topButtonNumberTwo,topButtonNumberThree,topButtonNumberFour]
        bottomButtons = [bottomButtonNumberOne,bottomButtonNumberTwo,bottomButtonNumberThree,bottomButtonNumberFour]
        
        generateTopAndBottomButtons()
        
        
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
    
    }
    
    func buttonRelease(sender: UIButton!){
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
                    scoreKeep.text = "\(points) / 100"
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

    
    func batteryProgressKeep(){
        
        batteryProgress.progress = UIDevice.current.batteryLevel
        
        if UIDevice.current.batteryLevel <= 0.2{ batteryProgress.progressTintColor = UIColor ("#ff4f51") }
    }
    
    func updateTimerBar(){ progressTimer.progress = Float(count)/10 }
    

    func update() {
        // testing
        if count < 5 {count = 5}
        
        lives = 3
        tempCountTracker = count
        
        if buttonIndex != 4{ generateAtLeastOneMatchBottomButtons() }
        
        if count > 0 {count -= 1}
        if count > 9 {count = 9}
        
        scoreKeep.text = "\(points) / 100"
        updateTimerBar()
        
    }
    
    func gamePausedMode(){
            gpView.isHidden = false
            stopTimer()
    }
    
    func gameUnpauseMode(){
            gpView.isHidden = true
            startTimer()
            gamePaused = true
    }
    
}
