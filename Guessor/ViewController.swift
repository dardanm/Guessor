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

class ViewController: UIViewController {
    
    // score label
    @IBOutlet var score: UILabel!
    
    // xp label
    @IBOutlet var xpLabel: UILabel!

    // top numbers text
    @IBOutlet var firstNumber: UILabel!
    @IBOutlet var secondNumber: UILabel!
    @IBOutlet var thirdNumber: UILabel!
    @IBOutlet var fourthNumber: UILabel!


    // bottom buttons text
    @IBOutlet var buttonOneText: UILabel!
    @IBOutlet var buttonTwoText: UILabel!
    @IBOutlet var buttonThreeText: UILabel!
    @IBOutlet var buttonFourText: UILabel!
    @IBOutlet var buttonFiveText: UILabel!
    @IBOutlet var buttonSixText: UILabel!
    @IBOutlet var buttonSevenText: UILabel!
    @IBOutlet var buttonEightText: UILabel!
    @IBOutlet var buttonNineText: UILabel!

    // bottom buttons background
    @IBOutlet var buttonOneLabel: UIButton!
    @IBOutlet var buttonTwoLabel: UIButton!
    @IBOutlet var buttonThreeLabel: UIButton!
    @IBOutlet var buttonFourLabel: UIButton!
    @IBOutlet var buttonFiveLabel: UIButton!
    @IBOutlet var buttonSixLabel: UIButton!
    @IBOutlet var buttonSevenLabel: UIButton!
    @IBOutlet var buttonEightLabel: UIButton!
    @IBOutlet var buttonNineLabel: UIButton!
    
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
    
    // LEVEL NUMBER
    var level:Int = 1
    
    // multiply top-left # by top-right #
    var numMultiply = 0

    // keep track of score 0/30
    var scoreKeep:Int = 0

    // level complete
    @IBOutlet var levelComplete: UILabel!
    
    // initalize audio
    var buttonPressSound: AVAudioPlayer!
    var buttonPressCorrectSound: AVAudioPlayer!
    var backgroundMusicPlayer = AVAudioPlayer()

    // top-right life 3
    @IBOutlet var lifeThree: UILabel!
    // top-right life 2
    @IBOutlet var lifeTwo: UILabel!
    // top-right life 1
    @IBOutlet var lifeOne: UILabel!
    var lives = 3
    
    // timer label
    @IBOutlet var countDownLabel: UILabel!
    
    // timer
    var count = 10
    var timer = NSTimer()
    
    // switch variable
    var value = 0
    
    var runOrNot:Int = 4
    
    // PROGRESS BAR
    @IBOutlet var progressTimer: UIProgressView!
    
    // used to compare colors -- double check
    @IBOutlet var testingLabel: UILabel!
    
    // "generate" button
    @IBOutlet var generateLabel: UIButton!

    // "try again" button background
    @IBOutlet var tryAgainLabel: UIButton!
    // "try aagain" function
    @IBAction func tryAgain(sender: AnyObject) {
        stopTimer()
        tryAgain()
    }
    
    @IBOutlet weak var xpProgressBar: UIProgressView!
    
    // hide status bar
    override func prefersStatusBarHidden() -> Bool {
        return true
    }
    
    func startTimer(){
        timer = NSTimer.scheduledTimerWithTimeInterval(1.0, target: self, selector: Selector("update"), userInfo: nil, repeats: true)
    }
    func stopTimer(){
        timer.invalidate()
    }
    
    
    
    // ========= MAIN
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        // TO-DO LIST
        // ** pause game when home button is pressed
        // binbucket
        
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
        
        prefersStatusBarHidden()
        
        // top numbers randomize
        numberOneOptionsColors()
        numberOneOptionsText()
        
        numberTwoOptionsColors()
        numberTwoOptionsText()
        
        numberThreeOptionsColors()
        numberThreeOptionsText()
        
        numberFourOptionsColors()
        numberFourOptionsText()
        
        // bottom buttons randomize numbers
        buttonOneOptionsText()
        buttonTwoOptionsText()
        buttonThreeOptionsText()
        buttonFourOptionsText()
        buttonFiveOptionsText()
        buttonSixOptionsText()
        buttonSevenOptionsText()
        buttonEightOptionsText()
        buttonNineOptionsText()
        
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

    
    @IBAction func generateButtonNumbers(sender: AnyObject) {
        buttonOneOptionsText()
        buttonTwoOptionsText()
        buttonThreeOptionsText()
        buttonFourOptionsText()
        buttonFiveOptionsText()
        buttonSixOptionsText()
        buttonSevenOptionsText()
        buttonEightOptionsText()
        buttonNineOptionsText()
        
        buttonOneOptionsColors()
        buttonTwoOptionsColors()
        buttonThreeOptionsColors()
        buttonFourOptionsColors()
        buttonFiveOptionsColors()
        buttonSixOptionsColors()
        buttonSevenOptionsColors()
        buttonEightOptionsColors()
        buttonNineOptionsColors()
        
        shadowOptions()
        
    }
    
    

    
    // BUTTON #1 PRESS
    @IBAction func buttonOneDown(sender: AnyObject) {
        
        shadowOptions()
        
        if runOrNot == 4 {
            if (lives > 0 && count > 0 && !(firstNumber.backgroundColor!.isEqual(testingLabel.backgroundColor))){
                if buttonOneText.text == firstNumber.text && buttonOneLabel.backgroundColor!.isEqual(firstNumber.backgroundColor){
                    if (scoreKeep <= 9){
                        score.text = "0" + "\(scoreKeep++ + 1)"
                    } else {
                        score.text = "\(scoreKeep++ + 1)"
                    }
                    correctAnswer()
                    // green color button - correct coice
                    buttonOneLabel.backgroundColor = UIColor(netHex: 0x8ef32f)
                    buttonOneLabel.layer.shadowColor = UIColor(netHex: 0x7ad524).CGColor
                    firstNumber.backgroundColor = UIColor(netHex: 0x8ef32f)
                    firstNumber.layer.shadowColor = UIColor(netHex: 0x7ad524).CGColor
                } else {
                    // subtract life if incorrect choice is chosen
                    lives--
                    
                    // red color button - incorrect choice
                    buttonOneLabel.backgroundColor = UIColor(netHex: 0xff4f51)
                    pressButtonWrongSound()
                    buttonOneLabel.layer.shadowColor = UIColor(netHex: 0xdf3131).CGColor
                    buttonOneLabel.layer.shadowRadius = 0
                    buttonOneLabel.layer.shadowOpacity = 1
                    buttonOneLabel.layer.shadowOffset = CGSizeMake(0, 4)
                }
            }
        }
        
        gameFinish()
        
        if runOrNot == 3 {
            if (lives > 0 && count > 0 && !(secondNumber.backgroundColor!.isEqual(testingLabel.backgroundColor))){
                if buttonOneText.text == secondNumber.text && buttonOneLabel.backgroundColor!.isEqual(secondNumber.backgroundColor){
                    if (scoreKeep <= 9){
                        score.text = "0" + "\(scoreKeep++ + 1)"
                    } else {
                        score.text = "\(scoreKeep++ + 1)"
                    }
                    correctAnswer()
                    // green color button - correct coice
                    buttonOneLabel.backgroundColor = UIColor(netHex: 0x8ef32f)
                    buttonOneLabel.layer.shadowColor = UIColor(netHex: 0x7ad524).CGColor
                    secondNumber.backgroundColor = UIColor(netHex: 0x8ef32f)
                    secondNumber.layer.shadowColor = UIColor(netHex: 0x7ad524).CGColor
                } else {
                    // subtract life if incorrect choice is chosen
                    lives--
                    
                    // red color button - incorrect choice
                    buttonOneLabel.backgroundColor = UIColor(netHex: 0xff4f51)
                    pressButtonWrongSound()
                    buttonOneLabel.layer.shadowColor = UIColor(netHex: 0xdf3131).CGColor
                    buttonOneLabel.layer.shadowRadius = 0
                    buttonOneLabel.layer.shadowOpacity = 1
                    buttonOneLabel.layer.shadowOffset = CGSizeMake(0, 4)
                }
            }
        }
        
        gameFinish()
        
        if runOrNot == 2 {
            if (lives > 0 && count > 0 && !(thirdNumber.backgroundColor!.isEqual(testingLabel.backgroundColor))){
                if buttonOneText.text == thirdNumber.text && buttonOneLabel.backgroundColor!.isEqual(thirdNumber.backgroundColor){
                    if (scoreKeep <= 9){
                        score.text = "0" + "\(scoreKeep++ + 1)"
                    } else {
                        score.text = "\(scoreKeep++ + 1)"
                    }
                    correctAnswer()
                    // green color button - correct coice
                    buttonOneLabel.backgroundColor = UIColor(netHex: 0x8ef32f)
                    buttonOneLabel.layer.shadowColor = UIColor(netHex: 0x7ad524).CGColor
                    thirdNumber.backgroundColor = UIColor(netHex: 0x8ef32f)
                    thirdNumber.layer.shadowColor = UIColor(netHex: 0x7ad524).CGColor
                } else {
                    // subtract life if incorrect choice is chosen
                    lives--
                    
                    // red color button - incorrect choice
                    buttonOneLabel.backgroundColor = UIColor(netHex: 0xff4f51)
                    pressButtonWrongSound()
                    buttonOneLabel.layer.shadowColor = UIColor(netHex: 0xdf3131).CGColor
                    buttonOneLabel.layer.shadowRadius = 0
                    buttonOneLabel.layer.shadowOpacity = 1
                    buttonOneLabel.layer.shadowOffset = CGSizeMake(0, 4)
                }
            }
        }
        
        gameFinish()
        
        if runOrNot == 1 {
            if (lives > 0 && count > 0 && !(fourthNumber.backgroundColor!.isEqual(testingLabel.backgroundColor))){
                if buttonOneText.text == fourthNumber.text && buttonOneLabel.backgroundColor!.isEqual(fourthNumber.backgroundColor){
                    if (scoreKeep <= 9){
                        score.text = "0" + "\(scoreKeep++ + 1)"
                    } else {
                        score.text = "\(scoreKeep++ + 1)"
                    }
                    correctAnswer()
                    // green color button - correct coice
                    buttonOneLabel.backgroundColor = UIColor(netHex: 0x8ef32f)
                    buttonOneLabel.layer.shadowColor = UIColor(netHex: 0x7ad524).CGColor
                    fourthNumber.backgroundColor = UIColor(netHex: 0x8ef32f)
                    fourthNumber.layer.shadowColor = UIColor(netHex: 0x7ad524).CGColor
                } else {
                    // subtract life if incorrect choice is chosen
                    lives--
                    
                    // red color button - incorrect choice
                    buttonOneLabel.backgroundColor = UIColor(netHex: 0xff4f51)
                    pressButtonWrongSound()
                    buttonOneLabel.layer.shadowColor = UIColor(netHex: 0xdf3131).CGColor
                    buttonOneLabel.layer.shadowRadius = 0
                    buttonOneLabel.layer.shadowOpacity = 1
                    buttonOneLabel.layer.shadowOffset = CGSizeMake(0, 4)
                }
            }
        }
        
        gameFinish()
        
    }

