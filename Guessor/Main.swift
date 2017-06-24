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
        
        ///
        
        coinLabel.text = "\(UserDefaults.standard.integer(forKey: "coinKey"))"
        
        
        // Battery
        UIDevice.current.isBatteryMonitoringEnabled = true
        batteryProgress.progress = UIDevice.current.batteryLevel
        batteryProgress.transform = levelProgressBar.transform.scaledBy(x: 1, y: 6)
        batteryProgressKeep()
        
        // Timer
        progressTimer.transform = progressTimer.transform.scaledBy(x: 1, y: 10)
        startTimer()
        
        // "coin" / Coins bar
        levelProgressBar.transform = levelProgressBar.transform.scaledBy(x: 1, y: 8)
        
        // Coundown timer color
        countDownLabel.textColor = UIColor(netHex: 0xf36723)
        
        // Lives Color
        lifeOne.backgroundColor = UIColor (netHex: 0xF54040)
        lifeTwo.backgroundColor = UIColor (netHex: 0xF54040)
        lifeThree.backgroundColor = UIColor (netHex: 0xF54040)
        
        
        // Set firstNUmber as first to check button
        runOrNot = 4

        // try again
        tryAgainLabel.isEnabled = false
        tryAgainLabel.layer.opacity = 0
    
        runOrNot = 4
        
        generateTopAndBottomButtons()
        

    }
    
    func batteryProgressKeep(){
        
        batteryProgress.progress = UIDevice.current.batteryLevel
        
        if UIDevice.current.batteryLevel <= 0.2{
           batteryProgress.progressTintColor = UIColor (netHex: 0xff4f51)
        }
        
    }
    
    func updateTimerBar(){
        
//        progressTimer.progress = Float(compare.counter)/10
//        
//        if (compare.counter == 1 || compare.counter == 2 || compare.counter == 3){
//            countDownLabel.textColor = UIColor(netHex: 0xff0000)
//        }
//        
//        if (compare.counter == 0){
//            countDownLabel.textColor = UIColor(netHex: 0xff0000)
//        }
//        
//        if compare.counter > 3 {
//            countDownLabel.textColor = UIColor(netHex: 0xf36723)
//        }
        
    }
    
    func updateLivesLeftIcons(){
        
        func allLives(){
            lifeOne.isHidden = false
            lifeTwo.isHidden = false
            lifeThree.isHidden = false
        }
        
        if lives == 3{
           allLives()
        }
        if lives == 2{
            allLives()
            lifeOne.isHidden = true
        }
        if lives == 1{
            allLives()
            lifeTwo.isHidden = true
        }
        if lives == 0{
            lifeThree.isHidden = true        }
        if lives > 3{
            lives = 3
        }
    }
    
    
    // timer + timer progress bar
    func update() {


        gameFinish()
 
//        if compare.counter > 0 {
//            compare.counter -= 0.75
//        }
//        
//        if compare.counter > 10 {
//            compare.counter = 10
//            self.countDownLabel.text = "\(compare.counter)"
//        }
        
        if scoreKeep == 0{
            runOrNot = 4
        }
        
//        if compare.scoreKeep == 4 {
//            stopTimer()
//            pressCorrectFour()
//            coin += 1
//            coinLabel.text = "\(coin)"
//            compare.counter += 3
//            compare.scoreKeep = 0
//            resetRoll()
//            generateTopButtons()
//        }

        updateTimerBar()
        updateLivesLeftIcons()
        
//        if compare.counter <= 0 && lives > 0{
//            //            disableButtons()
//            stopTimer()
//            resetRollZeroCount()
//        }
//        
//        // don't remove
//        countDownLabel.text = String(compare.counter)
//
//        if levelProgressBar.progress == 1.0 {
//            levelText += 1
//        }
//        
//        if lives <= 0 {
//            
//            self.countDownLabel.text = "\(compare.counter)"
//            updateTimerBar()
//            stopTimer()
//            //            disableButtons()
//            generateLabel.layer.opacity = 0
//            tryAgainLabel.layer.opacity = 1
//            tryAgainLabel.isEnabled = true
//        }
        
        if levelProgressBar.progress == 1.0 {
            levelProgressBar.progress = 0.0
        }




    }

    
    // check if game is finished
    func gameFinish(){
        
        UserDefaults.standard.set(coin, forKey: "coinKey")
        coinLabel.text = "\(coin)"
        coin = UserDefaults.standard.integer(forKey: "coinKey")
        
        updateLivesLeftIcons()
        
//        if compare.counter > 10 {
//            compare.counter = 10
//            self.countDownLabel.text = "\(compare.counter)"
//        }
//        
//        updateLivesLeftIcons()
//        
//        if compare.counter <= 0 && lives > 0{
//            stopTimer()
//            resetRollZeroCount()
//        }
//        
//        // don't remove
//        countDownLabel.text = String(compare.counter)
//        
//        if levelProgressBar.progress == 1.0 {
//            levelText += 1
//        }
//        
//        if lives <= 0 {
//            
//            self.countDownLabel.text = "\(compare.counter)"
//            updateTimerBar()
//            stopTimer()
//            generateLabel.layer.opacity = 0
//            tryAgainLabel.layer.opacity = 1
//            tryAgainLabel.isEnabled = true
//        }
        
        if levelProgressBar.progress == 1.0 {
            levelProgressBar.progress = 0.0
        }
        
//        if compare.scoreKeep == 4 {
//            stopTimer()
//            resetRoll()
//            scoreKeep = 0
//            coin += 1
//            generateTopButtons2()
//        }

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
