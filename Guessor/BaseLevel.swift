//
//  ViewController.swift
//  Guessor
//
//  Created by Dardan on 2/20/16.
//  Copyright © 2016 Meha. All rights reserved.
//

import UIKit
import AVFoundation
import QuartzCore

class BaseLevel: UIViewController {

    // level
    @IBOutlet weak var level: UILabel!

    // coin label
    @IBOutlet var coinLabel: UILabel!
    
    // top numbers background
    @IBOutlet var topOneLabelColor: UILabel!
    @IBOutlet var topTwoLabelColor: UILabel!
    @IBOutlet var topThreeLabelColor: UILabel!
    @IBOutlet var topFourLabelColor: UILabel!
    
    // top buttons red/wrong background
    @IBOutlet var topOneRedColor: UILabel!
    @IBOutlet var topTwoRedColor: UILabel!
    @IBOutlet var topThreeRedColor: UILabel!
    @IBOutlet var topFourRedColor: UILabel!
    
    // top buttons green/correct background
    @IBOutlet var topOneGreenColor: UILabel!
    @IBOutlet var topTwoGreenColor: UILabel!
    @IBOutlet var topThreeGreenColor: UILabel!
    @IBOutlet var topFourGreenColor: UILabel!

    // top buttons left small numbers
    // 1
    @IBOutlet var topSmallOneColor: UILabel!
    @IBOutlet var topSmallOneSymbol: UILabel!
    // 2
    @IBOutlet var topSmallTwoColor: UILabel!
    @IBOutlet var topSmallTwoSymbol: UILabel!
    // 3
    @IBOutlet var topSmallThreeColor: UILabel!
    @IBOutlet var topSmallThreeSymbol: UILabel!
    // 4
    @IBOutlet var topSmallFourColor: UILabel!
    @IBOutlet var topSmallFourSymbol: UILabel!
    
//    // top buttons white background
//    // 1
//    @IBOutlet var topBigOneColor: UILabel!
//    // 2
//    @IBOutlet var topBigTwoColor: UILabel!
//    // 3
//    @IBOutlet var topBigThreeColor: UILabel!
//    // 4
//    @IBOutlet var topBigFourColor: UILabel!
    
//    // connecting pipes
//    // 1
//    @IBOutlet var pipe1: UILabel!
//    // 2
//    @IBOutlet var pipe2: UILabel!
//    // 3
//    @IBOutlet var pipe3: UILabel!
    
    
    // bottom buttons background
    @IBOutlet var botOneButtonColor: UIButton!
    @IBOutlet var botTwoButtonColor: UIButton!
    @IBOutlet var botThreeButtonColor: UIButton!
    @IBOutlet var botFourButtonColor: UIButton!
    @IBOutlet var botFiveButtonColor: UIButton!
    @IBOutlet var botSixButtonColor: UIButton!
    @IBOutlet var botSevenButtonColor: UIButton!
    @IBOutlet var botEightButtonColor: UIButton!
    @IBOutlet var botNineButtonColor: UIButton!
    
    // bottom buttons red/wrong background
    @IBOutlet var botOneRedColor: UILabel!
    @IBOutlet var botTwoRedColor: UILabel!
    @IBOutlet var botThreeRedColor: UILabel!
    @IBOutlet var botFourRedColor: UILabel!
    @IBOutlet var botFiveRedColor: UILabel!
    @IBOutlet var botSixRedColor: UILabel!
    @IBOutlet var botSevenRedColor: UILabel!
    @IBOutlet var botEightRedColor: UILabel!
    @IBOutlet var botNineRedColor: UILabel!
    
    // bottom buttons green/correct background
    @IBOutlet var botOneGreenColor: UILabel!
    @IBOutlet var botTwoGreenColor: UILabel!
    @IBOutlet var botThreeGreenColor: UILabel!
    @IBOutlet var botFourGreenColor: UILabel!
    @IBOutlet var botFiveGreenColor: UILabel!
    @IBOutlet var botSixGreenColor: UILabel!
    @IBOutlet var botSevenGreenColor: UILabel!
    @IBOutlet var botEightGreenColor: UILabel!
    @IBOutlet var botNineGreenColor: UILabel!
    
    

    
    // top number pictures
    @IBOutlet var candyN1: UIImageView!
    @IBOutlet var popN1: UIImageView!
    @IBOutlet var caneN1: UIImageView!
    @IBOutlet var candyN2: UIImageView!
    @IBOutlet var popN2: UIImageView!
    @IBOutlet var caneN2: UIImageView!
    @IBOutlet var candyN3: UIImageView!
    @IBOutlet var popN3: UIImageView!
    @IBOutlet var caneN3: UIImageView!
    @IBOutlet var candyN4: UIImageView!
    @IBOutlet var popN4: UIImageView!
    @IBOutlet var caneN4: UIImageView!
    