    // BUTTON #1 - RELEASE
    @IBAction func buttonOneRelease(sender: AnyObject) {
        
        if runOrNot == 4 {
        if buttonOneLabel.backgroundColor!.isEqual(firstNumber.backgroundColor){
            runOrNot--
        }
        }
        
        if runOrNot == 3 {
        if buttonOneLabel.backgroundColor!.isEqual(secondNumber.backgroundColor){
            runOrNot--
        }
        }
        
        if runOrNot == 2 {
            if buttonOneLabel.backgroundColor!.isEqual(thirdNumber.backgroundColor){
                runOrNot--
            }
        }
        
        if runOrNot == 1 {
            if buttonOneLabel.backgroundColor!.isEqual(fourthNumber.backgroundColor){
                runOrNot--
            }
        }
        
    }
    
    @IBAction func buttonTwoDown(sender: AnyObject) {
        
        shadowOptions()
        
        if runOrNot == 4 {
            if (lives > 0 && count > 0 && !(firstNumber.backgroundColor!.isEqual(testingLabel.backgroundColor))){
                if buttonTwoText.text == firstNumber.text && buttonTwoLabel.backgroundColor!.isEqual(firstNumber.backgroundColor){
                    if (scoreKeep <= 9){
                        score.text = "0" + "\(scoreKeep++ + 1)"
                    } else {
                        score.text = "\(scoreKeep++ + 1)"
                    }
                    correctAnswer()
                    // green color button - correct coice
                    buttonTwoLabel.backgroundColor = UIColor(netHex: 0x8ef32f)
                    buttonTwoLabel.layer.shadowColor = UIColor(netHex: 0x7ad524).CGColor
                    firstNumber.backgroundColor = UIColor(netHex: 0x8ef32f)
                    firstNumber.layer.shadowColor = UIColor(netHex: 0x7ad524).CGColor
                } else {
                    // subtract life if incorrect choice is chosen
                    lives--
                    
                    // red color button - incorrect choice
                    buttonTwoLabel.backgroundColor = UIColor(netHex: 0xff4f51)
                    pressButtonWrongSound()
                    buttonTwoLabel.layer.shadowColor = UIColor(netHex: 0xdf3131).CGColor
                    buttonTwoLabel.layer.shadowRadius = 0
                    buttonTwoLabel.layer.shadowOpacity = 1
                    buttonTwoLabel.layer.shadowOffset = CGSizeMake(0, 4)
                }
            }
        }
        
        gameFinish()
        
        if runOrNot == 3 {
            if (lives > 0 && count > 0 && !(secondNumber.backgroundColor!.isEqual(testingLabel.backgroundColor))){
                if buttonTwoText.text == secondNumber.text && buttonTwoLabel.backgroundColor!.isEqual(secondNumber.backgroundColor){
                    if (scoreKeep <= 9){
                        score.text = "0" + "\(scoreKeep++ + 1)"
                    } else {
                        score.text = "\(scoreKeep++ + 1)"
                    }
                    correctAnswer()
                    // green color button - correct coice
                    buttonTwoLabel.backgroundColor = UIColor(netHex: 0x8ef32f)
                    buttonTwoLabel.layer.shadowColor = UIColor(netHex: 0x7ad524).CGColor
                    secondNumber.backgroundColor = UIColor(netHex: 0x8ef32f)
                    secondNumber.layer.shadowColor = UIColor(netHex: 0x7ad524).CGColor
                } else {
                    // subtract life if incorrect choice is chosen
                    lives--
                    
                    // red color button - incorrect choice
                    buttonTwoLabel.backgroundColor = UIColor(netHex: 0xff4f51)
                    pressButtonWrongSound()
                    buttonTwoLabel.layer.shadowColor = UIColor(netHex: 0xdf3131).CGColor
                    buttonTwoLabel.layer.shadowRadius = 0
                    buttonTwoLabel.layer.shadowOpacity = 1
                    buttonTwoLabel.layer.shadowOffset = CGSizeMake(0, 4)
                }
            }
        }
        
        gameFinish()
        
        if runOrNot == 2 {
            if (lives > 0 && count > 0 && !(thirdNumber.backgroundColor!.isEqual(testingLabel.backgroundColor))){
                if buttonTwoText.text == thirdNumber.text && buttonTwoLabel.backgroundColor!.isEqual(thirdNumber.backgroundColor){
                    if (scoreKeep <= 9){
                        score.text = "0" + "\(scoreKeep++ + 1)"
                    } else {
                        score.text = "\(scoreKeep++ + 1)"
                    }
                    correctAnswer()
                    // green color button - correct coice
                    buttonTwoLabel.backgroundColor = UIColor(netHex: 0x8ef32f)
                    buttonTwoLabel.layer.shadowColor = UIColor(netHex: 0x7ad524).CGColor
                    thirdNumber.backgroundColor = UIColor(netHex: 0x8ef32f)
                    thirdNumber.layer.shadowColor = UIColor(netHex: 0x7ad524).CGColor
                } else {
                    // subtract life if incorrect choice is chosen
                    lives--
                    
                    // red color button - incorrect choice
                    buttonTwoLabel.backgroundColor = UIColor(netHex: 0xff4f51)
                    pressButtonWrongSound()
                    buttonTwoLabel.layer.shadowColor = UIColor(netHex: 0xdf3131).CGColor
                    buttonTwoLabel.layer.shadowRadius = 0
                    buttonTwoLabel.layer.shadowOpacity = 1
                    buttonTwoLabel.layer.shadowOffset = CGSizeMake(0, 4)
                }
            }
        }
        
        gameFinish()
        
        if runOrNot == 1 {
            if (lives > 0 && count > 0 && !(fourthNumber.backgroundColor!.isEqual(testingLabel.backgroundColor))){
                if buttonTwoText.text == fourthNumber.text && buttonTwoLabel.backgroundColor!.isEqual(fourthNumber.backgroundColor){
                    if (scoreKeep <= 9){
                        score.text = "0" + "\(scoreKeep++ + 1)"
                    } else {
                        score.text = "\(scoreKeep++ + 1)"
                    }
                    correctAnswer()
                    // green color button - correct coice
                    buttonTwoLabel.backgroundColor = UIColor(netHex: 0x8ef32f)
                    buttonTwoLabel.layer.shadowColor = UIColor(netHex: 0x7ad524).CGColor
                    fourthNumber.backgroundColor = UIColor(netHex: 0x8ef32f)
                    fourthNumber.layer.shadowColor = UIColor(netHex: 0x7ad524).CGColor
                } else {
                    // subtract life if incorrect choice is chosen
                    lives--
                    
                    // red color button - incorrect choice
                    buttonTwoLabel.backgroundColor = UIColor(netHex: 0xff4f51)
                    pressButtonWrongSound()
                    buttonTwoLabel.layer.shadowColor = UIColor(netHex: 0xdf3131).CGColor
                    buttonTwoLabel.layer.shadowRadius = 0
                    buttonTwoLabel.layer.shadowOpacity = 1
                    buttonTwoLabel.layer.shadowOffset = CGSizeMake(0, 4)
                }
            }
        }
        
        gameFinish()
        
    }
    

