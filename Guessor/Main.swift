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
        UIDevice.current.isBatteryMonitoringEnabled = true
        batteryProgress.progress = UIDevice.current.batteryLevel
        batteryProgress.transform = levelProgressBar.transform.scaledBy(x: 1, y: 6)
        batteryProgressKeep()

        
        
        // Timer
        progressTimer.transform = progressTimer.transform.scaledBy(x: 1, y: 10)
        startTimer()
        progressTimer.progressTintColor = UIColor(netHex: 0xf3a41b)
        
        // "coin" / Coins bar
        levelProgressBar.transform = levelProgressBar.transform.scaledBy(x: 1, y: 8)
//        levelProgressBar.progress = 0.0
        
        // Coundown timer color
        countDownLabel.textColor = UIColor(netHex: 0xf36723)
        
        // Lives Color
        lifeOne.backgroundColor = UIColor (netHex: 0xF54040)
        lifeTwo.backgroundColor = UIColor (netHex: 0xF54040)
        lifeThree.backgroundColor = UIColor (netHex: 0xF54040)
        
        // Hide status bar
        prefersStatusBarHidden
        
        // Set firstNUmber as first to check button
        runOrNot = 4

//        realRandomGeneratorFirst()
        realRandomGeneratorFirst()
        
        // try again
        tryAgainLabel.isEnabled = false
        tryAgainLabel.layer.opacity = 0
        
//        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "background4.png")!)
        
        coinLabel.textColor = UIColor(netHex: 0xa3a3a3)
        
        topSmallOneSymbol.textColor = UIColor(netHex: 0x7f7f7f)
        topSmallTwoSymbol.textColor = UIColor(netHex: 0x7f7f7f)
        topSmallThreeSymbol.textColor = UIColor(netHex: 0x7f7f7f)
        topSmallFourSymbol.textColor = UIColor(netHex: 0x7f7f7f)
        topSmallOneColor.backgroundColor = UIColor(netHex: 0xffffff)
        topSmallTwoColor.backgroundColor = UIColor(netHex: 0xffffff)
        topSmallThreeColor.backgroundColor = UIColor(netHex: 0xffffff)
        topSmallFourColor.backgroundColor = UIColor(netHex: 0xffffff)
        topSmallOneColor.layer.opacity = 1.0
        topSmallTwoColor.layer.opacity = 1.0
        topSmallThreeColor.layer.opacity = 1.0
        topSmallFourColor.layer.opacity = 1.0
        
        countDownLabel.text = String(count/2)
        
        do {
            try AVAudioSession.sharedInstance().setCategory(AVAudioSessionCategoryAmbient)
            try AVAudioSession.sharedInstance().setActive(true)
        } catch let error as NSError {
            print(error)
        }

        
    }
    

    
    func batteryProgressKeep(){
        
        batteryProgress.progress = UIDevice.current.batteryLevel
        
        if UIDevice.current.batteryLevel <= 0.2{
           batteryProgress.progressTintColor = UIColor (netHex: 0xff4f51)
        }
        
    }
    
    func updateTimerBar(){
        
        progressTimer.progress = Float(count)/10
        
        if (count == 2 || count == 4){
            countDownLabel.textColor = UIColor(netHex: 0xff0000)
            progressTimer.progressTintColor = UIColor(netHex: 0xf36723)
        }
        
        if (count == 2){
            countDownLabel.textColor = UIColor(netHex: 0xff0000)
            progressTimer.progressTintColor = UIColor(netHex: 0xff0000)
        }
        
        if count >= 6 {
            countDownLabel.textColor = UIColor(netHex: 0xf36723)
            progressTimer.progressTintColor = UIColor(netHex: 0xf3a41b)
        }
        
    }
    
    func updateLivesLeftIcons(){
        if lives == 3{
            lifeOne.layer.opacity = 1.0
            lifeTwo.layer.opacity = 1.0
            lifeThree.layer.opacity = 1.0
        }
        if lives == 2{
            lifeOne.layer.opacity = 0.0
            lifeTwo.backgroundColor = UIColor (netHex: 0xF54040)
            lifeThree.backgroundColor = UIColor (netHex: 0xF54040)
        }
        if lives == 1{
            lifeOne.layer.opacity = 0.0
            lifeTwo.layer.opacity = 0.0
            lifeThree.backgroundColor = UIColor (netHex: 0xF54040)
        }
        if lives == 0{
            lifeOne.layer.opacity = 0.0
            lifeTwo.layer.opacity = 0.0
            lifeThree.layer.opacity = 0.0
        }
        if lives > 3{
            lives = 3
        }
    }
    
    // timer + timer progress bar
    func update() {
        
        if count > 0 {
            // 5 seconds
            count -= 2
        }
        
        if count > 10 {
            count = 10
            self.countDownLabel.text = "\(count)"
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
        countDownLabel.text = String(count/2)

        if levelProgressBar.progress == 1.0 {
            levelText += 1
        }
        
        if lives <= 0 {
            
            self.countDownLabel.text = "\(count)"
            updateTimerBar()
            stopTimer()
            disableButtons()
            generateLabel.layer.opacity = 0
            tryAgainLabel.layer.opacity = 1
            tryAgainLabel.isEnabled = true
        }
        
        if levelProgressBar.progress == 1.0 {
            levelProgressBar.progress = 0.0
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
        
        if count > 10 {
            count = 10
            self.countDownLabel.text = "\(count)"
        }
        

        updateLivesLeftIcons()
        
        if count <= 0 && lives > 0{
            stopTimer()
            resetRollZeroCount()
        }
        
        // don't remove
        countDownLabel.text = String(count)
        
        if levelProgressBar.progress == 1.0 {
            levelText += 1
        }
        
        if lives <= 0 {
            
            self.countDownLabel.text = "\(count)"
            updateTimerBar()
            stopTimer()
            disableButtons()
            generateLabel.layer.opacity = 0
            tryAgainLabel.layer.opacity = 1
            tryAgainLabel.isEnabled = true
        }
        
        if levelProgressBar.progress == 1.0 {
            levelProgressBar.progress = 0.0
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