    //bottom buttons pictures
    @IBOutlet var candyB1: UIImageView!
    @IBOutlet var popB1: UIImageView!
    @IBOutlet var caneB1: UIImageView!
    @IBOutlet var candyB2: UIImageView!
    @IBOutlet var popB2: UIImageView!
    @IBOutlet var caneB2: UIImageView!
    @IBOutlet var candyB3: UIImageView!
    @IBOutlet var popB3: UIImageView!
    @IBOutlet var caneB3: UIImageView!
    @IBOutlet var candyB4: UIImageView!
    @IBOutlet var popB4: UIImageView!
    @IBOutlet var caneB4: UIImageView!
    @IBOutlet var candyB5: UIImageView!
    @IBOutlet var popB5: UIImageView!
    @IBOutlet var caneB5: UIImageView!
    @IBOutlet var candyB6: UIImageView!
    @IBOutlet var popB6: UIImageView!
    @IBOutlet var caneB6: UIImageView!
    @IBOutlet var candyB7: UIImageView!
    @IBOutlet var popB7: UIImageView!
    @IBOutlet var caneB7: UIImageView!
    @IBOutlet var candyB8: UIImageView!
    @IBOutlet var popB8: UIImageView!
    @IBOutlet var caneB8: UIImageView!
    @IBOutlet var candyB9: UIImageView!
    @IBOutlet var popB9: UIImageView!
    @IBOutlet var caneB9: UIImageView!

    // create variable symbol for top 4 buttons
    var topOneSymbol:Int = 0
    var topTwoSymbol:Int = 0
    var topThreeSymbol:Int = 0
    var topFourSymbol:Int = 0
    
    // create variable background for top 4 buttons
    var topOneColorBackground:Int = 0
    var topTwoColorBackground:Int = 0
    var topThreeColorBackground:Int = 0
    var topFourColorBackground:Int = 0
    
    // create variable symbol for middle 9 buttons
    var botOneSymbol:Int = 0
    var botTwoSymbol:Int = 0
    var botThreeSymbol:Int = 0
    var botFourSymbol:Int = 0
    var botFiveSymbol:Int = 0
    var botSixSymbol:Int = 0
    var botSevenSymbol:Int = 0
    var botEightSymbol:Int = 0
    var botNineSymbol:Int = 0
    
    // create variable symbol for middle 9 buttons
    var botOneColorBackground:Int = 0
    var botTwoColorBackground:Int = 0
    var botThreeColorBackground:Int = 0
    var botFourColorBackground:Int = 0
    var botFiveColorBackground:Int = 0
    var botSixColorBackground:Int = 0
    var botSevenColorBackground:Int = 0
    var botEightColorBackground:Int = 0
    var botNineColorBackground:Int = 0
    
    
    @IBOutlet weak var batteryProgress: UIProgressView!
    
    // initialized bottom buttons
    var buttonOne:String = "0"
    var buttonTwo:String = "0"
    var buttonThree:String = "0"
    var buttonFour:String = "0"
    var buttonFive:String = "0"
    var buttonSix:String = "0"
    var buttonSeven:String = "0"
    var buttonEight:String = "0"
    var buttonNine:String = "0"
    
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
    
    // timer label
    @IBOutlet var countDownLabel: UILabel!
    
    // PROGRESS BAR
    @IBOutlet var progressTimer: UIProgressView!
    // "generate" button
    @IBOutlet var generateLabel: UIButton!

    // battery
    var batteryNumber:Int = 0
    var lives = 3
    // timer
    var count:Float = 10
    var timer = NSTimer()
    // score
    var score:Int = 0
    // switch variable
    var value = 0
    var runOrNot:Int = 4
    var coin:Int = 0
    
    
    @IBOutlet weak var pauseMenuLabel: UILabel!
    // PAUSE
    @IBAction func pauseMenu(sender: AnyObject) {
        pauseGame()
        pauseMenuLabel.hidden = false
        goToMenuLabel.hidden = false
        continueGameLabel.hidden = false
        controlEffectsMusic.hidden = false
        controlBackgroundMusic.hidden = false
    }
    // menu
    @IBAction func goToMenu(sender: AnyObject) {
        pauseMenuLabel.hidden = true
        goToMenuLabel.hidden = true
        continueGameLabel.hidden = true
        controlEffectsMusic.hidden = true
        controlBackgroundMusic.hidden = true
    }
    @IBOutlet weak var goToMenuLabel: UIButton!
    
