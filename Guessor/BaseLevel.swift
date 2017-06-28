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
    
    var symb = 1
    var back = 1
    var lives = 3
    var points = 0
    var correctInARow = 0
    var buttonIndex = 0
    var batteryNumber = 100
    var timer = Timer()
    var count:Float = 9
    var gamePaused: Bool = false
    var coin:Int = UserDefaults.standard.integer(forKey: "coinKey")
    
    // last timer value
    var tempCountTracker: Float!

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
    
    var topButtons = [UIButton]()
    var bottomButtons = [UIButton]()
    
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

    // TIMER
    func startTimer(){ timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(UIMenuController.update), userInfo: nil, repeats: true) }
    func stopTimer(){ timer.invalidate() }
    
    // GENERATE BUTTON
    @IBAction func generateButtonNumbers(_ sender: AnyObject) { generateBottomButtons() }
    @IBAction func generateButtonRelease(_ sender: AnyObject) { }
    
    // LOCK PORTRAIT
    override var shouldAutorotate : Bool {
        if (UIDevice.current.orientation == UIDeviceOrientation.landscapeLeft ||
            UIDevice.current.orientation == UIDeviceOrientation.landscapeRight ||
            UIDevice.current.orientation == UIDeviceOrientation.unknown) {
            return false
        }
        else {
            return true
        }
    }
    
    override var supportedInterfaceOrientations : UIInterfaceOrientationMask {
        return [UIInterfaceOrientationMask.portrait ,UIInterfaceOrientationMask.portraitUpsideDown]
    }

    
}





