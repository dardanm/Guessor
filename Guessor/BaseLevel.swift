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

    var colorPickArray = [String]()
    var iconPickArray = [String]()
    var smallNumbersArray = [Int]()
    var aer = [Int]()
    var symb = 1
    var back = 1
    var level = 1

class BaseLevel: UIViewController {
    
    var lives = 3
    var points = 0
    var pointsTarget = 0
    var correctInARow = 0
    
    var buttonIndex = 0
    var topButtons = [UIButton]()
    var bottomButtons = [UIButton]()
    var topSmallNumbers = [UILabel]()
    
    var timer = Timer()
    var batteryNumber = 100
    var count:Float = 9
    var gamePaused: Bool = false
    var coin:Int = UserDefaults.standard.integer(forKey: "coinKey")
    
    // last timer value
    var tempCountTracker: Float!

    // top buttons
    // tbn = Top Button Number
    @IBOutlet var tbn1: UIButton!
    @IBOutlet var tbn2: UIButton!
    @IBOutlet var tbn3: UIButton!
    @IBOutlet var tbn4: UIButton!
    
    // snt = Small Number Top
    @IBOutlet var snt1: UILabel!
    @IBOutlet var snt2: UILabel!
    @IBOutlet var snt3: UILabel!
    @IBOutlet var snt4: UILabel!

    // bottom buttons
    @IBOutlet var bbn1: UIButton!
    @IBOutlet var bbn2: UIButton!
    @IBOutlet var bbn3: UIButton!
    @IBOutlet var bbn4: UIButton!
    
//    @IBOutlet var topButtonsCollection: Array<UIButton>!
//    @IBOutlet var bottomButtonsCollection: Array<UIButton>!
            
    @IBOutlet weak var batteryProgress: UIProgressView!
    
    // score/points label
    @IBOutlet weak var scoreKeep: UILabel!
    
    // coin label
    @IBOutlet var coinLabel: UILabel!
    
    // initalize audio
    var correctSound: AVAudioPlayer!
    var incorrectSound: AVAudioPlayer!
    var backgroundMusicPlayer = AVAudioPlayer()
    var correctFourSound = AVAudioPlayer()
    
    // PROGRESS BAR
    @IBOutlet var progressTimer: UIProgressView!
    
    // "generate" button
    @IBOutlet var generateLabel: UIButton!

    @IBAction func addTimeButton(_ sender: AnyObject) {
        count += 5
        coin -= 1
        coinLabel.text = "\(coin)"
    }
    
    @IBAction func addLifeButton(_ sender: AnyObject) {
        lives += 1
        coin -= 1
        coinLabel.text = "\(coin)"
    }
    
    // "try again" button background
    @IBOutlet var tryAgainLabel: UIButton!
    
    // "try aagain" function
    @IBAction func tryAgain(_ sender: AnyObject) {
        stopTimer()
        generateLabel.layer.opacity = 1
    }
    
    // get time
    let date = Date()
    let calendar = Calendar.current
    
    @IBOutlet weak var levelProgressBar: UIProgressView!
    
    // hide status bar
    override var prefersStatusBarHidden : Bool { return true }
    
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
    // Level Finished
    @IBOutlet var levelFinishedMenu: UIView!
    
    
    // GENERATE BUTTON
    @IBAction func generateButtonNumbers(_ sender: AnyObject) { generateBottomButtons() }
    @IBAction func generateButtonRelease(_ sender: AnyObject) { }
    


    
}