    // BUTTON #2 - RELEASE
    @IBAction func buttonTwoRelease(sender: AnyObject) {
      
        if runOrNot == 4 {
            if buttonTwoLabel.backgroundColor!.isEqual(firstNumber.backgroundColor){
                runOrNot--
            }
        }
        
        if runOrNot == 3 {
            if buttonTwoLabel.backgroundColor!.isEqual(secondNumber.backgroundColor){
                runOrNot--
            }
        }
        
        if runOrNot == 2 {
            if buttonTwoLabel.backgroundColor!.isEqual(thirdNumber.backgroundColor){
                runOrNot--
            }
        }
        
        if runOrNot == 1 {
            if buttonTwoLabel.backgroundColor!.isEqual(fourthNumber.backgroundColor){
                runOrNot--
            }
        }

    }
    
    // BUTTON #3 PRESS
    @IBAction func buttonThreeDown(sender: AnyObject) {
        
        shadowOptions()
        
        if runOrNot == 4 {
            if (lives > 0 && count > 0 && !(firstNumber.backgroundColor!.isEqual(testingLabel.backgroundColor))){
                if buttonThreeText.text == firstNumber.text && buttonThreeLabel.backgroundColor!.isEqual(firstNumber.backgroundColor){
                    if (scoreKeep <= 9){
                        score.text = "0" + "\(scoreKeep++ + 1)"
                    } else {
                        score.text = "\(scoreKeep++ + 1)"
                    }
                    correctAnswer()
                    // green color button - correct coice
                    buttonThreeLabel.backgroundColor = UIColor(netHex: 0x8ef32f)
                    buttonThreeLabel.layer.shadowColor = UIColor(netHex: 0x7ad524).CGColor
                    firstNumber.backgroundColor = UIColor(netHex: 0x8ef32f)
                    firstNumber.layer.shadowColor = UIColor(netHex: 0x7ad524).CGColor
                } else {
                    // subtract life if incorrect choice is chosen
                    lives--
                    
                    // red color button - incorrect choice
                    buttonThreeLabel.backgroundColor = UIColor(netHex: 0xff4f51)
                    pressButtonWrongSound()
                    buttonThreeLabel.layer.shadowColor = UIColor(netHex: 0xdf3131).CGColor
                    buttonThreeLabel.layer.shadowRadius = 0
                    buttonThreeLabel.layer.shadowOpacity = 1
                    buttonThreeLabel.layer.shadowOffset = CGSizeMake(0, 4)
                }
            }
        }
        
        gameFinish()
        
        if runOrNot == 3 {
            if (lives > 0 && count > 0 && !(secondNumber.backgroundColor!.isEqual(testingLabel.backgroundColor))){
                if buttonThreeText.text == secondNumber.text && buttonThreeLabel.backgroundColor!.isEqual(secondNumber.backgroundColor){
                    if (scoreKeep <= 9){
                        score.text = "0" + "\(scoreKeep++ + 1)"
                    } else {
                        score.text = "\(scoreKeep++ + 1)"
                    }
                    correctAnswer()
                    // green color button - correct coice
                    buttonThreeLabel.backgroundColor = UIColor(netHex: 0x8ef32f)
                    buttonThreeLabel.layer.shadowColor = UIColor(netHex: 0x7ad524).CGColor
                    secondNumber.backgroundColor = UIColor(netHex: 0x8ef32f)
                    secondNumber.layer.shadowColor = UIColor(netHex: 0x7ad524).CGColor
                } else {
                    // subtract life if incorrect choice is chosen
                    lives--
                    
                    // red color button - incorrect choice
                    buttonThreeLabel.backgroundColor = UIColor(netHex: 0xff4f51)
                    pressButtonWrongSound()
                    buttonThreeLabel.layer.shadowColor = UIColor(netHex: 0xdf3131).CGColor
                    buttonThreeLabel.layer.shadowRadius = 0
                    buttonThreeLabel.layer.shadowOpacity = 1
                    buttonThreeLabel.layer.shadowOffset = CGSizeMake(0, 4)
                }
            }
        }
        
        gameFinish()
        
        if runOrNot == 2 {
            if (lives > 0 && count > 0 && !(thirdNumber.backgroundColor!.isEqual(testingLabel.backgroundColor))){
                if buttonThreeText.text == thirdNumber.text && buttonThreeLabel.backgroundColor!.isEqual(thirdNumber.backgroundColor){
                    if (scoreKeep <= 9){
                        score.text = "0" + "\(scoreKeep++ + 1)"
                    } else {
                        score.text = "\(scoreKeep++ + 1)"
                    }
                    correctAnswer()
                    // green color button - correct coice
                    buttonThreeLabel.backgroundColor = UIColor(netHex: 0x8ef32f)
                    buttonThreeLabel.layer.shadowColor = UIColor(netHex: 0x7ad524).CGColor
                    thirdNumber.backgroundColor = UIColor(netHex: 0x8ef32f)
                    thirdNumber.layer.shadowColor = UIColor(netHex: 0x7ad524).CGColor
                } else {
                    // subtract life if incorrect choice is chosen
                    lives--
                    
                    // red color button - incorrect choice
                    buttonThreeLabel.backgroundColor = UIColor(netHex: 0xff4f51)
                    pressButtonWrongSound()
                    buttonThreeLabel.layer.shadowColor = UIColor(netHex: 0xdf3131).CGColor
                    buttonThreeLabel.layer.shadowRadius = 0
                    buttonThreeLabel.layer.shadowOpacity = 1
                    buttonThreeLabel.layer.shadowOffset = CGSizeMake(0, 4)
                }
            }
        }
        
        gameFinish()
        
        if runOrNot == 1 {
            if (lives > 0 && count > 0 && !(fourthNumber.backgroundColor!.isEqual(testingLabel.backgroundColor))){
                if buttonThreeText.text == fourthNumber.text && buttonThreeLabel.backgroundColor!.isEqual(fourthNumber.backgroundColor){
                    if (scoreKeep <= 9){
                        score.text = "0" + "\(scoreKeep++ + 1)"
                    } else {
                        score.text = "\(scoreKeep++ + 1)"
                    }
                    correctAnswer()
                    // green color button - correct coice
                    buttonThreeLabel.backgroundColor = UIColor(netHex: 0x8ef32f)
                    buttonThreeLabel.layer.shadowColor = UIColor(netHex: 0x7ad524).CGColor
                    fourthNumber.backgroundColor = UIColor(netHex: 0x8ef32f)
                    fourthNumber.layer.shadowColor = UIColor(netHex: 0x7ad524).CGColor
                } else {
                    // subtract life if incorrect choice is chosen
                    lives--
                    
                    // red color button - incorrect choice
                    buttonThreeLabel.backgroundColor = UIColor(netHex: 0xff4f51)
                    pressButtonWrongSound()
                    buttonThreeLabel.layer.shadowColor = UIColor(netHex: 0xdf3131).CGColor
                    buttonThreeLabel.layer.shadowRadius = 0
                    buttonThreeLabel.layer.shadowOpacity = 1
                    buttonThreeLabel.layer.shadowOffset = CGSizeMake(0, 4)
                }
            }
        }
        
        gameFinish()
        
    }
    
    // BUTTON #3 - RELEASE
    @IBAction func buttonThreeRelease(sender: AnyObject) {
        
        if runOrNot == 4 {
            if buttonThreeLabel.backgroundColor!.isEqual(firstNumber.backgroundColor){
                runOrNot--
            }
        }
        
        if runOrNot == 3 {
            if buttonThreeLabel.backgroundColor!.isEqual(secondNumber.backgroundColor){
                runOrNot--
            }
        }
        
        if runOrNot == 2 {
            if buttonThreeLabel.backgroundColor!.isEqual(thirdNumber.backgroundColor){
                runOrNot--
            }
        }
        
        if runOrNot == 1 {
            if buttonThreeLabel.backgroundColor!.isEqual(fourthNumber.backgroundColor){
                runOrNot--
            }
        }

    }
    
