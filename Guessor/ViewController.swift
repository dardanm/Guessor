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
    
    @IBOutlet var xpLabel: UILabel!

    @IBOutlet var firstNumber: UILabel!
    @IBOutlet var secondNumber: UILabel!
    @IBOutlet var thirdNumber: UILabel!
    @IBOutlet var fourthNumber: UILabel!


    // button one text
    @IBOutlet var buttonOneText: UILabel!
    @IBOutlet var buttonTwoText: UILabel!
    @IBOutlet var buttonThreeText: UILabel!
    @IBOutlet var buttonFourText: UILabel!
    @IBOutlet var buttonFiveText: UILabel!
    @IBOutlet var buttonSixText: UILabel!
    @IBOutlet var buttonSevenText: UILabel!
    @IBOutlet var buttonEightText: UILabel!
    @IBOutlet var buttonNineText: UILabel!

    @IBOutlet var buttonOneLabel: UIButton!
    @IBOutlet var buttonTwoLabel: UIButton!
    @IBOutlet var buttonThreeLabel: UIButton!
    @IBOutlet var buttonFourLabel: UIButton!
    @IBOutlet var buttonFiveLabel: UIButton!
    @IBOutlet var buttonSixLabel: UIButton!
    @IBOutlet var buttonSevenLabel: UIButton!
    @IBOutlet var buttonEightLabel: UIButton!
    @IBOutlet var buttonNineLabel: UIButton!
    
    var buttonOne:Int = 0
    var buttonTwo:Int = 0
    var buttonThree:Int = 0
    var buttonFour:Int = 0
    var buttonFive:Int = 0
    var buttonSix:Int = 0
    var buttonSeven:Int = 0
    var buttonEight:Int = 0
    var buttonNine:Int = 0
    
    // LEVEL NUMBER
    var level:Int = 1
    
    // multiply top-left # by top-right #
    var numMultiply = 0

    // keep track of score 0/30
    var scoreKeep:Int = 0

    // level complete
    @IBOutlet var levelComplete: UILabel!
    
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
    
    
    @IBOutlet var testingLabel: UILabel!
    
    @IBOutlet var generateLabel: UIButton!

    @IBOutlet var tryAgainLabel: UIButton!
    
    @IBAction func tryAgain(sender: AnyObject) {
        enableButtons()
        
        numberOneOptionsColors()
        numberTwoOptionsColors()
        numberThreeOptionsColors()
        numberFourOptionsColors()
        
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
        
        count = 10
        scoreKeep = 0
        score.text = "0" + "\(scoreKeep)"
        lives = 3
        
        lifeOne.backgroundColor = UIColor (netHex: 0xF54040)
        lifeTwo.backgroundColor = UIColor (netHex: 0xF54040)
        lifeThree.backgroundColor = UIColor (netHex: 0xF54040)
        
        tryAgainLabel.layer.opacity = 0
        
    }
    
    override func prefersStatusBarHidden() -> Bool {
        return true
    }
    
    
    // ========= MAIN
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        // writing text where text text write
        
        // TO-DO LIST
        // ** pause game when home button is pressed
        
        progressTimer.transform = CGAffineTransformScale(progressTimer.transform, 1, 22)
        
        timer = NSTimer.scheduledTimerWithTimeInterval(1.0, target: self, selector: Selector("update"), userInfo: nil, repeats: true)
        
        countDownLabel.textColor = UIColor(netHex: 0xf36723)
        
        testingLabel.backgroundColor = UIColor (netHex: 0x8ef32f)
        testingLabel.layer.opacity = 0
        
        lifeOne.backgroundColor = UIColor (netHex: 0xF54040)
        lifeTwo.backgroundColor = UIColor (netHex: 0xF54040)
        lifeThree.backgroundColor = UIColor (netHex: 0xF54040)
        
        prefersStatusBarHidden()
        
        // TOP Number Background color
        numberOneOptionsColors()
        numberOneOptionsText()
        
        numberTwoOptionsColors()
        numberTwoOptionsText()
        
        numberThreeOptionsColors()
        numberThreeOptionsText()
        
        numberFourOptionsColors()
        numberFourOptionsText()
        
