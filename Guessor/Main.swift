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
        
        topButtons = [topButtonNumberOne,topButtonNumberTwo,topButtonNumberThree,topButtonNumberFour]
        bottomButtons = [bottomButtonNumberOne,bottomButtonNumberTwo,bottomButtonNumberThree,bottomButtonNumberFour]
        
        coinLabel.text = "\(UserDefaults.standard.integer(forKey: "coinKey"))"
        
        // Battery
        UIDevice.current.isBatteryMonitoringEnabled = true
        batteryProgress.progress = UIDevice.current.batteryLevel
        batteryProgress.transform = levelProgressBar.transform.scaledBy(x: 1, y: 2)
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
           batteryProgress.progressTintColor = UIColor (netHex: 0xff4f51)
        }
    }
    
    func updateTimerBar(){
        
        progressTimer.progress = Float(count)/10
        
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
    
    // timer + timer progress bar
    func update() {
            
        lives = 3

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
        
        if count > 10 {
            count = 10
            self.countDownLabel.text = "\(count)"
        }
        
        updateTimerBar()
        
        // don't remove
        countDownLabel.text = String(count)

        generateAtLeastOneMatchBottomButtons()
        
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
