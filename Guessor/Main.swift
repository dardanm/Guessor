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
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
            
        topButtons = [topButtonNumberOne,topButtonNumberTwo,topButtonNumberThree,topButtonNumberFour]
        bottomButtons = [bottomButtonNumberOne,bottomButtonNumberTwo,bottomButtonNumberThree,bottomButtonNumberFour]
        
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
        for i in 0..<bottomButtons.count {
            bottomButtons[i].addTarget(self, action: #selector(checkIfCorrect), for: .touchDown)
        }
        
        for i in 0..<bottomButtons.count {
            bottomButtons[i].addTarget(self, action: #selector(afterRelease), for: .touchUpInside)
        }
        
        generateTopAndBottomButtons()
        
        // Adding background
        //self.view.backgroundColor = UIColor(patternImage: UIImage(named: "background12@2x.jpg")!)
        
        gpView.isHidden = true
        
        
        


    }

    func poop(){
        print("poop")
    }

    func checkIfCorrect(sender: UIButton!) {
        if runOrNot == runOrNot {
            // CORRECT BUTTON PRESSED
            if (((sender.backgroundColor == topButtons[runOrNot].backgroundColor) &&
                 (sender.currentImage == topButtons[runOrNot].currentImage))){
                    coin += 1
                    count += 2
                    coinLabel.text = "\(coin)"
                    progressTimer.progress = Float(count)/10
                
                    sender.makeBackgroundGreen()
                    topButtons[runOrNot].makeBackgroundGreen()
                    pressButtonCorrectSound()
                
                    runOrNot += 1
                
                    correctInARow += 1
            } else {
            // INCORRECT BUTTON PRESSED
                    sender.makeBackgroundRed()
                    pressButtonWrongSound()
                    coin -= 2
                    count -= 1
                    coinLabel.text = "\(coin)"
                    progressTimer.progress = Float(count)/10
                
                    correctInARow = 0
            }
        }
    }
    
    func afterRelease(sender: UIButton){

    }

    
    func batteryProgressKeep(){
        
        batteryProgress.progress = UIDevice.current.batteryLevel
        
        if UIDevice.current.batteryLevel <= 0.2{
            
           batteryProgress.progressTintColor = UIColor ("ff4f51")
        }
    }
    
    func updateTimerBar(){
        
        progressTimer.progress = Float(count)/10
        
        if (count <= 3){
            progressTimer.progressTintColor = UIColor("#B24433")
        }
        
    }

    func update() {
        updateTimerBar()
        
        lives = 3
        tempCountTracker = count
        
        if runOrNot == 4 && correctInARow != 4 {
            correctInARow = 0
        }
        if runOrNot >= 4{
            pressCorrectFour()
            if correctInARow == 4{
                correctInARow = 0
                coin += 3
                coinLabel.text = "\(coin)"
            }
            runOrNot = 0
            generateTopButtons()
        }
        
        if count > 0 {
            count -= 1
        }

        if gamePaused == false {
        generateAtLeastOneMatchBottomButtons()
        }
        
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