//      Button numbers randomize
        
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
        
        // try again
        tryAgainLabel.enabled = false
        tryAgainLabel.layer.opacity = 0


        
        playBackgroundMusic("background.mp3")
        backgroundMusicPlayer.volume = 0.5
        
        // add comment
        
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
    
    
    // ========= GUI / BUTTONS
    
    func shadowOptions() {
        firstNumber.layer.shadowRadius = 0
        firstNumber.layer.shadowOpacity = 1
        firstNumber.layer.shadowOffset = CGSizeMake(0, 4)
        
        secondNumber.layer.shadowRadius = 0
        secondNumber.layer.shadowOpacity = 1
        secondNumber.layer.shadowOffset = CGSizeMake(0, 4)
        
        thirdNumber.layer.shadowRadius = 0
        thirdNumber.layer.shadowOpacity = 1
        thirdNumber.layer.shadowOffset = CGSizeMake(0, 4)
        
        fourthNumber.layer.shadowRadius = 0
        fourthNumber.layer.shadowOpacity = 1
        fourthNumber.layer.shadowOffset = CGSizeMake(0, 4)
        
        buttonOneLabel.layer.shadowRadius = 0
        buttonOneLabel.layer.shadowOpacity = 1
        buttonOneLabel.layer.shadowOffset = CGSizeMake(0, 4)
        
        buttonTwoLabel.layer.shadowRadius = 0
        buttonTwoLabel.layer.shadowOpacity = 1
        buttonTwoLabel.layer.shadowOffset = CGSizeMake(0, 4)
        
        buttonThreeLabel.layer.shadowRadius = 0
        buttonThreeLabel.layer.shadowOpacity = 1
        buttonThreeLabel.layer.shadowOffset = CGSizeMake(0, 4)
        
        buttonFourLabel.layer.shadowRadius = 0
        buttonFourLabel.layer.shadowOpacity = 1
        buttonFourLabel.layer.shadowOffset = CGSizeMake(0, 4)
        
        buttonFiveLabel.layer.shadowRadius = 0
        buttonFiveLabel.layer.shadowOpacity = 1
        buttonFiveLabel.layer.shadowOffset = CGSizeMake(0, 4)
        
        buttonSixLabel.layer.shadowRadius = 0
        buttonSixLabel.layer.shadowOpacity = 1
        buttonSixLabel.layer.shadowOffset = CGSizeMake(0, 4)
        
        buttonSevenLabel.layer.shadowRadius = 0
        buttonSevenLabel.layer.shadowOpacity = 1
        buttonSevenLabel.layer.shadowOffset = CGSizeMake(0, 4)
        
        buttonEightLabel.layer.shadowRadius = 0
        buttonEightLabel.layer.shadowOpacity = 1
        buttonEightLabel.layer.shadowOffset = CGSizeMake(0, 4)
        
        buttonNineLabel.layer.shadowRadius = 0
        buttonNineLabel.layer.shadowOpacity = 1
        buttonNineLabel.layer.shadowOffset = CGSizeMake(0, 4)
    }
    
    func greenBackgroundOptions(){
        self.buttonOneOptionsColors()
        self.buttonOneOptionsText()
        self.buttonTwoOptionsColors()
        self.buttonTwoOptionsText()
        self.buttonThreeOptionsText()
        self.buttonThreeOptionsColors()
        self.buttonFourOptionsColors()
        self.buttonFourOptionsText()
        self.buttonFiveOptionsColors()
        self.buttonFiveOptionsText()
        self.buttonSixOptionsText()
        self.buttonSixOptionsColors()
        self.buttonSevenOptionsColors()
        self.buttonSevenOptionsText()
        self.buttonEightOptionsColors()
        self.buttonEightOptionsText()
        self.buttonNineOptionsText()
        self.buttonNineOptionsColors()
    }
    
    func disableButtons(){
        buttonOneLabel.enabled = false
        buttonTwoLabel.enabled = false
        buttonThreeLabel.enabled = false
        buttonFourLabel.enabled = false
        buttonFiveLabel.enabled = false
        buttonSixLabel.enabled = false
        buttonSevenLabel.enabled = false
        buttonEightLabel.enabled = false
        buttonNineLabel.enabled = false
        generateLabel.enabled = false
    }
    
    func enableButtons(){
        buttonOneLabel.enabled = true
        buttonTwoLabel.enabled = true
        buttonThreeLabel.enabled = true
        buttonFourLabel.enabled = true
        buttonFiveLabel.enabled = true
        buttonSixLabel.enabled = true
        buttonSevenLabel.enabled = true
        buttonEightLabel.enabled = true
        buttonNineLabel.enabled = true
        generateLabel.enabled = true
    }
    
    func levelCompleteOptions(){
        levelComplete.textColor = UIColor (netHex: 0xFFFFFF)
        levelComplete.backgroundColor = UIColor (netHex: 0xA8E6CE)
        levelComplete.layer.opacity = 1.0
    }
    
    
    func gameFinish(){
        
        if ( count == 0 ){
            disableButtons()
            tryAgainLabel.layer.opacity = 1
            tryAgainLabel.enabled = true
        }
        if ( lives == 0 ){
            disableButtons()
            tryAgainLabel.layer.opacity = 1
            tryAgainLabel.enabled = true
        }
        if scoreKeep == 4 {
            levelCompleteOptions()
            disableButtons()
            // time pause
//            timer.invalidate()
        }
        if lives == 2 {lifeOne.backgroundColor = UIColor (netHex: 0xFFFFFF)}
        if lives == 1 {lifeTwo.backgroundColor = UIColor (netHex: 0xFFFFFF)}
        if lives == 0 {lifeThree.backgroundColor = UIColor (netHex: 0xFFFFFF)}
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
                    pressButtonCorrectSound()
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
                    pressButtonCorrectSound()
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
                    pressButtonCorrectSound()
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
                    pressButtonCorrectSound()
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
                    pressButtonCorrectSound()
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
                    pressButtonCorrectSound()
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
                    pressButtonCorrectSound()
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
                    pressButtonCorrectSound()
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
                    pressButtonCorrectSound()
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
                    pressButtonCorrectSound()
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
                    pressButtonCorrectSound()
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
                    pressButtonCorrectSound()
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
                    pressButtonCorrectSound()
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
                    pressButtonCorrectSound()
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
                    pressButtonCorrectSound()
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
                    pressButtonCorrectSound()
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
                    pressButtonCorrectSound()
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
                    pressButtonCorrectSound()
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
                    pressButtonCorrectSound()
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
                    pressButtonCorrectSound()
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
                    pressButtonCorrectSound()
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
                    pressButtonCorrectSound()
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
                    pressButtonCorrectSound()
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
                    pressButtonCorrectSound()
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
                    pressButtonCorrectSound()
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
                    pressButtonCorrectSound()
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
                    pressButtonCorrectSound()
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
                    pressButtonCorrectSound()
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
                    pressButtonCorrectSound()
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
                    pressButtonCorrectSound()
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
                    pressButtonCorrectSound()
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
                    pressButtonCorrectSound()
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
                    pressButtonCorrectSound()
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
                    pressButtonCorrectSound()
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
                    pressButtonCorrectSound()
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
                    pressButtonCorrectSound()
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


    @IBAction func backOption(sender: AnyObject) {
        backgroundMusicPlayer.stop()
    }


    // number one top
    func numberOneOptionsColors(){
        value = Int(arc4random_uniform(4) + 1)
        switch value {
        case 1: firstNumber.backgroundColor = UIColor(netHex: 0xfc913a)
        firstNumber.layer.shadowColor = UIColor(netHex: 0xd0762d).CGColor
        case 2: firstNumber.backgroundColor = UIColor(netHex: 0xa8e6ce)
        firstNumber.layer.shadowColor = UIColor(netHex: 0x90c6b1).CGColor
        case 3: firstNumber.backgroundColor = UIColor(netHex: 0xb5daff)
        firstNumber.layer.shadowColor = UIColor(netHex: 0x97c2ed).CGColor
        case 4: firstNumber.backgroundColor = UIColor(netHex: 0xfabe28)
        firstNumber.layer.shadowColor = UIColor(netHex: 0xdfa922).CGColor
        default: firstNumber.backgroundColor = UIColor(netHex: 0xA8330C)
        }
    }
    
    // number two top
    func numberTwoOptionsColors(){
        value = Int(arc4random_uniform(4) + 1)
        switch value {
        case 1: secondNumber.backgroundColor = UIColor(netHex: 0xfc913a)
        secondNumber.layer.shadowColor = UIColor(netHex: 0xd0762d).CGColor
        case 2: secondNumber.backgroundColor = UIColor(netHex: 0xa8e6ce)
        secondNumber.layer.shadowColor = UIColor(netHex: 0x90c6b1).CGColor
        case 3: secondNumber.backgroundColor = UIColor(netHex: 0xb5daff)
        secondNumber.layer.shadowColor = UIColor(netHex: 0x97c2ed).CGColor
        case 4: secondNumber.backgroundColor = UIColor(netHex: 0xfabe28)
        secondNumber.layer.shadowColor = UIColor(netHex: 0xdfa922).CGColor
        default: secondNumber.backgroundColor = UIColor(netHex: 0xA8330C)
        }
    }
    
    // number three top
    func numberThreeOptionsColors(){
        value = Int(arc4random_uniform(4) + 1)
        switch value {
        case 1: thirdNumber.backgroundColor = UIColor(netHex: 0xfc913a)
        thirdNumber.layer.shadowColor = UIColor(netHex: 0xd0762d).CGColor
        case 2: thirdNumber.backgroundColor = UIColor(netHex: 0xa8e6ce)
        thirdNumber.layer.shadowColor = UIColor(netHex: 0x90c6b1).CGColor
        case 3: thirdNumber.backgroundColor = UIColor(netHex: 0xb5daff)
        thirdNumber.layer.shadowColor = UIColor(netHex: 0x97c2ed).CGColor
        case 4: thirdNumber.backgroundColor = UIColor(netHex: 0xfabe28)
        thirdNumber.layer.shadowColor = UIColor(netHex: 0xdfa922).CGColor
        default: thirdNumber.backgroundColor = UIColor(netHex: 0xA8330C)
        }
    }
    
    // number four top
    func numberFourOptionsColors(){
        value = Int(arc4random_uniform(4) + 1)
        switch value {
        case 1: fourthNumber.backgroundColor = UIColor(netHex: 0xfc913a)
        fourthNumber.layer.shadowColor = UIColor(netHex: 0xd0762d).CGColor
        case 2: fourthNumber.backgroundColor = UIColor(netHex: 0xa8e6ce)
        fourthNumber.layer.shadowColor = UIColor(netHex: 0x90c6b1).CGColor
        case 3: fourthNumber.backgroundColor = UIColor(netHex: 0xb5daff)
        fourthNumber.layer.shadowColor = UIColor(netHex: 0x97c2ed).CGColor
        case 4: fourthNumber.backgroundColor = UIColor(netHex: 0xfabe28)
        fourthNumber.layer.shadowColor = UIColor(netHex: 0xdfa922).CGColor
        default: fourthNumber.backgroundColor = UIColor(netHex: 0xA8330C)
        }
    }
 
    
    // button one random colors
    func buttonOneOptionsColors(){
        value = Int(arc4random_uniform(4) + 1)
        switch value {
        case 1: buttonOneLabel.backgroundColor = UIColor(netHex: 0xfc913a)
                buttonOneLabel.layer.shadowColor = UIColor(netHex: 0xd0762d).CGColor
        case 2: buttonOneLabel.backgroundColor = UIColor(netHex: 0xa8e6ce)
                buttonOneLabel.layer.shadowColor = UIColor(netHex: 0x90c6b1).CGColor
        case 3: buttonOneLabel.backgroundColor = UIColor(netHex: 0xb5daff)
                buttonOneLabel.layer.shadowColor = UIColor(netHex: 0x97c2ed).CGColor
        case 4: buttonOneLabel.backgroundColor = UIColor(netHex: 0xfabe28)
                buttonOneLabel.layer.shadowColor = UIColor(netHex: 0xdfa922).CGColor
        default: buttonOneLabel.backgroundColor = UIColor(netHex: 0xA8330C)
        }
    }
    // button two random colors
    func buttonTwoOptionsColors(){
        value = Int(arc4random_uniform(4) + 1)
        switch value {
        case 1: buttonTwoLabel.backgroundColor = UIColor(netHex: 0xfc913a)
                buttonTwoLabel.layer.shadowColor = UIColor(netHex: 0xd0762d).CGColor
        case 2: buttonTwoLabel.backgroundColor = UIColor(netHex: 0xa8e6ce)
                buttonTwoLabel.layer.shadowColor = UIColor(netHex: 0x90c6b1).CGColor
        case 3: buttonTwoLabel.backgroundColor = UIColor(netHex: 0xb5daff)
                buttonTwoLabel.layer.shadowColor = UIColor(netHex: 0x97c2ed).CGColor
        case 4: buttonTwoLabel.backgroundColor = UIColor(netHex: 0xfabe28)
                buttonTwoLabel.layer.shadowColor = UIColor(netHex: 0xdfa922).CGColor
        default: buttonTwoLabel.backgroundColor = UIColor(netHex: 0xA8330C)
        }
    }
    // button three random colors
    func buttonThreeOptionsColors(){
        value = Int(arc4random_uniform(4) + 1)
        switch value {
        case 1: buttonThreeLabel.backgroundColor = UIColor(netHex: 0xfc913a)
                buttonThreeLabel.layer.shadowColor = UIColor(netHex: 0xd0762d).CGColor
        case 2: buttonThreeLabel.backgroundColor = UIColor(netHex: 0xa8e6ce)
                buttonThreeLabel.layer.shadowColor = UIColor(netHex: 0x90c6b1).CGColor
        case 3: buttonThreeLabel.backgroundColor = UIColor(netHex: 0xb5daff)
                buttonThreeLabel.layer.shadowColor = UIColor(netHex: 0x97c2ed).CGColor
        case 4: buttonThreeLabel.backgroundColor = UIColor(netHex: 0xfabe28)
                buttonThreeLabel.layer.shadowColor = UIColor(netHex: 0xdfa922).CGColor
        default: buttonThreeLabel.backgroundColor = UIColor(netHex: 0xA8330C)
        }
    }
    // button four random colors
    func buttonFourOptionsColors(){
        value = Int(arc4random_uniform(4) + 1)
        switch value {
        case 1: buttonFourLabel.backgroundColor = UIColor(netHex: 0xfc913a)
                buttonFourLabel.layer.shadowColor = UIColor(netHex: 0xd0762d).CGColor
        case 2: buttonFourLabel.backgroundColor = UIColor(netHex: 0xa8e6ce)
                buttonFourLabel.layer.shadowColor = UIColor(netHex: 0x90c6b1).CGColor
        case 3: buttonFourLabel.backgroundColor = UIColor(netHex: 0xb5daff)
                buttonFourLabel.layer.shadowColor = UIColor(netHex: 0x97c2ed).CGColor
        case 4: buttonFourLabel.backgroundColor = UIColor(netHex: 0xfabe28)
                buttonFourLabel.layer.shadowColor = UIColor(netHex: 0xdfa922).CGColor
        default: buttonFourLabel.backgroundColor = UIColor(netHex: 0xA8330C)
        }
    }
    // button five random colors
    func buttonFiveOptionsColors(){
        value = Int(arc4random_uniform(4) + 1)
        switch value {
        case 1: buttonFiveLabel.backgroundColor = UIColor(netHex: 0xfc913a)
                buttonFiveLabel.layer.shadowColor = UIColor(netHex: 0xd0762d).CGColor
        case 2: buttonFiveLabel.backgroundColor = UIColor(netHex: 0xa8e6ce)
                buttonFiveLabel.layer.shadowColor = UIColor(netHex: 0x90c6b1).CGColor
        case 3: buttonFiveLabel.backgroundColor = UIColor(netHex: 0xb5daff)
                buttonFiveLabel.layer.shadowColor = UIColor(netHex: 0x97c2ed).CGColor
        case 4: buttonFiveLabel.backgroundColor = UIColor(netHex: 0xfabe28)
                buttonFiveLabel.layer.shadowColor = UIColor(netHex: 0xdfa922).CGColor
        default: buttonFiveLabel.backgroundColor = UIColor(netHex: 0xA8330C)
        }
    }
    // button six random colors
    func buttonSixOptionsColors(){
        value = Int(arc4random_uniform(4) + 1)
        switch value {
        case 1: buttonSixLabel.backgroundColor = UIColor(netHex: 0xfc913a)
                buttonSixLabel.layer.shadowColor = UIColor(netHex: 0xd0762d).CGColor
        case 2: buttonSixLabel.backgroundColor = UIColor(netHex: 0xa8e6ce)
                buttonSixLabel.layer.shadowColor = UIColor(netHex: 0x90c6b1).CGColor
        case 3: buttonSixLabel.backgroundColor = UIColor(netHex: 0xb5daff)
                buttonSixLabel.layer.shadowColor = UIColor(netHex: 0x97c2ed).CGColor
        case 4: buttonSixLabel.backgroundColor = UIColor(netHex: 0xfabe28)
                buttonSixLabel.layer.shadowColor = UIColor(netHex: 0xdfa922).CGColor
        default: buttonSixLabel.backgroundColor = UIColor(netHex: 0xA8330C)
        }
    }
    // button seven random colors
    func buttonSevenOptionsColors(){
        value = Int(arc4random_uniform(4) + 1)
        switch value {
        case 1: buttonSevenLabel.backgroundColor = UIColor(netHex: 0xfc913a)
                buttonSevenLabel.layer.shadowColor = UIColor(netHex: 0xd0762d).CGColor
        case 2: buttonSevenLabel.backgroundColor = UIColor(netHex: 0xa8e6ce)
                buttonSevenLabel.layer.shadowColor = UIColor(netHex: 0x90c6b1).CGColor
        case 3: buttonSevenLabel.backgroundColor = UIColor(netHex: 0xb5daff)
                buttonSevenLabel.layer.shadowColor = UIColor(netHex: 0x97c2ed).CGColor
        case 4: buttonSevenLabel.backgroundColor = UIColor(netHex: 0xfabe28)
                buttonSevenLabel.layer.shadowColor = UIColor(netHex: 0xdfa922).CGColor
        default: buttonSevenLabel.backgroundColor = UIColor(netHex: 0xA8330C)
        }
    }
    // button eight random colors
    func buttonEightOptionsColors(){
        value = Int(arc4random_uniform(4) + 1)
        switch value {
        case 1: buttonEightLabel.backgroundColor = UIColor(netHex: 0xfc913a)
                buttonEightLabel.layer.shadowColor = UIColor(netHex: 0xd0762d).CGColor
        case 2: buttonEightLabel.backgroundColor = UIColor(netHex: 0xa8e6ce)
                buttonEightLabel.layer.shadowColor = UIColor(netHex: 0x90c6b1).CGColor
        case 3: buttonEightLabel.backgroundColor = UIColor(netHex: 0xb5daff)
                buttonEightLabel.layer.shadowColor = UIColor(netHex: 0x97c2ed).CGColor
        case 4: buttonEightLabel.backgroundColor = UIColor(netHex: 0xfabe28)
                buttonEightLabel.layer.shadowColor = UIColor(netHex: 0xdfa922).CGColor
        default: buttonEightLabel.backgroundColor = UIColor(netHex: 0xA8330C)
        }
    }
    // button nine random colors
    func buttonNineOptionsColors(){
        value = Int(arc4random_uniform(4) + 1)
        switch value {
        case 1: buttonNineLabel.backgroundColor = UIColor(netHex: 0xfc913a)
                buttonNineLabel.layer.shadowColor = UIColor(netHex: 0xd0762d).CGColor
        case 2: buttonNineLabel.backgroundColor = UIColor(netHex: 0xa8e6ce)
                buttonNineLabel.layer.shadowColor = UIColor(netHex: 0x90c6b1).CGColor
        case 3: buttonNineLabel.backgroundColor = UIColor(netHex: 0xb5daff)
                buttonNineLabel.layer.shadowColor = UIColor(netHex: 0x97c2ed).CGColor
        case 4: buttonNineLabel.backgroundColor = UIColor(netHex: 0xfabe28)
                buttonNineLabel.layer.shadowColor = UIColor(netHex: 0xdfa922).CGColor
        default: buttonNineLabel.backgroundColor = UIColor(netHex: 0xA8330C)
        }
    }


    // number one random numbers
    func numberOneOptionsText(){
        value = Int(arc4random_uniform(9) + 1)
        switch value {
        case 1: firstNumber.text = "O"
        case 2: firstNumber.text = "O"
        case 3: firstNumber.text = "O"
        case 4: firstNumber.text = ">"
        case 5: firstNumber.text = ">"
        case 6: firstNumber.text = ">"
        case 7: firstNumber.text = "<"
        case 8: firstNumber.text = "<"
        case 9: firstNumber.text = "<"
        default: firstNumber.text = "O"
        }
    }
    // number two random numbers
    func numberTwoOptionsText(){
        value = Int(arc4random_uniform(9) + 1)
        switch value {
        case 1: secondNumber.text = "O"
        case 2: secondNumber.text = "O"
        case 3: secondNumber.text = "O"
        case 4: secondNumber.text = ">"
        case 5: secondNumber.text = ">"
        case 6: secondNumber.text = ">"
        case 7: secondNumber.text = "<"
        case 8: secondNumber.text = "<"
        case 9: secondNumber.text = "<"
        default: secondNumber.text = "O"
        }
    }
    // number three random numbers
    func numberThreeOptionsText(){
        value = Int(arc4random_uniform(9) + 1)
        switch value {
        case 1: thirdNumber.text = "O"
        case 2: thirdNumber.text = "O"
        case 3: thirdNumber.text = "O"
        case 4: thirdNumber.text = ">"
        case 5: thirdNumber.text = ">"
        case 6: thirdNumber.text = ">"
        case 7: thirdNumber.text = "<"
        case 8: thirdNumber.text = "<"
        case 9: thirdNumber.text = "<"
        default: thirdNumber.text = "O"
        }
    }
    // number four random numbers
    func numberFourOptionsText(){
        value = Int(arc4random_uniform(9) + 1)
        switch value {
        case 1: fourthNumber.text = "O"
        case 2: fourthNumber.text = "O"
        case 3: fourthNumber.text = "O"
        case 4: fourthNumber.text = ">"
        case 5: fourthNumber.text = ">"
        case 6: fourthNumber.text = ">"
        case 7: fourthNumber.text = "<"
        case 8: fourthNumber.text = "<"
        case 9: fourthNumber.text = "<"
        default: fourthNumber.text = "O"
        }
    }
    
    // button one random numbers
    func buttonOneOptionsText(){
        value = Int(arc4random_uniform(9) + 1)
        switch value {
        case 1: buttonOneText.text = "O"
        case 2: buttonOneText.text = "O"
        case 3: buttonOneText.text = "O"
        case 4: buttonOneText.text = ">"
        case 5: buttonOneText.text = ">"
        case 6: buttonOneText.text = ">"
        case 7: buttonOneText.text = "<"
        case 8: buttonOneText.text = "<"
        case 9: buttonOneText.text = "<"
        default: buttonOneText.text = "O"
        }
    }
    // button two random numbers
    func buttonTwoOptionsText(){
        value = Int(arc4random_uniform(9) + 1)
        switch value {
        case 1: buttonTwoText.text = "O"
        case 2: buttonTwoText.text = "O"
        case 3: buttonTwoText.text = "O"
        case 4: buttonTwoText.text = ">"
        case 5: buttonTwoText.text = ">"
        case 6: buttonTwoText.text = ">"
        case 7: buttonTwoText.text = "<"
        case 8: buttonTwoText.text = "<"
        case 9: buttonTwoText.text = "<"
        default: buttonTwoText.text = "O"
        }
    }
    // button three random numbers
    func buttonThreeOptionsText(){
        value = Int(arc4random_uniform(9) + 1)
        switch value {
        case 1: buttonThreeText.text = "O"
        case 2: buttonThreeText.text = "O"
        case 3: buttonThreeText.text = "O"
        case 4: buttonThreeText.text = ">"
        case 5: buttonThreeText.text = ">"
        case 6: buttonThreeText.text = ">"
        case 7: buttonThreeText.text = "<"
        case 8: buttonThreeText.text = "<"
        case 9: buttonThreeText.text = "<"
        default: buttonThreeText.text = "O"
        }
    }
    // button four random numbers
    func buttonFourOptionsText(){
        value = Int(arc4random_uniform(9) + 1)
        switch value {
        case 1: buttonFourText.text = "O"
        case 2: buttonFourText.text = "O"
        case 3: buttonFourText.text = "O"
        case 4: buttonFourText.text = ">"
        case 5: buttonFourText.text = ">"
        case 6: buttonFourText.text = ">"
        case 7: buttonFourText.text = "<"
        case 8: buttonFourText.text = "<"
        case 9: buttonFourText.text = "<"
        default: buttonFourText.text = "O"
        }
    }
    // button five random numbers
    func buttonFiveOptionsText(){
        value = Int(arc4random_uniform(9) + 1)
        switch value {
        case 1: buttonFiveText.text = "O"
        case 2: buttonFiveText.text = "O"
        case 3: buttonFiveText.text = "O"
        case 4: buttonFiveText.text = ">"
        case 5: buttonFiveText.text = ">"
        case 6: buttonFiveText.text = ">"
        case 7: buttonFiveText.text = "<"
        case 8: buttonFiveText.text = "<"
        case 9: buttonFiveText.text = "<"
        default: buttonFiveText.text = "O"
        }
    }
    // button six random numbers
    func buttonSixOptionsText(){
        value = Int(arc4random_uniform(9) + 1)
        switch value {
        case 1: buttonSixText.text = "O"
        case 2: buttonSixText.text = "O"
        case 3: buttonSixText.text = "O"
        case 4: buttonSixText.text = ">"
        case 5: buttonSixText.text = ">"
        case 6: buttonSixText.text = ">"
        case 7: buttonSixText.text = "<"
        case 8: buttonSixText.text = "<"
        case 9: buttonSixText.text = "<"
        default: buttonSixText.text = "O"
        }
    }
    // button seven random numbers
    func buttonSevenOptionsText(){
        value = Int(arc4random_uniform(9) + 1)
        switch value {
        case 1: buttonSevenText.text = "O"
        case 2: buttonSevenText.text = "O"
        case 3: buttonSevenText.text = "O"
        case 4: buttonSevenText.text = ">"
        case 5: buttonSevenText.text = ">"
        case 6: buttonSevenText.text = ">"
        case 7: buttonSevenText.text = "<"
        case 8: buttonSevenText.text = "<"
        case 9: buttonSevenText.text = "<"
        default: buttonSevenText.text = "O"
        }
    }
    // button eight random numbers
    func buttonEightOptionsText(){
        value = Int(arc4random_uniform(9) + 1)
        switch value {
        case 1: buttonEightText.text = "O"
        case 2: buttonEightText.text = "O"
        case 3: buttonEightText.text = "O"
        case 4: buttonEightText.text = ">"
        case 5: buttonEightText.text = ">"
        case 6: buttonEightText.text = ">"
        case 7: buttonEightText.text = "<"
        case 8: buttonEightText.text = "<"
        case 9: buttonEightText.text = "<"
        default: buttonEightText.text = "O"
        }
    }
    // button nine random numbers
    func buttonNineOptionsText(){
        value = Int(arc4random_uniform(9) + 1)
        switch value {
        case 1: buttonNineText.text = "O"
        case 2: buttonNineText.text = "O"
        case 3: buttonNineText.text = "O"
        case 4: buttonNineText.text = ">"
        case 5: buttonNineText.text = ">"
        case 6: buttonNineText.text = ">"
        case 7: buttonNineText.text = "<"
        case 8: buttonNineText.text = "<"
        case 9: buttonNineText.text = "<"
        default: buttonNineText.text = "O"
        }
    }
    
    func delay(delay:Double, closure:()->()) {
        dispatch_after(
            dispatch_time(
                DISPATCH_TIME_NOW,
                Int64(delay * Double(NSEC_PER_SEC))
            ),
            dispatch_get_main_queue(), closure)
    }
    
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
        
        if lives == 0 {
//            timer.invalidate()
        }

        countDownLabel.text = String(count)
        
        if (count == 1 || count == 2 || count == 3){
            countDownLabel.textColor = UIColor(netHex: 0xfc913a)
        }
        if (count == 0){
            countDownLabel.textColor = UIColor(netHex: 0xff0000)
        }
    }
    
    func randomizeTopNumbers(){
        value = Int(arc4random_uniform(3) + 1)
        switch value {
        case 1: firstNumber.text = "\(4)"
        case 2: firstNumber.text = "\(2)"
        case 3: if secondNumber.text != "\(2)"{
                firstNumber.text = "\(3)"
        } else {
            randomizeTopNumbers()
            }
        default: firstNumber.text = "\(20)"
        }
        
        value = Int(arc4random_uniform(3) + 1)
        switch value {
        case 1: secondNumber.text = "\(4)"
        case 2: secondNumber.text = "\(2)"
        case 3: if firstNumber.text != "\(2)"{
            secondNumber.text = "\(3)"
        } else {
            randomizeTopNumbers()
            }
        default: firstNumber.text = "\(20)"
        }
    }

    func wrongAnswer(){
        if buttonOneText.text == "\(3)" {
            pressButtonCorrectSound()
        }
        
        if buttonTwoText.text == "\(3)" {
            pressButtonCorrectSound()
        }    }
    
    
    func pressButtonSound() {
        if (count == 0){
            buttonPressSound.enableRate = false
        }
        
        do {
            self.buttonPressSound =  try AVAudioPlayer(contentsOfURL: NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("button-46", ofType: "mp3")!))
            self.buttonPressSound.play()
            
        } catch {
            print("Error")
        }
        buttonPressSound.volume = 0.05
    }
    
    
    
    // BUTTON PRESS - CORRECT
    func pressButtonCorrectSound() {
        
        do {
            self.buttonPressCorrectSound =  try AVAudioPlayer(contentsOfURL: NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("buttonCorrect", ofType: "mp3")!))
            self.buttonPressCorrectSound.play()
            // TIMER COUNT
            count++
            // PROGRESS BAR
            progressTimer.progress = progressTimer.progress + 0.1
            countDownLabel.text = String(count)
            // EXP
            
        } catch {
            print("Error")
        }
        buttonPressCorrectSound.volume = 0.5
    }
    
    // BUTTON PRESS - INCORRECT
    func pressButtonWrongSound() {

        do {
            self.buttonPressCorrectSound =  try AVAudioPlayer(contentsOfURL: NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("buttonIncorrect", ofType: "mp3")!))
            self.buttonPressCorrectSound.play()
            count--
            progressTimer.progress = progressTimer.progress - 0.1
            countDownLabel.text = String(count)
            
        } catch {
            print("Error")
        }
        buttonPressCorrectSound.volume = 0.05
        
    }
    
    // BACKGROUND MUSIC
    func playBackgroundMusic(filename: String) {
        let url = NSBundle.mainBundle().URLForResource(filename, withExtension: nil)
        guard let newURL = url else {
            print("Could not find file: \(filename)")
            return
        }
        do {
            backgroundMusicPlayer = try AVAudioPlayer(contentsOfURL: newURL)
            backgroundMusicPlayer.numberOfLoops = -1
            backgroundMusicPlayer.prepareToPlay()
            backgroundMusicPlayer.play()
        } catch let error as NSError {
            print(error.description)
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    // LOCK PORTRAIT
    override func shouldAutorotate() -> Bool {
        if (UIDevice.currentDevice().orientation == UIDeviceOrientation.LandscapeLeft ||
            UIDevice.currentDevice().orientation == UIDeviceOrientation.LandscapeRight ||
            UIDevice.currentDevice().orientation == UIDeviceOrientation.Unknown) {
                return false
        }
        else {
            return true
        }
    }
    
    override func supportedInterfaceOrientations() -> UIInterfaceOrientationMask {
        return [UIInterfaceOrientationMask.Portrait ,UIInterfaceOrientationMask.PortraitUpsideDown]
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

