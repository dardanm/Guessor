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

    var topButtonUno: Button?
    var topButtonDos: Button?
    var topButtonTres: Button?
    var topButtonCuatro: Button?
    
    var botButtonUno: Button?
    var botButtonDos: Button?
    var botButtonTres: Button?
    
    // level
    @IBOutlet weak var level: UILabel!

    // coin label
    @IBOutlet var coinLabel: UILabel!
    var coin:Int = UserDefaults.standard.integer(forKey: "coinKey")

    // top numbers background
    
    @IBOutlet weak var topButtonNumberOne: UIButton!
    @IBOutlet var topButtonNumberTwo: UILabel!
    @IBOutlet var topButtonNumberThree: UILabel!
    @IBOutlet var topButtonNumberFour: UILabel!
    
    // bottom buttons background
    @IBOutlet var bottomButtonNumberOne: UIButton!
    @IBOutlet var bottomButtonNumberTwo: UIButton!
    @IBOutlet var bottomButtonNumberThree: UIButton!
    @IBOutlet var bottomButtonNumberFour: UIButton!
    @IBOutlet var bottomButtonNumberFive: UIButton!
    @IBOutlet var bottomButtonNumberSix: UIButton!
    @IBOutlet var bottomButtonNumberSeven: UIButton!
    @IBOutlet var bottomButtonNumberEight: UIButton!
    @IBOutlet var bottomButtonNumberNine: UIButton!
        
    @IBOutlet weak var batteryProgress: UIProgressView!
    
    // number tracker for real randomizing buttons
    var numberTrackerForRandomizing:Int = 0
    
    // LEVEL NUMBER
    var levelText:Int = 1
    
    // multiply top-left # by top-right #
    var numMultiply = 0

    // keep track of score 0/30
    var scoreKeep:Int = 0
    
    // initalize audio
    var buttonPressSound: AVAudioPlayer!
    var buttonPressCorrectSound: AVAudioPlayer!
    var backgroundMusicPlayer = AVAudioPlayer()
    var finalCorrect = AVAudioPlayer()

    // top-right life 3
    @IBOutlet var lifeThree: UILabel!
    // top-right life 2
    @IBOutlet var lifeTwo: UILabel!
    // top-right life 1
    @IBOutlet var lifeOne: UILabel!
    var lives = 3
    
    // timer label
    @IBOutlet var countDownLabel: UILabel!
    
    // battery
    var batteryNumber:Int = 100
    
    // timer
    var count:Float = 100
    var timer = Timer()
    
    // score
    var scoreTarget:Int = 100
    
    var runOrNot:Int = 4
    
    // PROGRESS BAR
    @IBOutlet var progressTimer: UIProgressView!
    
    // "generate" button
    @IBOutlet var generateLabel: UIButton!

    // add time
    @IBAction func addTimeButton(_ sender: AnyObject) {
        count += 2
        countDownLabel.text = "\(count)"
    }
    
    // add life
    @IBAction func addLifeButton(_ sender: AnyObject) {
        lives += 1
        updateLivesLeftIcons()
        print(lives)
    }
    
    
    // "try again" button background
    @IBOutlet var tryAgainLabel: UIButton!
    
    // "try aagain" function
    @IBAction func tryAgain(_ sender: AnyObject) {
        stopTimer()
        tryAgain()
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
    
    override func viewDidAppear(_ animated: Bool)
    {
        super.viewDidAppear(animated)
        
        UIView.animate(withDuration: 1, animations: { () -> Void in
            self.progressTimer.setProgress(1.0, animated: true)
        })
    }

    
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

    @IBAction func generateButtonRelease(_ sender: AnyObject) {

    }

    
    // when back button is pressed, stop background music
    @IBAction func backOption(_ sender: AnyObject) {
        coin = UserDefaults.standard.integer(forKey: "coinKey")
    }
    
    
    
    

    
    

} // end