    // BUTTON #4 PRESS
    @IBAction func buttonFourDown(sender: AnyObject) {
        
        shadowOptions()
        
        if runOrNot == 4 {
            if (lives > 0 && count > 0 && !(firstNumber.backgroundColor!.isEqual(testingLabel.backgroundColor))){
                if buttonFourText.text == firstNumber.text && buttonFourLabel.backgroundColor!.isEqual(firstNumber.backgroundColor){
                    if (scoreKeep <= 9){
                        score.text = "0" + "\(scoreKeep++ + 1)"
                    } else {
                        score.text = "\(scoreKeep++ + 1)"
                    }
                    correctAnswer()
                    // green color button - correct coice
                    buttonFourLabel.backgroundColor = UIColor(netHex: 0x8ef32f)
                    buttonFourLabel.layer.shadowColor = UIColor(netHex: 0x7ad524).CGColor
                    firstNumber.backgroundColor = UIColor(netHex: 0x8ef32f)
                    firstNumber.layer.shadowColor = UIColor(netHex: 0x7ad524).CGColor
                } else {
                    // subtract life if incorrect choice is chosen
                    lives--
                    
                    // red color button - incorrect choice
                    buttonFourLabel.backgroundColor = UIColor(netHex: 0xff4f51)
                    pressButtonWrongSound()
                    buttonFourLabel.layer.shadowColor = UIColor(netHex: 0xdf3131).CGColor
                    buttonFourLabel.layer.shadowRadius = 0
                    buttonFourLabel.layer.shadowOpacity = 1
                    buttonFourLabel.layer.shadowOffset = CGSizeMake(0, 4)
                }
            }
        }
        
        gameFinish()
        
        if runOrNot == 3 {
            if (lives > 0 && count > 0 && !(secondNumber.backgroundColor!.isEqual(testingLabel.backgroundColor))){
                if buttonFourText.text == secondNumber.text && buttonFourLabel.backgroundColor!.isEqual(secondNumber.backgroundColor){
                    if (scoreKeep <= 9){
                        score.text = "0" + "\(scoreKeep++ + 1)"
                    } else {
                        score.text = "\(scoreKeep++ + 1)"
                    }
                    correctAnswer()
                    // green color button - correct coice
                    buttonFourLabel.backgroundColor = UIColor(netHex: 0x8ef32f)
                    buttonFourLabel.layer.shadowColor = UIColor(netHex: 0x7ad524).CGColor
                    secondNumber.backgroundColor = UIColor(netHex: 0x8ef32f)
                    secondNumber.layer.shadowColor = UIColor(netHex: 0x7ad524).CGColor
                } else {
                    // subtract life if incorrect choice is chosen
                    lives--
                    
                    // red color button - incorrect choice
                    buttonFourLabel.backgroundColor = UIColor(netHex: 0xff4f51)
                    pressButtonWrongSound()
                    buttonFourLabel.layer.shadowColor = UIColor(netHex: 0xdf3131).CGColor
                    buttonFourLabel.layer.shadowRadius = 0
                    buttonFourLabel.layer.shadowOpacity = 1
                    buttonFourLabel.layer.shadowOffset = CGSizeMake(0, 4)
                }
            }
        }
        
        gameFinish()
        
        if runOrNot == 2 {
            if (lives > 0 && count > 0 && !(thirdNumber.backgroundColor!.isEqual(testingLabel.backgroundColor))){
                if buttonFourText.text == thirdNumber.text && buttonFourLabel.backgroundColor!.isEqual(thirdNumber.backgroundColor){
                    if (scoreKeep <= 9){
                        score.text = "0" + "\(scoreKeep++ + 1)"
                    } else {
                        score.text = "\(scoreKeep++ + 1)"
                    }
                    correctAnswer()
                    // green color button - correct coice
                    buttonFourLabel.backgroundColor = UIColor(netHex: 0x8ef32f)
                    buttonFourLabel.layer.shadowColor = UIColor(netHex: 0x7ad524).CGColor
                    thirdNumber.backgroundColor = UIColor(netHex: 0x8ef32f)
                    thirdNumber.layer.shadowColor = UIColor(netHex: 0x7ad524).CGColor
                } else {
                    // subtract life if incorrect choice is chosen
                    lives--
                    
                    // red color button - incorrect choice
                    buttonFourLabel.backgroundColor = UIColor(netHex: 0xff4f51)
                    pressButtonWrongSound()
                    buttonFourLabel.layer.shadowColor = UIColor(netHex: 0xdf3131).CGColor
                    buttonFourLabel.layer.shadowRadius = 0
                    buttonFourLabel.layer.shadowOpacity = 1
                    buttonFourLabel.layer.shadowOffset = CGSizeMake(0, 4)
                }
            }
        }
        
        gameFinish()
        
        if runOrNot == 1 {
            if (lives > 0 && count > 0 && !(fourthNumber.backgroundColor!.isEqual(testingLabel.backgroundColor))){
                if buttonFourText.text == fourthNumber.text && buttonFourLabel.backgroundColor!.isEqual(fourthNumber.backgroundColor){
                    if (scoreKeep <= 9){
                        score.text = "0" + "\(scoreKeep++ + 1)"
                    } else {
                        score.text = "\(scoreKeep++ + 1)"
                    }
                    correctAnswer()
                    // green color button - correct coice
                    buttonFourLabel.backgroundColor = UIColor(netHex: 0x8ef32f)
                    buttonFourLabel.layer.shadowColor = UIColor(netHex: 0x7ad524).CGColor
                    fourthNumber.backgroundColor = UIColor(netHex: 0x8ef32f)
                    fourthNumber.layer.shadowColor = UIColor(netHex: 0x7ad524).CGColor
                } else {
                    // subtract life if incorrect choice is chosen
                    lives--
                    
                    // red color button - incorrect choice
                    buttonFourLabel.backgroundColor = UIColor(netHex: 0xff4f51)
                    pressButtonWrongSound()
                    buttonFourLabel.layer.shadowColor = UIColor(netHex: 0xdf3131).CGColor
                    buttonFourLabel.layer.shadowRadius = 0
                    buttonFourLabel.layer.shadowOpacity = 1
                    buttonFourLabel.layer.shadowOffset = CGSizeMake(0, 4)
                }
            }
        }
        
        gameFinish()
        
    }
    
    // BUTTON #4 - RELEASE
    @IBAction func buttonFourRelease(sender: AnyObject) {
        
        if runOrNot == 4 {
            if buttonFourLabel.backgroundColor!.isEqual(firstNumber.backgroundColor){
                runOrNot--
            }
        }
        
        if runOrNot == 3 {
            if buttonFourLabel.backgroundColor!.isEqual(secondNumber.backgroundColor){
                runOrNot--
            }
        }
        
        if runOrNot == 2 {
            if buttonFourLabel.backgroundColor!.isEqual(thirdNumber.backgroundColor){
                runOrNot--
            }
        }
        
        if runOrNot == 1 {
            if buttonFourLabel.backgroundColor!.isEqual(fourthNumber.backgroundColor){
                runOrNot--
            }
        }
        
    }

