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

extension BaseLevel {
    
    // ========= MAIN
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        // TO-DO LIST
        // ** pause game when home button is pressed
        
        // Battery
        UIDevice.currentDevice().batteryMonitoringEnabled = true
        batteryProgress.progress = UIDevice.currentDevice().batteryLevel
        batteryProgress.transform = CGAffineTransformScale(xpProgressBar.transform, 1, 5)
        batteryProgressKeep()

        
        // Timer
        progressTimer.transform = CGAffineTransformScale(progressTimer.transform, 1, 22)
        startTimer()
        
        // "XP" / Coins bar
        xpProgressBar.transform = CGAffineTransformScale(xpProgressBar.transform, 1, 8)
        xpProgressBar.progress = 0.0
        
        // Coundown timer color
        countDownLabel.textColor = UIColor(netHex: 0xf36723)
        
        // Lives Color
        lifeOne.backgroundColor = UIColor (netHex: 0xF54040)
        lifeTwo.backgroundColor = UIColor (netHex: 0xF54040)
        lifeThree.backgroundColor = UIColor (netHex: 0xF54040)
        
        // Hide status bar
        prefersStatusBarHidden()
        
        // Set firstNUmber as first to check button
        runOrNot = 4
        

        realRandomGeneratorFirst()
//        realRandomGeneratorFirst()
        
        // try again
        tryAgainLabel.enabled = false
        tryAgainLabel.layer.opacity = 0
        
//        playBackgroundMusic("background.mp3")
//        backgroundMusicPlayer.volume = 0.5

        
    }
    
    func batteryProgressKeep(){
        
        batteryProgress.progress = UIDevice.currentDevice().batteryLevel
        
        if UIDevice.currentDevice().batteryLevel <= 0.2{
           batteryProgress.progressTintColor = UIColor (netHex: 0xff4f51)
        }
        
    }
    
    func updateTimerBar(){
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
        
        if (count == 1 || count == 2 || count == 3){
            countDownLabel.textColor = UIColor(netHex: 0xff0000)
        }
        
        if (count == 0){
            countDownLabel.textColor = UIColor(netHex: 0xff0000)
        }
        
        if count > 3 {
            countDownLabel.textColor = UIColor(netHex: 0xf36723)
        }
        
    }
    
    func updateLivesLeftIcons(){
        if lives <= 2 {lifeOne.backgroundColor = UIColor (netHex: 0xFFFFFF)}
        if lives <= 1 {lifeTwo.backgroundColor = UIColor (netHex: 0xFFFFFF)}
        if lives <= 0 {lifeThree.backgroundColor = UIColor (netHex: 0xFFFFFF)}
    }
    
    // timer + timer progress bar
    func update() {
        
        if count > 0 {
            count -= 1
        }
        
        if scoreKeep == 0{
            runOrNot = 4
        }
        
        updateTimerBar()
        updateLivesLeftIcons()
        
        if count <= 0 && lives > 0{
            disableButtons()
            stopTimer()
            resetRollZeroCount()
        }
        
        // don't remove
        countDownLabel.text = String(count)

        if xpProgressBar.progress == 1.0 {
            levelText += 1
        }
        
        if lives <= 0 {
            
            self.countDownLabel.text = "\(count)"
            updateTimerBar()
            stopTimer()
            disableButtons()
            generateLabel.layer.opacity = 0
            tryAgainLabel.layer.opacity = 1
            tryAgainLabel.enabled = true
        }
        
        if xpProgressBar.progress == 1.0 {
            xpProgressBar.progress = 0.0
        }
        
        generateButtonImages()
        
        
    }

    
    // check if game is finished
    func gameFinish(){
        
        updateLivesLeftIcons()
        
        if scoreKeep == 4 {
            disableButtons()
            stopTimer()
            resetRoll()
        }
        
        

        updateLivesLeftIcons()
        
        if count <= 0 && lives > 0{
            disableButtons()
            stopTimer()
            resetRollZeroCount()
        }
        
        // don't remove
        countDownLabel.text = String(count)
        
        if xpProgressBar.progress == 1.0 {
            levelText += 1
        }
        
        if lives <= 0 {
            
            self.countDownLabel.text = "\(count)"
            updateTimerBar()
            stopTimer()
            disableButtons()
            generateLabel.layer.opacity = 0
            tryAgainLabel.layer.opacity = 1
            tryAgainLabel.enabled = true
        }
        
        if xpProgressBar.progress == 1.0 {
            xpProgressBar.progress = 0.0
        }
        
        generateButtonImages()


    }
    
    
    
}

// EXTRA - OUTSIDE - EXTENSIONS


extension UIColor {
    convenience init(red: Int, green: Int, blue: Int) {
        assert(red >= 0 && red <= 255, "Invalid red component")
        assert(green >= 0 && green <= 255, "Invalid green component")
        assert(blue >= 0 && blue <= 255, "Invalid blue component")
        
        self.init(red: CGFloat(red) / 255.0, green: CGFloat(green) / 255.0, blue: CGFloat(blue) / 255.0, alpha: 1.0)
    }
    
    convenience init(netHex:Int) {
        self.init(red:(netHex >> 16) & 0xff, green:(netHex >> 8) & 0xff, blue:netHex & 0xff)
    }
}