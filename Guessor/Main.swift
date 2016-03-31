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
        
        // BUGS
        
        // Battery
        UIDevice.currentDevice().batteryMonitoringEnabled = true
        func batteryLevel() -> Float {
            return UIDevice.currentDevice().batteryLevel
        }
        
//        batteryNumber = Int(UIDevice.currentDevice().batteryLevel*100)
        batteryProgress.progress = UIDevice.currentDevice().batteryLevel
        
        batteryProgress.transform = CGAffineTransformScale(xpProgressBar.transform, 1, 5)
        batteryProgressKeep()
        // battery check timer
        var batteryTimer = NSTimer.scheduledTimerWithTimeInterval(1, target: self, selector: #selector(BaseLevel.batteryProgressKeep), userInfo: nil, repeats: true)

        
        
        // Timer
        progressTimer.transform = CGAffineTransformScale(progressTimer.transform, 1, 22)
        
        startTimer()
        
        xpProgressBar.transform = CGAffineTransformScale(xpProgressBar.transform, 1, 8)
        xpProgressBar.progress = 0.0
        
        countDownLabel.textColor = UIColor(netHex: 0xf36723)
        
        testingLabel.backgroundColor = UIColor (netHex: 0x8ef32f)
        testingLabel.layer.opacity = 0
        
        lifeOne.backgroundColor = UIColor (netHex: 0xF54040)
        lifeTwo.backgroundColor = UIColor (netHex: 0xF54040)
        lifeThree.backgroundColor = UIColor (netHex: 0xF54040)
        
        // round buttons
        self.firstNumber.layer.cornerRadius = 5.0
        self.firstNumber.clipsToBounds = true
        
        self.secondNumber.layer.cornerRadius = 5.0
        self.secondNumber.clipsToBounds = true
        
        self.thirdNumber.layer.cornerRadius = 5.0
        self.thirdNumber.clipsToBounds = true
        
        self.fourthNumber.layer.cornerRadius = 5.0
        self.fourthNumber.clipsToBounds = true
        
        prefersStatusBarHidden()
        
        runOrNot = 4
        
        // top numbers randomize
        generateTopButtons()
        numberOneOptionsColors()
        
        numberTwoOptionsColors()
        
        numberThreeOptionsColors()
        
        numberFourOptionsColors()
        
        // bottom buttons randomize numbers
        generateBottomButtons()
        
        // bottom buttons randomize background colors
        buttonOneOptionsColors()
        buttonTwoOptionsColors()
        buttonThreeOptionsColors()
        buttonFourOptionsColors()
        buttonFiveOptionsColors()
        buttonSixOptionsColors()
        buttonSevenOptionsColors()
        buttonEightOptionsColors()
        buttonNineOptionsColors()
        
        // set shadow options for buttons
        shadowOptions()
        
        // try again
        tryAgainLabel.enabled = false
        tryAgainLabel.layer.opacity = 0
        
        playBackgroundMusic("background.mp3")
        backgroundMusicPlayer.volume = 0.5
        
    }
    
    func batteryProgressKeep(){
        
        batteryProgress.progress = UIDevice.currentDevice().batteryLevel
        
        if batteryNumber <= 30{
           batteryProgress.progressTintColor = UIColor (netHex: 0xff4f51)
        }
        
//        if batteryNumber == 100{
//            batteryProgress.progress = 1.00
//        }
//        if batteryNumber == 95{
//            batteryProgress.progress = 0.95
//        }
//        if batteryNumber == 90{
//            batteryProgress.progress = 0.90
//        }
//        if batteryNumber == 85{
//            batteryProgress.progress = 0.85
//        }
//        if batteryNumber == 80{
//            batteryProgress.progress = 0.80
//        }
//        if batteryNumber == 75{
//            batteryProgress.progress = 0.75
//        }
//        if batteryNumber == 70{
//            batteryProgress.progress = 0.70
//        }
//        if batteryNumber == 65{
//            batteryProgress.progress = 0.65
//        }
//        if batteryNumber == 60{
//            batteryProgress.progress = 0.60
//        }
//        if batteryNumber == 55{
//            batteryProgress.progress = 0.55
//        }
//        if batteryNumber == 50{
//            batteryProgress.progress = 0.50
//        }
//        if batteryNumber == 45{
//            batteryProgress.progress = 0.45
//        }
//        if batteryNumber == 40{
//            batteryProgress.progress = 0.40
//        }
//        if batteryNumber == 35{
//            batteryProgress.progress = 0.35
//        }
//        if batteryNumber == 30{
//            batteryProgress.progress = 0.30
//            batteryProgress.progressTintColor = UIColor (netHex: 0xff4f51)
//        }
//        if batteryNumber == 25{
//            batteryProgress.progress = 0.25
//            batteryProgress.progressTintColor = UIColor (netHex: 0xff4f51)
//        }
//        if batteryNumber == 20{
//            batteryProgress.progress = 0.20
//            batteryProgress.progressTintColor = UIColor (netHex: 0xff4f51)
//        }
//        if batteryNumber == 15{
//            batteryProgress.progress = 0.15
//            batteryProgress.progressTintColor = UIColor (netHex: 0xff4f51)
//        }
//        if batteryNumber == 10{
//            batteryProgress.progress = 0.10
//            batteryProgress.progressTintColor = UIColor (netHex: 0xff4f51)
//        }
//        if batteryNumber == 5{
//            batteryProgress.progress = 0.05
//            batteryProgress.progressTintColor = UIColor (netHex: 0xff4f51)
//        }
//        
//        if batteryNumber <= 2{
//            batteryProgress.progress = 0.02
//            batteryProgress.progressTintColor = UIColor (netHex: 0xff4f51)
//        }
//
////            batteryProgress.progressTintColor = UIColor (netHex: 0xf0a31b)
//
//        
//        if batteryNumber >= 50{
//            batteryProgress.progressTintColor = UIColor (netHex: 0x97f40d)
//        }
//        
//        // testing battery
//        if batteryNumber > 0{
//        batteryNumber -= 5
//        print(batteryNumber)
//        }
        
    }
    
    // timer + timer progress bar
    func update() {
        
        if scoreKeep == 0 {
            runOrNot = 4
        }
        
        if count != 0 {
            count -= 1
        }
        
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
        
        if count == 0 || lives == 0 {
            stopTimer()
            tryAgainLabel.layer.opacity = 1.0
            tryAgainLabel.enabled = true
        }
        
        countDownLabel.text = String(count)
        
        if (count == 1 || count == 2 || count == 3){
            countDownLabel.textColor = UIColor(netHex: 0xff0000)
        }

        if (count == 0){
            countDownLabel.textColor = UIColor(netHex: 0xff0000)
        }
        
        if count > 3 {
            countDownLabel.textColor = UIColor(netHex: 0xf36723)
        }
        
        if xpProgressBar.progress == 1.0 {
            levelText += 1
          
        
            
            
            
        }
//        if (buttonOneText.text == firstNumber.text && buttonOneLabel.backgroundColor!.isEqual(firstNumber.backgroundColor)) {
//            print("match!")
//        } else {
//            buttonOneOptionsText()
//            buttonOneOptionsColors()
//        }
        
        
        
    }
    
    // check if game is finished
    func gameFinish(){
        
        if ( count == 0 ){
            runOrNot = 4
            disableButtons()
            stopTimer()
            tryAgainLabel.layer.opacity = 1
            tryAgainLabel.enabled = true
        }
        if ( lives == 0 ){
            runOrNot = 4
            disableButtons()
            stopTimer()
            tryAgainLabel.layer.opacity = 1
            tryAgainLabel.enabled = true
        }
        if scoreKeep == 4 {
            runOrNot = 4
            disableButtons()
            stopTimer()
            resetRoll()
        }
        
        if xpProgressBar.progress == 1.0 {
            xpProgressBar.progress = 0.0
        }
        
        if lives == 2 {lifeOne.backgroundColor = UIColor (netHex: 0xFFFFFF)}
        if lives == 1 {lifeTwo.backgroundColor = UIColor (netHex: 0xFFFFFF)}
        if lives == 0 {lifeThree.backgroundColor = UIColor (netHex: 0xFFFFFF)}
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