    // BUTTON #5 PRESS
    @IBAction func buttonFiveDown(sender: AnyObject) {
        
        shadowOptions()
        
        if runOrNot == 4 {
            if (lives > 0 && count > 0 && !(firstNumber.backgroundColor!.isEqual(testingLabel.backgroundColor))){
                if buttonFiveText.text == firstNumber.text && buttonFiveLabel.backgroundColor!.isEqual(firstNumber.backgroundColor){
                    if (scoreKeep <= 9){
                        score.text = "0" + "\(scoreKeep++ + 1)"
                    } else {
                        score.text = "\(scoreKeep++ + 1)"
                    }
                    correctAnswer()
                    // green color button - correct coice
                    buttonFiveLabel.backgroundColor = UIColor(netHex: 0x8ef32f)
                    buttonFiveLabel.layer.shadowColor = UIColor(netHex: 0x7ad524).CGColor
                    firstNumber.backgroundColor = UIColor(netHex: 0x8ef32f)
                    firstNumber.layer.shadowColor = UIColor(netHex: 0x7ad524).CGColor
                } else {
                    // subtract life if incorrect choice is chosen
                    lives--
                    
                    // red color button - incorrect choice
                    buttonFiveLabel.backgroundColor = UIColor(netHex: 0xff4f51)
                    pressButtonWrongSound()
                    buttonFiveLabel.layer.shadowColor = UIColor(netHex: 0xdf3131).CGColor
                    buttonFiveLabel.layer.shadowRadius = 0
                    buttonFiveLabel.layer.shadowOpacity = 1
                    buttonFiveLabel.layer.shadowOffset = CGSizeMake(0, 4)
                }
            }
        }
        
        gameFinish()
        
        if runOrNot == 3 {
            if (lives > 0 && count > 0 && !(secondNumber.backgroundColor!.isEqual(testingLabel.backgroundColor))){
                if buttonFiveText.text == secondNumber.text && buttonFiveLabel.backgroundColor!.isEqual(secondNumber.backgroundColor){
                    if (scoreKeep <= 9){
                        score.text = "0" + "\(scoreKeep++ + 1)"
                    } else {
                        score.text = "\(scoreKeep++ + 1)"
                    }
                    correctAnswer()
                    // green color button - correct coice
                    buttonFiveLabel.backgroundColor = UIColor(netHex: 0x8ef32f)
                    buttonFiveLabel.layer.shadowColor = UIColor(netHex: 0x7ad524).CGColor
                    secondNumber.backgroundColor = UIColor(netHex: 0x8ef32f)
                    secondNumber.layer.shadowColor = UIColor(netHex: 0x7ad524).CGColor
                } else {
                    // subtract life if incorrect choice is chosen
                    lives--
                    
                    // red color button - incorrect choice
                    buttonFiveLabel.backgroundColor = UIColor(netHex: 0xff4f51)
                    pressButtonWrongSound()
                    buttonFiveLabel.layer.shadowColor = UIColor(netHex: 0xdf3131).CGColor
                    buttonFiveLabel.layer.shadowRadius = 0
                    buttonFiveLabel.layer.shadowOpacity = 1
                    buttonFiveLabel.layer.shadowOffset = CGSizeMake(0, 4)
                }
            }
        }
        
        gameFinish()
        
        if runOrNot == 2 {
            if (lives > 0 && count > 0 && !(thirdNumber.backgroundColor!.isEqual(testingLabel.backgroundColor))){
                if buttonFiveText.text == thirdNumber.text && buttonFiveLabel.backgroundColor!.isEqual(thirdNumber.backgroundColor){
                    if (scoreKeep <= 9){
                        score.text = "0" + "\(scoreKeep++ + 1)"
                    } else {
                        score.text = "\(scoreKeep++ + 1)"
                    }
                    correctAnswer()
                    // green color button - correct coice
                    buttonFiveLabel.backgroundColor = UIColor(netHex: 0x8ef32f)
                    buttonFiveLabel.layer.shadowColor = UIColor(netHex: 0x7ad524).CGColor
                    thirdNumber.backgroundColor = UIColor(netHex: 0x8ef32f)
                    thirdNumber.layer.shadowColor = UIColor(netHex: 0x7ad524).CGColor
                } else {
                    // subtract life if incorrect choice is chosen
                    lives--
                    
                    // red color button - incorrect choice
                    buttonFiveLabel.backgroundColor = UIColor(netHex: 0xff4f51)
                    pressButtonWrongSound()
                    buttonFiveLabel.layer.shadowColor = UIColor(netHex: 0xdf3131).CGColor
                    buttonFiveLabel.layer.shadowRadius = 0
                    buttonFiveLabel.layer.shadowOpacity = 1
                    buttonFiveLabel.layer.shadowOffset = CGSizeMake(0, 4)
                }
            }
        }
        
        gameFinish()
        
        if runOrNot == 1 {
            if (lives > 0 && count > 0 && !(fourthNumber.backgroundColor!.isEqual(testingLabel.backgroundColor))){
                if buttonFiveText.text == fourthNumber.text && buttonFiveLabel.backgroundColor!.isEqual(fourthNumber.backgroundColor){
                    if (scoreKeep <= 9){
                        score.text = "0" + "\(scoreKeep++ + 1)"
                    } else {
                        score.text = "\(scoreKeep++ + 1)"
                    }
                    correctAnswer()
                    // green color button - correct coice
                    buttonFiveLabel.backgroundColor = UIColor(netHex: 0x8ef32f)
                    buttonFiveLabel.layer.shadowColor = UIColor(netHex: 0x7ad524).CGColor
                    fourthNumber.backgroundColor = UIColor(netHex: 0x8ef32f)
                    fourthNumber.layer.shadowColor = UIColor(netHex: 0x7ad524).CGColor
                } else {
                    // subtract life if incorrect choice is chosen
                    lives--
                    
                    // red color button - incorrect choice
                    buttonFiveLabel.backgroundColor = UIColor(netHex: 0xff4f51)
                    pressButtonWrongSound()
                    buttonFiveLabel.layer.shadowColor = UIColor(netHex: 0xdf3131).CGColor
                    buttonFiveLabel.layer.shadowRadius = 0
                    buttonFiveLabel.layer.shadowOpacity = 1
                    buttonFiveLabel.layer.shadowOffset = CGSizeMake(0, 4)
                }
            }
        }
        
        gameFinish()
        
    }
    
    // BUTTON #5 - RELEASE
    @IBAction func buttonFiveRelease(sender: AnyObject) {
        
        if runOrNot == 4 {
            if buttonFiveLabel.backgroundColor!.isEqual(firstNumber.backgroundColor){
                runOrNot--
            }
        }
        
        if runOrNot == 3 {
            if buttonFiveLabel.backgroundColor!.isEqual(secondNumber.backgroundColor){
                runOrNot--
            }
        }
        
        if runOrNot == 2 {
            if buttonFiveLabel.backgroundColor!.isEqual(thirdNumber.backgroundColor){
                runOrNot--
            }
        }
        
        if runOrNot == 1 {
            if buttonFiveLabel.backgroundColor!.isEqual(fourthNumber.backgroundColor){
                runOrNot--
            }
        }

    }
    
