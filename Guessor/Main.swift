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

        coinLabel.text = "\(UserDefaults.standard.integer(forKey: "coinKey"))"
        
        // Battery
        UIDevice.current.isBatteryMonitoringEnabled = true
        batteryProgress.progress = UIDevice.current.batteryLevel
        batteryProgress.transform = levelProgressBar.transform.scaledBy(x: 1, y: 5)
        batteryProgressKeep()
        
        // Timer
        progressTimer.transform = progressTimer.transform.scaledBy(x: 1, y: 10)
        startTimer()
        
        // "coin" / Coins bar
        levelProgressBar.transform = levelProgressBar.transform.scaledBy(x: 1, y: 8)
        
        // try again
        tryAgainLabel.isEnabled = false
        tryAgainLabel.layer.opacity = 0
        
        // Add targets for bottoms buttons so when they're pressed,
        // they can be used to watch the top buttons
        for i in 0..<bottomButtonsCollection!.count {
            bottomButtonsCollection?[i].addTarget(self, action: #selector(checkIfCorrect), for: .touchDown)
        }
        
        buttonIndex = 0

        
        generateTopAndBottomButtons()
        
        // Adding background
        //self.view.backgroundColor = UIColor(patternImage: UIImage(named: "background12@2x.jpg")!)
        
        gpView.isHidden = true
        
        //topButtonsCollection.
        
    }

    func checkIfCorrect(sender: UIButton!) {
        if buttonIndex == buttonIndex {
            // CORRECT BUTTON PRESSED
            if (((sender.backgroundColor == topButtonsCollection?[buttonIndex].backgroundColor) &&
                 (sender.currentImage?.imageAsset == topButtonsCollection?[buttonIndex].currentImage?.imageAsset))){
                
                    coin += 1
                    count += 2
                    coinLabel.text = "\(coin)"
                    progressTimer.progress = Float(count)/10
                
                    sender.makeBackgroundGreen()
                    topButtonsCollection?[buttonIndex].makeBackgroundGreen()
                    pressButtonCorrectSound()
                
                    buttonIndex += 1
                
                    correctInARow += 1
            } else {
            // INCORRECT BUTTON PRESSED                
                    sender.makeBackgroundRed()
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
        
        if UIDevice.current.batteryLevel <= 0.2{
            
           batteryProgress.progressTintColor = UIColor ("#ff4f51")
        }
    }
    
    func updateTimerBar(){
        progressTimer.progress = Float(count)/10
    }

    func update() {
        
        updateTimerBar()
        
        lives = 3
        tempCountTracker = count
        
        if buttonIndex == 4 && correctInARow != 4 {
            correctInARow = 0
        }
        if buttonIndex >= 4{
            pressCorrectFour()
            if correctInARow == 4{
                correctInARow = 0
                coin += 3
                coinLabel.text = "\(coin)"
            }
            buttonIndex = 0
            generateTopButtons()
        }
        
        if count > 0 {
            count -= 1
        }

        generateAtLeastOneMatchBottomButtons()
        
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
