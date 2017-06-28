//
//  ViewController.swift
//  Guessor
//
//  Created by Dardan on 2/20/16.
//  Copyright © 2016 Meha. All rights reserved.
//

import Foundation
import UIKit
import AVFoundation
import QuartzCore
import CoreData

class BaseLevel: UIViewController{
    
    var symb:Int = 1
    var back:Int = 1
    
    // Starting from top button 1
    var correctInARow = 0
    
    // level
    @IBOutlet weak var scoreKeep: UILabel!

    // coin label
    @IBOutlet var coinLabel: UILabel!
    var coin:Int = UserDefaults.standard.integer(forKey: "coinKey")
    
    // top buttons
    @IBOutlet var topButtonNumberOne: UIButton!
    @IBOutlet var topButtonNumberTwo: UIButton!
    @IBOutlet var topButtonNumberThree: UIButton!
    @IBOutlet var topButtonNumberFour: UIButton!

    // bottom buttons
    @IBOutlet var bottomButtonNumberOne: UIButton!
    @IBOutlet var bottomButtonNumberTwo: UIButton!
    @IBOutlet var bottomButtonNumberThree: UIButton!
    @IBOutlet var bottomButtonNumberFour: UIButton!
    
    @IBOutlet var topButtonsCollection: Array<UIButton>!
    @IBOutlet var bottomButtonsCollection: Array<UIButton>!
            
    @IBOutlet weak var batteryProgress: UIProgressView!
    
    // number tracker for real randomizing buttons
    var numberTrackerForRandomizing:Int = 0
    
    // LEVEL NUMBER
    var levelText:Int = 1
    
    // multiply top-left # by top-right #
    var numMultiply = 0

    // keep track of score 0/30
    var points:Int = 0
    
    // initalize audio
    var buttonPressSound: AVAudioPlayer!
    var buttonPressCorrectSound: AVAudioPlayer!
    var backgroundMusicPlayer = AVAudioPlayer()
    var finalCorrect = AVAudioPlayer()

    @IBOutlet var lifeOne: UILabel!
    var lives = 3
    
    // timer label
    @IBOutlet var countDownLabel: UILabel!
    
    // battery
    var batteryNumber:Int = 100
    
    // timer
    var timer = Timer()
    var count:Float = 9

    // score
    var scoreTarget:Int = 100
    
    var buttonIndex:Int = 0
    
    // PROGRESS BAR
    @IBOutlet var progressTimer: UIProgressView!
    
    // "generate" button
    @IBOutlet var generateLabel: UIButton!

    // add time
    @IBAction func addTimeButton(_ sender: AnyObject) {
        //count += 5
        countDownLabel.text = "\(count)"
        //coin -= 1
        coinLabel.text = "\(coin)"
    }
    
    // add life
    @IBAction func addLifeButton(_ sender: AnyObject) {
        lives += 1
        //updateLivesLeftIcons()
        print(lives)
    }
    
    // "try again" button background
    @IBOutlet var tryAgainLabel: UIButton!
    
    // "try aagain" function
    @IBAction func tryAgain(_ sender: AnyObject) {
        stopTimer()
        generateLabel.layer.opacity = 1
    }
    
    var trueOrNot:Bool = false
    var trueOrNot2:Bool = false
    
    // get time
    let date = Date()
    let calendar = Calendar.current
    
    var matchingAnswer:Bool = false
    
    @IBOutlet weak var levelProgressBar: UIProgressView!
    
    // hide status bar
    override var prefersStatusBarHidden : Bool {
        return true
    }
    
    // Game Paused
    @IBOutlet var gpView: UIView!
    @IBAction func resumeButton(_ sender: Any) {
        self.gameUnpauseMode()
        gamePaused = false
        count = tempCountTracker!
        updateTimerBar()
    }
    @IBAction func pauseButton(_ sender: Any) {
        self.gamePausedMode()
        gamePaused = true
    }

    var gamePaused: Bool = false
    // last timer value
    var tempCountTracker: Float!


    func startTimer(){
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(UIMenuController.update), userInfo: nil, repeats: true)
    }
    func stopTimer(){
        timer.invalidate()
    }
    
    // GENERATE BUTTON
    @IBAction func generateButtonNumbers(_ sender: AnyObject) {
        generateBottomButtons()
    }

    @IBAction func generateButtonRelease(_ sender: AnyObject) { }

    
}