    // BUTTON #6 PRESS
    @IBAction func buttonSixDown(sender: AnyObject) {
        
        shadowOptions()
        
        if runOrNot == 4 {
            if (lives > 0 && count > 0 && !(firstNumber.backgroundColor!.isEqual(testingLabel.backgroundColor))){
                if buttonSixText.text == firstNumber.text && buttonSixLabel.backgroundColor!.isEqual(firstNumber.backgroundColor){
                    if (scoreKeep <= 9){
                        score.text = "0" + "\(scoreKeep++ + 1)"
                    } else {
                        score.text = "\(scoreKeep++ + 1)"
                    }
                    correctAnswer()
                    // green color button - correct coice
                    buttonSixLabel.backgroundColor = UIColor(netHex: 0x8ef32f)
                    buttonSixLabel.layer.shadowColor = UIColor(netHex: 0x7ad524).CGColor
                    firstNumber.backgroundColor = UIColor(netHex: 0x8ef32f)
                    firstNumber.layer.shadowColor = UIColor(netHex: 0x7ad524).CGColor
                } else {
                    // subtract life if incorrect choice is chosen
                    lives--
                    
                    // red color button - incorrect choice
                    buttonSixLabel.backgroundColor = UIColor(netHex: 0xff4f51)
                    pressButtonWrongSound()
                    buttonSixLabel.layer.shadowColor = UIColor(netHex: 0xdf3131).CGColor
                    buttonSixLabel.layer.shadowRadius = 0
                    buttonSixLabel.layer.shadowOpacity = 1
                    buttonSixLabel.layer.shadowOffset = CGSizeMake(0, 4)
                }
            }
        }
        
        gameFinish()
        
        if runOrNot == 3 {
            if (lives > 0 && count > 0 && !(secondNumber.backgroundColor!.isEqual(testingLabel.backgroundColor))){
                if buttonSixText.text == secondNumber.text && buttonSixLabel.backgroundColor!.isEqual(secondNumber.backgroundColor){
                    if (scoreKeep <= 9){
                        score.text = "0" + "\(scoreKeep++ + 1)"
                    } else {
                        score.text = "\(scoreKeep++ + 1)"
                    }
                    correctAnswer()
                    // green color button - correct coice
                    buttonSixLabel.backgroundColor = UIColor(netHex: 0x8ef32f)
                    buttonSixLabel.layer.shadowColor = UIColor(netHex: 0x7ad524).CGColor
                    secondNumber.backgroundColor = UIColor(netHex: 0x8ef32f)
                    secondNumber.layer.shadowColor = UIColor(netHex: 0x7ad524).CGColor
                } else {
                    // subtract life if incorrect choice is chosen
                    lives--
                    
                    // red color button - incorrect choice
                    buttonSixLabel.backgroundColor = UIColor(netHex: 0xff4f51)
                    pressButtonWrongSound()
                    buttonSixLabel.layer.shadowColor = UIColor(netHex: 0xdf3131).CGColor
                    buttonSixLabel.layer.shadowRadius = 0
                    buttonSixLabel.layer.shadowOpacity = 1
                    buttonSixLabel.layer.shadowOffset = CGSizeMake(0, 4)
                }
            }
        }
        
        gameFinish()
        
        if runOrNot == 2 {
            if (lives > 0 && count > 0 && !(thirdNumber.backgroundColor!.isEqual(testingLabel.backgroundColor))){
                if buttonSixText.text == thirdNumber.text && buttonSixLabel.backgroundColor!.isEqual(thirdNumber.backgroundColor){
                    if (scoreKeep <= 9){
                        score.text = "0" + "\(scoreKeep++ + 1)"
                    } else {
                        score.text = "\(scoreKeep++ + 1)"
                    }
                    correctAnswer()
                    // green color button - correct coice
                    buttonSixLabel.backgroundColor = UIColor(netHex: 0x8ef32f)
                    buttonSixLabel.layer.shadowColor = UIColor(netHex: 0x7ad524).CGColor
                    thirdNumber.backgroundColor = UIColor(netHex: 0x8ef32f)
                    thirdNumber.layer.shadowColor = UIColor(netHex: 0x7ad524).CGColor
                } else {
                    // subtract life if incorrect choice is chosen
                    lives--
                    
                    // red color button - incorrect choice
                    buttonSixLabel.backgroundColor = UIColor(netHex: 0xff4f51)
                    pressButtonWrongSound()
                    buttonSixLabel.layer.shadowColor = UIColor(netHex: 0xdf3131).CGColor
                    buttonSixLabel.layer.shadowRadius = 0
                    buttonSixLabel.layer.shadowOpacity = 1
                    buttonSixLabel.layer.shadowOffset = CGSizeMake(0, 4)
                }
            }
        }
        
        gameFinish()
        
        if runOrNot == 1 {
            if (lives > 0 && count > 0 && !(fourthNumber.backgroundColor!.isEqual(testingLabel.backgroundColor))){
                if buttonSixText.text == fourthNumber.text && buttonSixLabel.backgroundColor!.isEqual(fourthNumber.backgroundColor){
                    if (scoreKeep <= 9){
                        score.text = "0" + "\(scoreKeep++ + 1)"
                    } else {
                        score.text = "\(scoreKeep++ + 1)"
                    }
                    correctAnswer()
                    // green color button - correct coice
                    buttonSixLabel.backgroundColor = UIColor(netHex: 0x8ef32f)
                    buttonSixLabel.layer.shadowColor = UIColor(netHex: 0x7ad524).CGColor
                    fourthNumber.backgroundColor = UIColor(netHex: 0x8ef32f)
                    fourthNumber.layer.shadowColor = UIColor(netHex: 0x7ad524).CGColor
                } else {
                    // subtract life if incorrect choice is chosen
                    lives--
                    
                    // red color button - incorrect choice
                    buttonSixLabel.backgroundColor = UIColor(netHex: 0xff4f51)
                    pressButtonWrongSound()
                    buttonSixLabel.layer.shadowColor = UIColor(netHex: 0xdf3131).CGColor
                    buttonSixLabel.layer.shadowRadius = 0
                    buttonSixLabel.layer.shadowOpacity = 1
                    buttonSixLabel.layer.shadowOffset = CGSizeMake(0, 4)
                }
            }
        }
        
        gameFinish()
        
    }
    
    // BUTTON #6 - RELEASE
    @IBAction func buttonSixRelease(sender: AnyObject) {
        
        if runOrNot == 4 {
            if buttonSixLabel.backgroundColor!.isEqual(firstNumber.backgroundColor){
                runOrNot--
            }
        }
        
        if runOrNot == 3 {
            if buttonSixLabel.backgroundColor!.isEqual(secondNumber.backgroundColor){
                runOrNot--
            }
        }
        
        if runOrNot == 2 {
            if buttonSixLabel.backgroundColor!.isEqual(thirdNumber.backgroundColor){
                runOrNot--
            }
        }
        
        if runOrNot == 1 {
            if buttonSixLabel.backgroundColor!.isEqual(fourthNumber.backgroundColor){
                runOrNot--
            }
        }

    }
    
    // BUTTON #7 PRESS
    @IBAction func buttonSevenDown(sender: AnyObject) {
        
        shadowOptions()
        
        if runOrNot == 4 {
            if (lives > 0 && count > 0 && !(firstNumber.backgroundColor!.isEqual(testingLabel.backgroundColor))){
                if buttonSevenText.text == firstNumber.text && buttonSevenLabel.backgroundColor!.isEqual(firstNumber.backgroundColor){
                    if (scoreKeep <= 9){
                        score.text = "0" + "\(scoreKeep++ + 1)"
                    } else {
                        score.text = "\(scoreKeep++ + 1)"
                    }
                    correctAnswer()
                    // green color button - correct coice
                    buttonSevenLabel.backgroundColor = UIColor(netHex: 0x8ef32f)
                    buttonSevenLabel.layer.shadowColor = UIColor(netHex: 0x7ad524).CGColor
                    firstNumber.backgroundColor = UIColor(netHex: 0x8ef32f)
                    firstNumber.layer.shadowColor = UIColor(netHex: 0x7ad524).CGColor
                } else {
                    // subtract life if incorrect choice is chosen
                    lives--
                    
                    // red color button - incorrect choice
                    buttonSevenLabel.backgroundColor = UIColor(netHex: 0xff4f51)
                    pressButtonWrongSound()
                    buttonSevenLabel.layer.shadowColor = UIColor(netHex: 0xdf3131).CGColor
                    buttonSevenLabel.layer.shadowRadius = 0
                    buttonSevenLabel.layer.shadowOpacity = 1
                    buttonSevenLabel.layer.shadowOffset = CGSizeMake(0, 4)
                }
            }
        }
        
        gameFinish()
        
        if runOrNot == 3 {
            if (lives > 0 && count > 0 && !(secondNumber.backgroundColor!.isEqual(testingLabel.backgroundColor))){
                if buttonSevenText.text == secondNumber.text && buttonSevenLabel.backgroundColor!.isEqual(secondNumber.backgroundColor){
                    if (scoreKeep <= 9){
                        score.text = "0" + "\(scoreKeep++ + 1)"
                    } else {
                        score.text = "\(scoreKeep++ + 1)"
                    }
                    correctAnswer()
                    // green color button - correct coice
                    buttonSevenLabel.backgroundColor = UIColor(netHex: 0x8ef32f)
                    buttonSevenLabel.layer.shadowColor = UIColor(netHex: 0x7ad524).CGColor
                    secondNumber.backgroundColor = UIColor(netHex: 0x8ef32f)
                    secondNumber.layer.shadowColor = UIColor(netHex: 0x7ad524).CGColor
                } else {
                    // subtract life if incorrect choice is chosen
                    lives--
                    
                    // red color button - incorrect choice
                    buttonSevenLabel.backgroundColor = UIColor(netHex: 0xff4f51)
                    pressButtonWrongSound()
                    buttonSevenLabel.layer.shadowColor = UIColor(netHex: 0xdf3131).CGColor
                    buttonSevenLabel.layer.shadowRadius = 0
                    buttonSevenLabel.layer.shadowOpacity = 1
                    buttonSevenLabel.layer.shadowOffset = CGSizeMake(0, 4)
                }
            }
        }
        
        gameFinish()
        
        if runOrNot == 2 {
            if (lives > 0 && count > 0 && !(thirdNumber.backgroundColor!.isEqual(testingLabel.backgroundColor))){
                if buttonSevenText.text == thirdNumber.text && buttonSevenLabel.backgroundColor!.isEqual(thirdNumber.backgroundColor){
                    if (scoreKeep <= 9){
                        score.text = "0" + "\(scoreKeep++ + 1)"
                    } else {
                        score.text = "\(scoreKeep++ + 1)"
                    }
                    correctAnswer()
                    // green color button - correct coice
                    buttonSevenLabel.backgroundColor = UIColor(netHex: 0x8ef32f)
                    buttonSevenLabel.layer.shadowColor = UIColor(netHex: 0x7ad524).CGColor
                    thirdNumber.backgroundColor = UIColor(netHex: 0x8ef32f)
                    thirdNumber.layer.shadowColor = UIColor(netHex: 0x7ad524).CGColor
                } else {
                    // subtract life if incorrect choice is chosen
                    lives--
                    
                    // red color button - incorrect choice
                    buttonSevenLabel.backgroundColor = UIColor(netHex: 0xff4f51)
                    pressButtonWrongSound()
                    buttonSevenLabel.layer.shadowColor = UIColor(netHex: 0xdf3131).CGColor
                    buttonSevenLabel.layer.shadowRadius = 0
                    buttonSevenLabel.layer.shadowOpacity = 1
                    buttonSevenLabel.layer.shadowOffset = CGSizeMake(0, 4)
                }
            }
        }
        
        gameFinish()
        
        if runOrNot == 1 {
            if (lives > 0 && count > 0 && !(fourthNumber.backgroundColor!.isEqual(testingLabel.backgroundColor))){
                if buttonSevenText.text == fourthNumber.text && buttonSevenLabel.backgroundColor!.isEqual(fourthNumber.backgroundColor){
                    if (scoreKeep <= 9){
                        score.text = "0" + "\(scoreKeep++ + 1)"
                    } else {
                        score.text = "\(scoreKeep++ + 1)"
                    }
                    correctAnswer()
                    // green color button - correct coice
                    buttonSevenLabel.backgroundColor = UIColor(netHex: 0x8ef32f)
                    buttonSevenLabel.layer.shadowColor = UIColor(netHex: 0x7ad524).CGColor
                    fourthNumber.backgroundColor = UIColor(netHex: 0x8ef32f)
                    fourthNumber.layer.shadowColor = UIColor(netHex: 0x7ad524).CGColor
                } else {
                    // subtract life if incorrect choice is chosen
                    lives--
                    
                    // red color button - incorrect choice
                    buttonSevenLabel.backgroundColor = UIColor(netHex: 0xff4f51)
                    pressButtonWrongSound()
                    buttonSevenLabel.layer.shadowColor = UIColor(netHex: 0xdf3131).CGColor
                    buttonSevenLabel.layer.shadowRadius = 0
                    buttonSevenLabel.layer.shadowOpacity = 1
                    buttonSevenLabel.layer.shadowOffset = CGSizeMake(0, 4)
                }
            }
        }
        
        gameFinish()
        
    }
    