    // continue
    @IBAction func continueGame(sender: AnyObject) {
        playGame()
        pauseMenuLabel.hidden = true
        goToMenuLabel.hidden = true
        continueGameLabel.hidden = true
        controlEffectsMusic.hidden = true
        controlBackgroundMusic.hidden = true
    }
    @IBOutlet weak var continueGameLabel: UIButton!
    // sfx
    @IBAction func controlEffectsMusic(sender: AnyObject) {
        
    }
    @IBOutlet weak var controlEffectsMusic: UIButton!
    // background
    @IBAction func controlBackgroundMusic(sender: AnyObject) {
        
    }
    @IBOutlet weak var controlBackgroundMusic: UIButton!
    
    
    // add time
    @IBAction func addTimeButton(sender: AnyObject) {
        count += 2
        countDownLabel.text = "\(count)"
    }
    
    // add life
    @IBAction func addLifeButton(sender: AnyObject) {
        lives += 1
        updateLivesLeftIcons()
        print(lives)
    }
    
    
    // "try again" button background
    @IBOutlet var tryAgainLabel: UIButton!
    
    // "try aagain" function
    @IBAction func tryAgain(sender: AnyObject) {
        stopTimer()
        tryAgain()
        generateLabel.layer.opacity = 1
    }
    
    var trueOrNot:Bool = false
    var trueOrNot2:Bool = false
    
    // get time
    let date = NSDate()
    let calendar = NSCalendar.currentCalendar()
    
    var matchingAnswer:Bool = false
    
    @IBOutlet weak var levelProgressBar: UIProgressView!
    
    // hide status bar
    override func prefersStatusBarHidden() -> Bool {
        return true
    }
    
    override func viewDidAppear(animated: Bool)
    {
        super.viewDidAppear(animated)
        
        UIView.animateWithDuration(1, animations: { () -> Void in
            self.progressTimer.setProgress(1.0, animated: true)
        })
    }

    
    func startTimer(){
        timer = NSTimer.scheduledTimerWithTimeInterval(1.0, target: self, selector: #selector(UIMenuController.update), userInfo: nil, repeats: true)
    }
    func stopTimer(){
        timer.invalidate()
    }
    

    
    @IBAction func generateButtonNumbers(sender: AnyObject) {
        
        count -= 1
        countDownLabel.text = "\(count)"
        runOrNot = 4
        scoreKeep = 0
        realRandomGeneratorFirst()
//        realRandomGeneratorFirst()
        
        
    }

    @IBAction func generateButtonRelease(sender: AnyObject) {

    }

    
    
    // BUTTON #1 PRESS
    @IBAction func buttonOneDown(sender: AnyObject) { botOneDownPress() }
    // BUTTON #1 - RELEASE
    @IBAction func buttonOneRelease(sender: AnyObject) { botOneRelase() }
    
    
    // BUTTON #2 PRESS
    @IBAction func buttonTwoDown(sender: AnyObject) { botTwoDownPress() }
    // BUTTON #2 - RELEASE
    @IBAction func buttonTwoRelease(sender: AnyObject) { botTwoRelase() }
    
    
    // BUTTON #3 PRESS
    @IBAction func buttonThreeDown(sender: AnyObject) { botThreeDownPress() }
    // BUTTON #3 - RELEASE
    @IBAction func buttonThreeRelease(sender: AnyObject) { botThreeRelase() }
    
    
    // BUTTON #4 PRESS
    @IBAction func buttonFourDown(sender: AnyObject) { botFourDownPress() }
    // BUTTON #4 - RELEASE
    @IBAction func buttonFourRelease(sender: AnyObject) { botFourRelase() }
    
    
    // BUTTON #5 PRESS
    @IBAction func buttonFiveDown(sender: AnyObject) { botFiveDownPress() }
    // BUTTON #5 - RELEASE
    @IBAction func buttonFiveRelease(sender: AnyObject) { botFiveRelase() }
    
    
    // BUTTON #6 PRESS
    @IBAction func buttonSixDown(sender: AnyObject) { botSixDownPress() }
    // BUTTON #6 - RELEASE
    @IBAction func buttonSixRelease(sender: AnyObject) { botSixRelase() }
    
    
    // BUTTON #7 PRESS
    @IBAction func buttonSevenDown(sender: AnyObject) { botSevenDownPress() }
    // BUTTON #7 - RELEASE
    @IBAction func buttonSevenRelease(sender: AnyObject) { botSevenRelase() }
    
    
    // BUTTON #8 PRESS
    @IBAction func buttonEightDown(sender: AnyObject) { botEightDownPress() }
    // BUTTON #8 - RELEASE
    @IBAction func buttonEightRelease(sender: AnyObject) { botEightRelase() }
    
    
    // BUTTON #9 PRESS
    @IBAction func buttonNineDown(sender: AnyObject) { botNineDownPress() }
    // BUTTON #9 - RELEASE
    @IBAction func buttonNineRelease(sender: AnyObject) { botNineRelase() }

    
    
  

} // end