    // BUTTON #7 - RELEASE
    @IBAction func buttonSevenRelease(sender: AnyObject) {
        
        if runOrNot == 4 {
            if buttonSevenLabel.backgroundColor!.isEqual(firstNumber.backgroundColor){
                runOrNot--
            }
        }
        
        if runOrNot == 3 {
            if buttonSevenLabel.backgroundColor!.isEqual(secondNumber.backgroundColor){
                runOrNot--
            }
        }
        
        if runOrNot == 2 {
            if buttonSevenLabel.backgroundColor!.isEqual(thirdNumber.backgroundColor){
                runOrNot--
            }
        }
        
        if runOrNot == 1 {
            if buttonSevenLabel.backgroundColor!.isEqual(fourthNumber.backgroundColor){
                runOrNot--
            }
        }

    }
    
    // BUTTON #8 PRESS
    @IBAction func buttonEightDown(sender: AnyObject) {
        
        shadowOptions()
        
        if runOrNot == 4 {
            if (lives > 0 && count > 0 && !(firstNumber.backgroundColor!.isEqual(testingLabel.backgroundColor))){
                if buttonEightText.text == firstNumber.text && buttonEightLabel.backgroundColor!.isEqual(firstNumber.backgroundColor){
                    if (scoreKeep <= 9){
                        score.text = "0" + "\(scoreKeep++ + 1)"
                    } else {
                        score.text = "\(scoreKeep++ + 1)"
                    }
                    correctAnswer()
                    // green color button - correct coice
                    buttonEightLabel.backgroundColor = UIColor(netHex: 0x8ef32f)
                    buttonEightLabel.layer.shadowColor = UIColor(netHex: 0x7ad524).CGColor
                    firstNumber.backgroundColor = UIColor(netHex: 0x8ef32f)
                    firstNumber.layer.shadowColor = UIColor(netHex: 0x7ad524).CGColor
                } else {
                    // subtract life if incorrect choice is chosen
                    lives--
                    
                    // red color button - incorrect choice
                    buttonEightLabel.backgroundColor = UIColor(netHex: 0xff4f51)
                    pressButtonWrongSound()
                    buttonEightLabel.layer.shadowColor = UIColor(netHex: 0xdf3131).CGColor
                    buttonEightLabel.layer.shadowRadius = 0
                    buttonEightLabel.layer.shadowOpacity = 1
                    buttonEightLabel.layer.shadowOffset = CGSizeMake(0, 4)
                }
            }
        }
        
        gameFinish()
        
        if runOrNot == 3 {
            if (lives > 0 && count > 0 && !(secondNumber.backgroundColor!.isEqual(testingLabel.backgroundColor))){
                if buttonEightText.text == secondNumber.text && buttonEightLabel.backgroundColor!.isEqual(secondNumber.backgroundColor){
                    if (scoreKeep <= 9){
                        score.text = "0" + "\(scoreKeep++ + 1)"
                    } else {
                        score.text = "\(scoreKeep++ + 1)"
                    }
                    correctAnswer()
                    // green color button - correct coice
                    buttonEightLabel.backgroundColor = UIColor(netHex: 0x8ef32f)
                    buttonEightLabel.layer.shadowColor = UIColor(netHex: 0x7ad524).CGColor
                    secondNumber.backgroundColor = UIColor(netHex: 0x8ef32f)
                    secondNumber.layer.shadowColor = UIColor(netHex: 0x7ad524).CGColor
                } else {
                    // subtract life if incorrect choice is chosen
                    lives--
                    
                    // red color button - incorrect choice
                    buttonEightLabel.backgroundColor = UIColor(netHex: 0xff4f51)
                    pressButtonWrongSound()
                    buttonEightLabel.layer.shadowColor = UIColor(netHex: 0xdf3131).CGColor
                    buttonEightLabel.layer.shadowRadius = 0
                    buttonEightLabel.layer.shadowOpacity = 1
                    buttonEightLabel.layer.shadowOffset = CGSizeMake(0, 4)
                }
            }
        }
        
        gameFinish()
        
        if runOrNot == 2 {
            if (lives > 0 && count > 0 && !(thirdNumber.backgroundColor!.isEqual(testingLabel.backgroundColor))){
                if buttonEightText.text == thirdNumber.text && buttonEightLabel.backgroundColor!.isEqual(thirdNumber.backgroundColor){
                    if (scoreKeep <= 9){
                        score.text = "0" + "\(scoreKeep++ + 1)"
                    } else {
                        score.text = "\(scoreKeep++ + 1)"
                    }
                    correctAnswer()
                    // green color button - correct coice
                    buttonEightLabel.backgroundColor = UIColor(netHex: 0x8ef32f)
                    buttonEightLabel.layer.shadowColor = UIColor(netHex: 0x7ad524).CGColor
                    thirdNumber.backgroundColor = UIColor(netHex: 0x8ef32f)
                    thirdNumber.layer.shadowColor = UIColor(netHex: 0x7ad524).CGColor
                } else {
                    // subtract life if incorrect choice is chosen
                    lives--
                    
                    // red color button - incorrect choice
                    buttonEightLabel.backgroundColor = UIColor(netHex: 0xff4f51)
                    pressButtonWrongSound()
                    buttonEightLabel.layer.shadowColor = UIColor(netHex: 0xdf3131).CGColor
                    buttonEightLabel.layer.shadowRadius = 0
                    buttonEightLabel.layer.shadowOpacity = 1
                    buttonEightLabel.layer.shadowOffset = CGSizeMake(0, 4)
                }
            }
        }
        
        gameFinish()
        
        if runOrNot == 1 {
            if (lives > 0 && count > 0 && !(fourthNumber.backgroundColor!.isEqual(testingLabel.backgroundColor))){
                if buttonEightText.text == fourthNumber.text && buttonEightLabel.backgroundColor!.isEqual(fourthNumber.backgroundColor){
                    if (scoreKeep <= 9){
                        score.text = "0" + "\(scoreKeep++ + 1)"
                    } else {
                        score.text = "\(scoreKeep++ + 1)"
                    }
                    correctAnswer()
                    // green color button - correct coice
                    buttonEightLabel.backgroundColor = UIColor(netHex: 0x8ef32f)
                    buttonEightLabel.layer.shadowColor = UIColor(netHex: 0x7ad524).CGColor
                    fourthNumber.backgroundColor = UIColor(netHex: 0x8ef32f)
                    fourthNumber.layer.shadowColor = UIColor(netHex: 0x7ad524).CGColor
                } else {
                    // subtract life if incorrect choice is chosen
                    lives--
                    
                    // red color button - incorrect choice
                    buttonEightLabel.backgroundColor = UIColor(netHex: 0xff4f51)
                    pressButtonWrongSound()
                    buttonEightLabel.layer.shadowColor = UIColor(netHex: 0xdf3131).CGColor
                    buttonEightLabel.layer.shadowRadius = 0
                    buttonEightLabel.layer.shadowOpacity = 1
                    buttonEightLabel.layer.shadowOffset = CGSizeMake(0, 4)
                }
            }
        }
        
        gameFinish()
        
    }
    
    // BUTTON #8 - RELEASE
    @IBAction func buttonEightRelease(sender: AnyObject) {
        
        if runOrNot == 4 {
            if buttonEightLabel.backgroundColor!.isEqual(firstNumber.backgroundColor){
                runOrNot--
            }
        }
        
        if runOrNot == 3 {
            if buttonEightLabel.backgroundColor!.isEqual(secondNumber.backgroundColor){
                runOrNot--
            }
        }
        
        if runOrNot == 2 {
            if buttonEightLabel.backgroundColor!.isEqual(thirdNumber.backgroundColor){
                runOrNot--
            }
        }
        
        if runOrNot == 1 {
            if buttonEightLabel.backgroundColor!.isEqual(fourthNumber.backgroundColor){
                runOrNot--
            }
        }

    }
    
    // BUTTON #9 PRESS
    @IBAction func buttonNineDown(sender: AnyObject) {
        
        shadowOptions()
        
        if runOrNot == 4 {
            if (lives > 0 && count > 0 && !(firstNumber.backgroundColor!.isEqual(testingLabel.backgroundColor))){
                if buttonNineText.text == firstNumber.text && buttonNineLabel.backgroundColor!.isEqual(firstNumber.backgroundColor){
                    if (scoreKeep <= 9){
                        score.text = "0" + "\(scoreKeep++ + 1)"
                    } else {
                        score.text = "\(scoreKeep++ + 1)"
                    }
                    correctAnswer()
                    // green color button - correct coice
                    buttonNineLabel.backgroundColor = UIColor(netHex: 0x8ef32f)
                    buttonNineLabel.layer.shadowColor = UIColor(netHex: 0x7ad524).CGColor
                    firstNumber.backgroundColor = UIColor(netHex: 0x8ef32f)
                    firstNumber.layer.shadowColor = UIColor(netHex: 0x7ad524).CGColor
                } else {
                    // subtract life if incorrect choice is chosen
                    lives--
                    
                    // red color button - incorrect choice
                    buttonNineLabel.backgroundColor = UIColor(netHex: 0xff4f51)
                    pressButtonWrongSound()
                    buttonNineLabel.layer.shadowColor = UIColor(netHex: 0xdf3131).CGColor
                    buttonNineLabel.layer.shadowRadius = 0
                    buttonNineLabel.layer.shadowOpacity = 1
                    buttonNineLabel.layer.shadowOffset = CGSizeMake(0, 4)
                }
            }
        }
        
        gameFinish()
        
        if runOrNot == 3 {
            if (lives > 0 && count > 0 && !(secondNumber.backgroundColor!.isEqual(testingLabel.backgroundColor))){
                if buttonNineText.text == secondNumber.text && buttonNineLabel.backgroundColor!.isEqual(secondNumber.backgroundColor){
                    if (scoreKeep <= 9){
                        score.text = "0" + "\(scoreKeep++ + 1)"
                    } else {
                        score.text = "\(scoreKeep++ + 1)"
                    }
                    correctAnswer()
                    // green color button - correct coice
                    buttonNineLabel.backgroundColor = UIColor(netHex: 0x8ef32f)
                    buttonNineLabel.layer.shadowColor = UIColor(netHex: 0x7ad524).CGColor
                    secondNumber.backgroundColor = UIColor(netHex: 0x8ef32f)
                    secondNumber.layer.shadowColor = UIColor(netHex: 0x7ad524).CGColor
                } else {
                    // subtract life if incorrect choice is chosen
                    lives--
                    
                    // red color button - incorrect choice
                    buttonNineLabel.backgroundColor = UIColor(netHex: 0xff4f51)
                    pressButtonWrongSound()
                    buttonNineLabel.layer.shadowColor = UIColor(netHex: 0xdf3131).CGColor
                    buttonNineLabel.layer.shadowRadius = 0
                    buttonNineLabel.layer.shadowOpacity = 1
                    buttonNineLabel.layer.shadowOffset = CGSizeMake(0, 4)
                }
            }
        }
        
        gameFinish()
        
        if runOrNot == 2 {
            if (lives > 0 && count > 0 && !(thirdNumber.backgroundColor!.isEqual(testingLabel.backgroundColor))){
                if buttonNineText.text == thirdNumber.text && buttonNineLabel.backgroundColor!.isEqual(thirdNumber.backgroundColor){
                    if (scoreKeep <= 9){
                        score.text = "0" + "\(scoreKeep++ + 1)"
                    } else {
                        score.text = "\(scoreKeep++ + 1)"
                    }
                    correctAnswer()
                    // green color button - correct coice
                    buttonNineLabel.backgroundColor = UIColor(netHex: 0x8ef32f)
                    buttonNineLabel.layer.shadowColor = UIColor(netHex: 0x7ad524).CGColor
                    thirdNumber.backgroundColor = UIColor(netHex: 0x8ef32f)
                    thirdNumber.layer.shadowColor = UIColor(netHex: 0x7ad524).CGColor
                } else {
                    // subtract life if incorrect choice is chosen
                    lives--
                    
                    // red color button - incorrect choice
                    buttonNineLabel.backgroundColor = UIColor(netHex: 0xff4f51)
                    pressButtonWrongSound()
                    buttonNineLabel.layer.shadowColor = UIColor(netHex: 0xdf3131).CGColor
                    buttonNineLabel.layer.shadowRadius = 0
                    buttonNineLabel.layer.shadowOpacity = 1
                    buttonNineLabel.layer.shadowOffset = CGSizeMake(0, 4)
                }
            }
        }
        
        gameFinish()
        
        if runOrNot == 1 {
            if (lives > 0 && count > 0 && !(fourthNumber.backgroundColor!.isEqual(testingLabel.backgroundColor))){
                if buttonNineText.text == fourthNumber.text && buttonNineLabel.backgroundColor!.isEqual(fourthNumber.backgroundColor){
                    if (scoreKeep <= 9){
                        score.text = "0" + "\(scoreKeep++ + 1)"
                    } else {
                        score.text = "\(scoreKeep++ + 1)"
                    }
                    correctAnswer()
                    // green color button - correct coice
                    buttonNineLabel.backgroundColor = UIColor(netHex: 0x8ef32f)
                    buttonNineLabel.layer.shadowColor = UIColor(netHex: 0x7ad524).CGColor
                    fourthNumber.backgroundColor = UIColor(netHex: 0x8ef32f)
                    fourthNumber.layer.shadowColor = UIColor(netHex: 0x7ad524).CGColor
                } else {
                    // subtract life if incorrect choice is chosen
                    lives--
                    
                    // red color button - incorrect choice
                    buttonNineLabel.backgroundColor = UIColor(netHex: 0xff4f51)
                    pressButtonWrongSound()
                    buttonNineLabel.layer.shadowColor = UIColor(netHex: 0xdf3131).CGColor
                    buttonNineLabel.layer.shadowRadius = 0
                    buttonNineLabel.layer.shadowOpacity = 1
                    buttonNineLabel.layer.shadowOffset = CGSizeMake(0, 4)
                }
            }
        }
        
        gameFinish()
        
    }
    
    // BUTTON #9 - RELEASE
    @IBAction func buttonNineRelease(sender: AnyObject) {
        
        if runOrNot == 4 {
            if buttonNineLabel.backgroundColor!.isEqual(firstNumber.backgroundColor){
                runOrNot--
            }
        }
        
        if runOrNot == 3 {
            if buttonNineLabel.backgroundColor!.isEqual(secondNumber.backgroundColor){
                runOrNot--
            }
        }
        
        if runOrNot == 2 {
            if buttonNineLabel.backgroundColor!.isEqual(thirdNumber.backgroundColor){
                runOrNot--
            }
        }
        
        if runOrNot == 1 {
            if buttonNineLabel.backgroundColor!.isEqual(fourthNumber.backgroundColor){
                runOrNot--
            }
        }

    }

    // when back button is pressed, stop background music
    @IBAction func backOption(sender: AnyObject) {
        backgroundMusicPlayer.stop()
    }
    
    // timer + timer progress bar
    func update() {
        
        if count != 0 {
           count--
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

        countDownLabel.text = String(count)
        
        if (count == 1 || count == 2 || count == 3){
            countDownLabel.textColor = UIColor(netHex: 0xfc913a)
        }
        if (count == 0){
            countDownLabel.textColor = UIColor(netHex: 0xff0000)
        }
    }
    
    // check if game is finished
    func gameFinish(){
        
        if ( count == 0 ){
            disableButtons()
            stopTimer()
            tryAgain()
            tryAgainLabel.layer.opacity = 1
            tryAgainLabel.enabled = true
        }
        if ( lives == 0 ){
            disableButtons()
            stopTimer()
            tryAgainLabel.layer.opacity = 1
            tryAgainLabel.enabled = true
        }
        if scoreKeep == 4 {
            levelCompleteOptions()
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

