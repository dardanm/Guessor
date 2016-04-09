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
    var coin:Int = 0

    // top numbers text
    @IBOutlet var firstNumber: UILabel!
    @IBOutlet var secondNumber: UILabel!
    @IBOutlet var thirdNumber: UILabel!
    @IBOutlet var fourthNumber: UILabel!
    
    // top numbers background
    @IBOutlet var topOneLabelColor: UILabel!
    @IBOutlet var topTwoLabelColor: UILabel!
    @IBOutlet var topThreeLabelColor: UILabel!
    @IBOutlet var topFourLabelColor: UILabel!

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
    @IBOutlet var botOneButtonColor: UIButton!
    @IBOutlet var botTwoButtonColor: UIButton!
    @IBOutlet var botThreeButtonColor: UIButton!
    @IBOutlet var botFourButtonColor: UIButton!
    @IBOutlet var botFiveButtonColor: UIButton!
    @IBOutlet var botSixButtonColor: UIButton!
    @IBOutlet var botSevenButtonColor: UIButton!
    @IBOutlet var botEightButtonColor: UIButton!
    @IBOutlet var botNineButtonColor: UIButton!
    
    // background for buttons and top
    @IBOutlet var topBackground: UILabel!
    @IBOutlet var topBackgroundScore: UILabel!
    @IBOutlet var topBackgroundNumbers: UILabel!
    @IBOutlet var middleBackground: UILabel!
    @IBOutlet var bottomBackground: UILabel!
    
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
    @IBOutlet weak var candyB1: UIImageView!
    @IBOutlet weak var popB1: UIImageView!
    @IBOutlet weak var caneB1: UIImageView!
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
    var topFourTopColorBackground:Int = 0
    
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
    var lives = 3
    
    // timer label
    @IBOutlet var countDownLabel: UILabel!
    
    // battery
    var batteryNumber:Int = 100
    
    // timer
    var count:Float = 10
    var timer = NSTimer()
    
    // score
    var scoreTarget:Int = 100
    
    // switch variable
    var value = 0
    
    var runOrNot:Int = 4
    
    // PROGRESS BAR
    @IBOutlet var progressTimer: UIProgressView!
    
    // "generate" button
    @IBOutlet var generateLabel: UIButton!

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
        generateTopAndBottomButtons()
        realRandomGeneratorFirst()
        
        
    }

    @IBAction func generateButtonRelease(sender: AnyObject) {

    }

    
    
    // BUTTON #1 PRESS
    @IBAction func buttonOneDown(sender: AnyObject) {
        
        
        if runOrNot == 4 {
                if buttonOneText.text == firstNumber.text && botOneButtonColor.backgroundColor!.isEqual(topOneLabelColor.backgroundColor){
                    scoreKeep += 1
                    correctAnswer()
                    // green color button - correct coice
                    topOneLabelColor.backgroundColor = UIColor(netHex: 0x96f10d)
                    botOneButtonColor.backgroundColor = UIColor(netHex: 0x96f10d)
                    matchingAnswer = true
                } else {
                    // subtract life if incorrect choice is chosen
                    lives -= 1
                    
                    // red color button - incorrect choice
                    botOneButtonColor.backgroundColor = UIColor(netHex: 0xff4f51)
                    disableButtons()
                    pressButtonWrongSound()
                }
        }
        
        gameFinish()
        
        if runOrNot == 3 {
                if buttonOneText.text == secondNumber.text && botOneButtonColor.backgroundColor!.isEqual(topTwoLabelColor.backgroundColor){
                    scoreKeep += 1
                    correctAnswer()
                    // green color button - correct coice
                    topTwoLabelColor.backgroundColor = UIColor(netHex: 0x96f10d)
                    botOneButtonColor.backgroundColor = UIColor(netHex: 0x96f10d)
                    matchingAnswer = true
                } else {
                    // subtract life if incorrect choice is chosen
                    lives -= 1
                    
                    // red color button - incorrect choice
                    botOneButtonColor.backgroundColor = UIColor(netHex: 0xff4f51)
                    pressButtonWrongSound()
                }
        }
        
        gameFinish()
        
        if runOrNot == 2 {
                if buttonOneText.text == thirdNumber.text && botOneButtonColor.backgroundColor!.isEqual(topThreeLabelColor.backgroundColor){
                    scoreKeep += 1
                    correctAnswer()
                    // green color button - correct coice
                    topThreeLabelColor.backgroundColor = UIColor(netHex: 0x96f10d)
                    botOneButtonColor.backgroundColor = UIColor(netHex: 0x96f10d)
                    matchingAnswer = true
                } else {
                    // subtract life if incorrect choice is chosen
                    lives -= 1
                    
                    // red color button - incorrect choice
                    botOneButtonColor.backgroundColor = UIColor(netHex: 0xff4f51)
                    pressButtonWrongSound()
                }
        }
        
        gameFinish()
        
        if runOrNot == 1 {
                if buttonOneText.text == fourthNumber.text && botOneButtonColor.backgroundColor!.isEqual(topFourLabelColor.backgroundColor){
                    scoreKeep += 1
                    correctAnswer()
                    // green color button - correct coice
                    topFourLabelColor.backgroundColor = UIColor(netHex: 0x96f10d)
                    botOneButtonColor.backgroundColor = UIColor(netHex: 0x96f10d)
                    matchingAnswer = true
                } else {
                    // subtract life if incorrect choice is chosen
                    lives -= 1
                    
                    // red color button - incorrect choice
                    botOneButtonColor.backgroundColor = UIColor(netHex: 0xff4f51)
                    pressButtonWrongSound()
                }
        }
        
        gameFinish()
        
    }

    // BUTTON #1 - RELEASE
    @IBAction func buttonOneRelease(sender: AnyObject) {
        
        if runOrNot == 4 {
            if botOneButtonColor.backgroundColor!.isEqual(topOneLabelColor.backgroundColor) && buttonOneText.text == firstNumber.text{
                runOrNot -= 1
            }
        }
        
        if runOrNot == 3 {
            if botOneButtonColor.backgroundColor!.isEqual(topTwoLabelColor.backgroundColor) && buttonOneText.text == secondNumber.text {
                runOrNot -= 1
            }
        }
        
        if runOrNot == 2 {
            if botOneButtonColor.backgroundColor!.isEqual(topThreeLabelColor.backgroundColor) && buttonOneText.text == thirdNumber.text {
                runOrNot -= 1
            }
        }
        
        if runOrNot == 1 {
            if botOneButtonColor.backgroundColor!.isEqual(topFourLabelColor.backgroundColor) && buttonOneText.text == fourthNumber.text {
                runOrNot -= 1
            }
        }
        
    }
    
    @IBAction func buttonTwoDown(sender: AnyObject) {
        
        
        if runOrNot == 4 {
                if buttonTwoText.text == firstNumber.text && botTwoButtonColor.backgroundColor!.isEqual(topOneLabelColor.backgroundColor){
                    scoreKeep += 1
                    correctAnswer()
                    // green color button - correct coice
                    botTwoButtonColor.backgroundColor = UIColor(netHex: 0x96f10d)
                    topOneLabelColor.backgroundColor = UIColor(netHex: 0x96f10d)
                    matchingAnswer = true
                } else {
                    // subtract life if incorrect choice is chosen
                    lives -= 1
                    
                    // red color button - incorrect choice
                    botTwoButtonColor.backgroundColor = UIColor(netHex: 0xff4f51)
                    pressButtonWrongSound()
                }
        }
        
        gameFinish()
        
        if runOrNot == 3 {
                if buttonTwoText.text == secondNumber.text && botTwoButtonColor.backgroundColor!.isEqual(topTwoLabelColor.backgroundColor){
                    scoreKeep += 1
                    correctAnswer()
                    // green color button - correct coice
                    botTwoButtonColor.backgroundColor = UIColor(netHex: 0x96f10d)
                    topTwoLabelColor.backgroundColor = UIColor(netHex: 0x96f10d)
                    matchingAnswer = true
                } else {
                    // subtract life if incorrect choice is chosen
                    lives -= 1
                    
                    // red color button - incorrect choice
                    botTwoButtonColor.backgroundColor = UIColor(netHex: 0xff4f51)
                    pressButtonWrongSound()
                }
        }
        
        gameFinish()
        
        if runOrNot == 2 {
                if buttonTwoText.text == thirdNumber.text && botTwoButtonColor.backgroundColor!.isEqual(topThreeLabelColor.backgroundColor){
                    scoreKeep += 1
                    correctAnswer()
                    // green color button - correct coice
                    botTwoButtonColor.backgroundColor = UIColor(netHex: 0x96f10d)
                    topThreeLabelColor.backgroundColor = UIColor(netHex: 0x96f10d)
                    matchingAnswer = true
                } else {
                    // subtract life if incorrect choice is chosen
                    lives -= 1
                    
                    // red color button - incorrect choice
                    botTwoButtonColor.backgroundColor = UIColor(netHex: 0xff4f51)
                    pressButtonWrongSound()
                }
        }
        
        gameFinish()
        
        if runOrNot == 1 {
                if buttonTwoText.text == fourthNumber.text && botTwoButtonColor.backgroundColor!.isEqual(topFourLabelColor.backgroundColor){
                    scoreKeep += 1
                    correctAnswer()
                    // green color button - correct coice
                    botTwoButtonColor.backgroundColor = UIColor(netHex: 0x96f10d)
                    topFourLabelColor.backgroundColor = UIColor(netHex: 0x96f10d)
                    matchingAnswer = true
                } else {
                    // subtract life if incorrect choice is chosen
                    lives -= 1
                    
                    // red color button - incorrect choice
                    botTwoButtonColor.backgroundColor = UIColor(netHex: 0xff4f51)
                    pressButtonWrongSound()
                }
        }
        
        gameFinish()
        
    }
    

    // BUTTON #2 - RELEASE
    @IBAction func buttonTwoRelease(sender: AnyObject) {
      
        if runOrNot == 4 {
            if botTwoButtonColor.backgroundColor!.isEqual(topOneLabelColor.backgroundColor) && buttonTwoText.text == firstNumber.text{
                runOrNot -= 1
            }
        }
        
        if runOrNot == 3 {
            if botTwoButtonColor.backgroundColor!.isEqual(topTwoLabelColor.backgroundColor) && buttonTwoText.text == secondNumber.text{
                runOrNot -= 1
            }
        }
        
        if runOrNot == 2 {
            if botTwoButtonColor.backgroundColor!.isEqual(topThreeLabelColor.backgroundColor) && buttonTwoText.text == thirdNumber.text{
                runOrNot -= 1
            }
        }
        
        if runOrNot == 1 {
            if botTwoButtonColor.backgroundColor!.isEqual(topFourLabelColor.backgroundColor) && buttonTwoText.text == fourthNumber.text{
                runOrNot -= 1
            }
        }

    }
    
    // BUTTON #3 PRESS
    @IBAction func buttonThreeDown(sender: AnyObject) {
        
        
        if runOrNot == 4 {
                if buttonThreeText.text == firstNumber.text && botThreeButtonColor.backgroundColor!.isEqual(topOneLabelColor.backgroundColor){
                    scoreKeep += 1
                    correctAnswer()
                    // green color button - correct coice
                    botThreeButtonColor.backgroundColor = UIColor(netHex: 0x96f10d)
                    topOneLabelColor.backgroundColor = UIColor(netHex: 0x96f10d)
                    matchingAnswer = true
                } else {
                    // subtract life if incorrect choice is chosen
                    lives -= 1
                    
                    // red color button - incorrect choice
                    botThreeButtonColor.backgroundColor = UIColor(netHex: 0xff4f51)
                    pressButtonWrongSound()
                }
        }
        
        gameFinish()
        
        if runOrNot == 3 {
                if buttonThreeText.text == secondNumber.text && botThreeButtonColor.backgroundColor!.isEqual(topTwoLabelColor.backgroundColor){
                    scoreKeep += 1
                    correctAnswer()
                    // green color button - correct coice
                    botThreeButtonColor.backgroundColor = UIColor(netHex: 0x96f10d)
                    topTwoLabelColor.backgroundColor = UIColor(netHex: 0x96f10d)
                    matchingAnswer = true
                } else {
                    // subtract life if incorrect choice is chosen
                    lives -= 1
                    
                    // red color button - incorrect choice
                    botThreeButtonColor.backgroundColor = UIColor(netHex: 0xff4f51)
                    pressButtonWrongSound()
                }
        }
        
        gameFinish()
        
        if runOrNot == 2 {
                if buttonThreeText.text == thirdNumber.text && botThreeButtonColor.backgroundColor!.isEqual(topThreeLabelColor.backgroundColor){
                    scoreKeep += 1
                    correctAnswer()
                    // green color button - correct coice
                    botThreeButtonColor.backgroundColor = UIColor(netHex: 0x96f10d)
                    topThreeLabelColor.backgroundColor = UIColor(netHex: 0x96f10d)
                    matchingAnswer = true
                } else {
                    // subtract life if incorrect choice is chosen
                    lives -= 1
                    
                    // red color button - incorrect choice
                    botThreeButtonColor.backgroundColor = UIColor(netHex: 0xff4f51)
                    pressButtonWrongSound()
                }
        }
        
        gameFinish()
        
        if runOrNot == 1 {
                if buttonThreeText.text == fourthNumber.text && botThreeButtonColor.backgroundColor!.isEqual(topFourLabelColor.backgroundColor){
                    scoreKeep += 1
                    correctAnswer()
                    // green color button - correct coice
                    botThreeButtonColor.backgroundColor = UIColor(netHex: 0x96f10d)
                    topFourLabelColor.backgroundColor = UIColor(netHex: 0x96f10d)
                    matchingAnswer = true
                } else {
                    // subtract life if incorrect choice is chosen
                    lives -= 1
                    
                    // red color button - incorrect choice
                    botThreeButtonColor.backgroundColor = UIColor(netHex: 0xff4f51)
                    pressButtonWrongSound()
                }
        }
        
        gameFinish()
        
    }
    
    // BUTTON #3 - RELEASE
    @IBAction func buttonThreeRelease(sender: AnyObject) {
        
        if runOrNot == 4 {
            if botThreeButtonColor.backgroundColor!.isEqual(topOneLabelColor.backgroundColor) && buttonThreeText.text == firstNumber.text{
                runOrNot -= 1
            }
        }
        
        if runOrNot == 3 {
            if botThreeButtonColor.backgroundColor!.isEqual(topTwoLabelColor.backgroundColor) && buttonThreeText.text == secondNumber.text{
                runOrNot -= 1
            }
        }
        
        if runOrNot == 2 {
            if botThreeButtonColor.backgroundColor!.isEqual(topThreeLabelColor.backgroundColor) && buttonThreeText.text == thirdNumber.text{
                runOrNot -= 1
            }
        }
        
        if runOrNot == 1 {
            if botThreeButtonColor.backgroundColor!.isEqual(topFourLabelColor.backgroundColor) && buttonThreeText.text == fourthNumber.text{
                runOrNot -= 1
            }
        }

    }
    
    // BUTTON #4 PRESS
    @IBAction func buttonFourDown(sender: AnyObject) {
        
        
        if runOrNot == 4 {
                if buttonFourText.text == firstNumber.text && botFourButtonColor.backgroundColor!.isEqual(topOneLabelColor.backgroundColor){
                    scoreKeep += 1
                    correctAnswer()
                    // green color button - correct coice
                    botFourButtonColor.backgroundColor = UIColor(netHex: 0x96f10d)
                    topOneLabelColor.backgroundColor = UIColor(netHex: 0x96f10d)
                    matchingAnswer = true
                } else {
                    // subtract life if incorrect choice is chosen
                    lives -= 1
                    
                    // red color button - incorrect choice
                    botFourButtonColor.backgroundColor = UIColor(netHex: 0xff4f51)
                    pressButtonWrongSound()
                }
        }
        
        gameFinish()
        
        if runOrNot == 3 {
                if buttonFourText.text == secondNumber.text && botFourButtonColor.backgroundColor!.isEqual(topTwoLabelColor.backgroundColor){
                    scoreKeep += 1
                    correctAnswer()
                    // green color button - correct coice
                    botFourButtonColor.backgroundColor = UIColor(netHex: 0x96f10d)
                    topTwoLabelColor.backgroundColor = UIColor(netHex: 0x96f10d)
                    matchingAnswer = true
                } else {
                    // subtract life if incorrect choice is chosen
                    lives -= 1
                    
                    // red color button - incorrect choice
                    botFourButtonColor.backgroundColor = UIColor(netHex: 0xff4f51)
                    pressButtonWrongSound()
                }
        }
        
        gameFinish()
        
        if runOrNot == 2 {
                if buttonFourText.text == thirdNumber.text && botFourButtonColor.backgroundColor!.isEqual(topThreeLabelColor.backgroundColor){
                    scoreKeep += 1
                    correctAnswer()
                    // green color button - correct coice
                    botFourButtonColor.backgroundColor = UIColor(netHex: 0x96f10d)
                    topThreeLabelColor.backgroundColor = UIColor(netHex: 0x96f10d)
                    matchingAnswer = true
                } else {
                    // subtract life if incorrect choice is chosen
                    lives -= 1
                    
                    // red color button - incorrect choice
                    botFourButtonColor.backgroundColor = UIColor(netHex: 0xff4f51)
                    pressButtonWrongSound()
                }
        }
        
        gameFinish()
        
        if runOrNot == 1 {
                if buttonFourText.text == fourthNumber.text && botFourButtonColor.backgroundColor!.isEqual(topFourLabelColor.backgroundColor){
                    scoreKeep += 1
                    correctAnswer()
                    // green color button - correct coice
                    botFourButtonColor.backgroundColor = UIColor(netHex: 0x96f10d)
                    topFourLabelColor.backgroundColor = UIColor(netHex: 0x96f10d)
                    matchingAnswer = true
                } else {
                    // subtract life if incorrect choice is chosen
                    lives -= 1
                    
                    // red color button - incorrect choice
                    botFourButtonColor.backgroundColor = UIColor(netHex: 0xff4f51)
                    pressButtonWrongSound()
                }
        }
        
        gameFinish()
        
    }
    
    // BUTTON #4 - RELEASE
    @IBAction func buttonFourRelease(sender: AnyObject) {
        
        if runOrNot == 4 {
            if botFourButtonColor.backgroundColor!.isEqual(topOneLabelColor.backgroundColor) && buttonFourText.text == firstNumber.text{
                runOrNot -= 1
            }
        }
        
        if runOrNot == 3 {
            if botFourButtonColor.backgroundColor!.isEqual(topTwoLabelColor.backgroundColor) && buttonFourText.text == secondNumber.text{
                runOrNot -= 1
            }
        }
        
        if runOrNot == 2 {
            if botFourButtonColor.backgroundColor!.isEqual(topThreeLabelColor.backgroundColor) && buttonFourText.text == thirdNumber.text{
                runOrNot -= 1
            }
        }
        
        if runOrNot == 1 {
            if botFourButtonColor.backgroundColor!.isEqual(topFourLabelColor.backgroundColor) && buttonFourText.text == fourthNumber.text{
                runOrNot -= 1
            }
        }
        
    }

    // BUTTON #5 PRESS
    @IBAction func buttonFiveDown(sender: AnyObject) {
        
        
        if runOrNot == 4 {
                if buttonFiveText.text == firstNumber.text && botFiveButtonColor.backgroundColor!.isEqual(topOneLabelColor.backgroundColor){
                    scoreKeep += 1
                    correctAnswer()
                    // green color button - correct coice
                    botFiveButtonColor.backgroundColor = UIColor(netHex: 0x96f10d)
                    topOneLabelColor.backgroundColor = UIColor(netHex: 0x96f10d)
                    matchingAnswer = true
                } else {
                    // subtract life if incorrect choice is chosen
                    lives -= 1
                    
                    // red color button - incorrect choice
                    botFiveButtonColor.backgroundColor = UIColor(netHex: 0xff4f51)
                    pressButtonWrongSound()
                }
        }
        
        gameFinish()
        
        if runOrNot == 3 {
                if buttonFiveText.text == secondNumber.text && botFiveButtonColor.backgroundColor!.isEqual(topTwoLabelColor.backgroundColor){
                    scoreKeep += 1
                    correctAnswer()
                    // green color button - correct coice
                    botFiveButtonColor.backgroundColor = UIColor(netHex: 0x96f10d)
                    topTwoLabelColor.backgroundColor = UIColor(netHex: 0x96f10d)
                    matchingAnswer = true
                } else {
                    // subtract life if incorrect choice is chosen
                    lives -= 1
                    
                    // red color button - incorrect choice
                    botFiveButtonColor.backgroundColor = UIColor(netHex: 0xff4f51)
                    pressButtonWrongSound()
                }
        }
        
        gameFinish()
        
        if runOrNot == 2 {
                if buttonFiveText.text == thirdNumber.text && botFiveButtonColor.backgroundColor!.isEqual(topThreeLabelColor.backgroundColor){
                    scoreKeep += 1
                    correctAnswer()
                    // green color button - correct coice
                    botFiveButtonColor.backgroundColor = UIColor(netHex: 0x96f10d)
                    topThreeLabelColor.backgroundColor = UIColor(netHex: 0x96f10d)
                    matchingAnswer = true
                } else {
                    // subtract life if incorrect choice is chosen
                    lives -= 1
                    
                    // red color button - incorrect choice
                    botFiveButtonColor.backgroundColor = UIColor(netHex: 0xff4f51)
                    pressButtonWrongSound()
                }
        }
        
        gameFinish()
        
        if runOrNot == 1 {
                if buttonFiveText.text == fourthNumber.text && botFiveButtonColor.backgroundColor!.isEqual(topFourLabelColor.backgroundColor){
                    scoreKeep += 1
                    correctAnswer()
                    // green color button - correct coice
                    botFiveButtonColor.backgroundColor = UIColor(netHex: 0x96f10d)
                    topFourLabelColor.backgroundColor = UIColor(netHex: 0x96f10d)
                    matchingAnswer = true
                } else {
                    // subtract life if incorrect choice is chosen
                    lives -= 1
                    
                    // red color button - incorrect choice
                    botFiveButtonColor.backgroundColor = UIColor(netHex: 0xff4f51)
                    pressButtonWrongSound()
                }
        }
        
        gameFinish()
        
    }
    
    // BUTTON #5 - RELEASE
    @IBAction func buttonFiveRelease(sender: AnyObject) {
        
        if runOrNot == 4 {
            if botFiveButtonColor.backgroundColor!.isEqual(topOneLabelColor.backgroundColor) && buttonFiveText.text == firstNumber.text{
                runOrNot -= 1
            }
        }
        
        if runOrNot == 3 {
            if botFiveButtonColor.backgroundColor!.isEqual(topTwoLabelColor.backgroundColor) && buttonFiveText.text == secondNumber.text{
                runOrNot -= 1
            }
        }
        
        if runOrNot == 2 {
            if botFiveButtonColor.backgroundColor!.isEqual(topThreeLabelColor.backgroundColor) && buttonFiveText.text == thirdNumber.text{
                runOrNot -= 1
            }
        }
        
        if runOrNot == 1 {
            if botFiveButtonColor.backgroundColor!.isEqual(topFourLabelColor.backgroundColor) && buttonFiveText.text == fourthNumber.text{
                runOrNot -= 1
            }
        }

    }
    
    // BUTTON #6 PRESS
    @IBAction func buttonSixDown(sender: AnyObject) {
        
        
        if runOrNot == 4 {
                if buttonSixText.text == firstNumber.text && botSixButtonColor.backgroundColor!.isEqual(topOneLabelColor.backgroundColor){
                    scoreKeep += 1
                    correctAnswer()
                    // green color button - correct coice
                    botSixButtonColor.backgroundColor = UIColor(netHex: 0x96f10d)
                    topOneLabelColor.backgroundColor = UIColor(netHex: 0x96f10d)
                    matchingAnswer = true
                } else {
                    // subtract life if incorrect choice is chosen
                    lives -= 1
                    
                    // red color button - incorrect choice
                    botSixButtonColor.backgroundColor = UIColor(netHex: 0xff4f51)
                    pressButtonWrongSound()
                }
        }
        
        gameFinish()
        
        if runOrNot == 3 {
                if buttonSixText.text == secondNumber.text && botSixButtonColor.backgroundColor!.isEqual(topTwoLabelColor.backgroundColor){
                    scoreKeep += 1
                    correctAnswer()
                    // green color button - correct coice
                    botSixButtonColor.backgroundColor = UIColor(netHex: 0x96f10d)
                    topTwoLabelColor.backgroundColor = UIColor(netHex: 0x96f10d)
                    matchingAnswer = true
                } else {
                    // subtract life if incorrect choice is chosen
                    lives -= 1
                    
                    // red color button - incorrect choice
                    botSixButtonColor.backgroundColor = UIColor(netHex: 0xff4f51)
                    pressButtonWrongSound()
                }
        }
        
        gameFinish()
        
        if runOrNot == 2 {
                if buttonSixText.text == thirdNumber.text && botSixButtonColor.backgroundColor!.isEqual(topThreeLabelColor.backgroundColor){
                    scoreKeep += 1
                    correctAnswer()
                    // green color button - correct coice
                    botSixButtonColor.backgroundColor = UIColor(netHex: 0x96f10d)
                    topThreeLabelColor.backgroundColor = UIColor(netHex: 0x96f10d)
                    matchingAnswer = true
                } else {
                    // subtract life if incorrect choice is chosen
                    lives -= 1
                    
                    // red color button - incorrect choice
                    botSixButtonColor.backgroundColor = UIColor(netHex: 0xff4f51)
                    pressButtonWrongSound()
                }
        }
        
        gameFinish()
        
        if runOrNot == 1 {
                if buttonSixText.text == fourthNumber.text && botSixButtonColor.backgroundColor!.isEqual(topFourLabelColor.backgroundColor){
                    scoreKeep += 1
                    correctAnswer()
                    // green color button - correct coice
                    botSixButtonColor.backgroundColor = UIColor(netHex: 0x96f10d)
                    topFourLabelColor.backgroundColor = UIColor(netHex: 0x96f10d)
                    matchingAnswer = true
                } else {
                    // subtract life if incorrect choice is chosen
                    lives -= 1
                    
                    // red color button - incorrect choice
                    botSixButtonColor.backgroundColor = UIColor(netHex: 0xff4f51)
                    pressButtonWrongSound()
                }
        }
        
        gameFinish()
        
    }
    
    // BUTTON #6 - RELEASE
    @IBAction func buttonSixRelease(sender: AnyObject) {
        
        if runOrNot == 4 {
            if botSixButtonColor.backgroundColor!.isEqual(topOneLabelColor.backgroundColor) && buttonSixText.text == firstNumber.text{
                runOrNot -= 1
            }
        }
        
        if runOrNot == 3 {
            if botSixButtonColor.backgroundColor!.isEqual(topTwoLabelColor.backgroundColor) && buttonSixText.text == secondNumber.text{
                runOrNot -= 1
            }
        }
        
        if runOrNot == 2 {
            if botSixButtonColor.backgroundColor!.isEqual(topThreeLabelColor.backgroundColor) && buttonSixText.text == thirdNumber.text{
                runOrNot -= 1
            }
        }
        
        if runOrNot == 1 {
            if botSixButtonColor.backgroundColor!.isEqual(topFourLabelColor.backgroundColor) && buttonSixText.text == fourthNumber.text{
                runOrNot -= 1
            }
        }

    }
    
    // BUTTON #7 PRESS
    @IBAction func buttonSevenDown(sender: AnyObject) {
        
        
        if runOrNot == 4 {
                if buttonSevenText.text == firstNumber.text && botSevenButtonColor.backgroundColor!.isEqual(topOneLabelColor.backgroundColor){
                    scoreKeep += 1
                    correctAnswer()
                    // green color button - correct coice
                    botSevenButtonColor.backgroundColor = UIColor(netHex: 0x96f10d)
                    topOneLabelColor.backgroundColor = UIColor(netHex: 0x96f10d)
                    matchingAnswer = true
                } else {
                    // subtract life if incorrect choice is chosen
                    lives -= 1
                    
                    // red color button - incorrect choice
                    botSevenButtonColor.backgroundColor = UIColor(netHex: 0xff4f51)
                    pressButtonWrongSound()
                }
        }
        
        gameFinish()
        
        if runOrNot == 3 {
                if buttonSevenText.text == secondNumber.text && botSevenButtonColor.backgroundColor!.isEqual(topTwoLabelColor.backgroundColor){
                    scoreKeep += 1
                    correctAnswer()
                    // green color button - correct coice
                    botSevenButtonColor.backgroundColor = UIColor(netHex: 0x96f10d)
                    topTwoLabelColor.backgroundColor = UIColor(netHex: 0x96f10d)
                    matchingAnswer = true
                } else {
                    // subtract life if incorrect choice is chosen
                    lives -= 1
                    
                    // red color button - incorrect choice
                    botSevenButtonColor.backgroundColor = UIColor(netHex: 0xff4f51)
                    pressButtonWrongSound()
                }
        }
        
        gameFinish()
        
        if runOrNot == 2 {
                if buttonSevenText.text == thirdNumber.text && botSevenButtonColor.backgroundColor!.isEqual(topThreeLabelColor.backgroundColor){
                    scoreKeep += 1
                    correctAnswer()
                    // green color button - correct coice
                    botSevenButtonColor.backgroundColor = UIColor(netHex: 0x96f10d)
                    topThreeLabelColor.backgroundColor = UIColor(netHex: 0x96f10d)
                    matchingAnswer = true
                } else {
                    // subtract life if incorrect choice is chosen
                    lives -= 1
                    
                    // red color button - incorrect choice
                    botSevenButtonColor.backgroundColor = UIColor(netHex: 0xff4f51)
                    pressButtonWrongSound()
                }
        }
        
        gameFinish()
        
        if runOrNot == 1 {
                if buttonSevenText.text == fourthNumber.text && botSevenButtonColor.backgroundColor!.isEqual(topFourLabelColor.backgroundColor){
                    scoreKeep += 1
                    correctAnswer()
                    // green color button - correct coice
                    botSevenButtonColor.backgroundColor = UIColor(netHex: 0x96f10d)
                    topFourLabelColor.backgroundColor = UIColor(netHex: 0x96f10d)
                    matchingAnswer = true
                } else {
                    // subtract life if incorrect choice is chosen
                    lives -= 1
                    
                    // red color button - incorrect choice
                    botSevenButtonColor.backgroundColor = UIColor(netHex: 0xff4f51)
                    pressButtonWrongSound()
                }
        }
        
        gameFinish()
        
    }
    
    // BUTTON #7 - RELEASE
    @IBAction func buttonSevenRelease(sender: AnyObject) {
        
        if runOrNot == 4 {
            if botSevenButtonColor.backgroundColor!.isEqual(topOneLabelColor.backgroundColor) && buttonSevenText.text == firstNumber.text{
                runOrNot -= 1
            }
        }
        
        if runOrNot == 3 {
            if botSevenButtonColor.backgroundColor!.isEqual(topTwoLabelColor.backgroundColor) && buttonSevenText.text == secondNumber.text{
                runOrNot -= 1
            }
        }
        
        if runOrNot == 2 {
            if botSevenButtonColor.backgroundColor!.isEqual(topThreeLabelColor.backgroundColor) && buttonSevenText.text == thirdNumber.text{
                runOrNot -= 1
            }
        }
        
        if runOrNot == 1 {
            if botSevenButtonColor.backgroundColor!.isEqual(topFourLabelColor.backgroundColor) && buttonSevenText.text == fourthNumber.text{
                runOrNot -= 1
            }
        }

    }
    
    // BUTTON #8 PRESS
    @IBAction func buttonEightDown(sender: AnyObject) {
        
        
        if runOrNot == 4 {
                if buttonEightText.text == firstNumber.text && botEightButtonColor.backgroundColor!.isEqual(topOneLabelColor.backgroundColor){
                    scoreKeep += 1
                    correctAnswer()
                    // green color button - correct coice
                    botEightButtonColor.backgroundColor = UIColor(netHex: 0x96f10d)
                    topOneLabelColor.backgroundColor = UIColor(netHex: 0x96f10d)
                    matchingAnswer = true
                } else {
                    // subtract life if incorrect choice is chosen
                    lives -= 1
                    
                    // red color button - incorrect choice
                    botEightButtonColor.backgroundColor = UIColor(netHex: 0xff4f51)
                    pressButtonWrongSound()
                }
        }
        
        gameFinish()
        
        if runOrNot == 3 {
                if buttonEightText.text == secondNumber.text && botEightButtonColor.backgroundColor!.isEqual(topTwoLabelColor.backgroundColor){
                    scoreKeep += 1
                    correctAnswer()
                    // green color button - correct coice
                    botEightButtonColor.backgroundColor = UIColor(netHex: 0x96f10d)
                    topTwoLabelColor.backgroundColor = UIColor(netHex: 0x96f10d)
                    matchingAnswer = true
                } else {
                    // subtract life if incorrect choice is chosen
                    lives -= 1
                    
                    // red color button - incorrect choice
                    botEightButtonColor.backgroundColor = UIColor(netHex: 0xff4f51)
                    pressButtonWrongSound()
                }
        }
        
        gameFinish()
        
        if runOrNot == 2 {
                if buttonEightText.text == thirdNumber.text && botEightButtonColor.backgroundColor!.isEqual(topThreeLabelColor.backgroundColor){
                    scoreKeep += 1
                    correctAnswer()
                    // green color button - correct coice
                    botEightButtonColor.backgroundColor = UIColor(netHex: 0x96f10d)
                    topThreeLabelColor.backgroundColor = UIColor(netHex: 0x96f10d)
                    matchingAnswer = true
                } else {
                    // subtract life if incorrect choice is chosen
                    lives -= 1
                    
                    // red color button - incorrect choice
                    botEightButtonColor.backgroundColor = UIColor(netHex: 0xff4f51)
                    pressButtonWrongSound()
                }
        }
        
        gameFinish()
        
        if runOrNot == 1 {
                if buttonEightText.text == fourthNumber.text && botEightButtonColor.backgroundColor!.isEqual(topFourLabelColor.backgroundColor){
                    scoreKeep += 1
                    correctAnswer()
                    // green color button - correct coice
                    botEightButtonColor.backgroundColor = UIColor(netHex: 0x96f10d)
                    topFourLabelColor.backgroundColor = UIColor(netHex: 0x96f10d)
                    matchingAnswer = true
                } else {
                    // subtract life if incorrect choice is chosen
                    lives -= 1
                    
                    // red color button - incorrect choice
                    botEightButtonColor.backgroundColor = UIColor(netHex: 0xff4f51)
                    pressButtonWrongSound()
                }
        }
        
        gameFinish()
        
    }
    
    // BUTTON #8 - RELEASE
    @IBAction func buttonEightRelease(sender: AnyObject) {
        
        if runOrNot == 4 {
            if botEightButtonColor.backgroundColor!.isEqual(topOneLabelColor.backgroundColor) && buttonEightText.text == firstNumber.text{
                runOrNot -= 1
            }
        }
        
        if runOrNot == 3 {
            if botEightButtonColor.backgroundColor!.isEqual(topTwoLabelColor.backgroundColor) && buttonEightText.text == secondNumber.text{
                runOrNot -= 1
            }
        }
        
        if runOrNot == 2 {
            if botEightButtonColor.backgroundColor!.isEqual(topThreeLabelColor.backgroundColor) && buttonEightText.text == thirdNumber.text{
                runOrNot -= 1
            }
        }
        
        if runOrNot == 1 {
            if botEightButtonColor.backgroundColor!.isEqual(topFourLabelColor.backgroundColor) && buttonEightText.text == fourthNumber.text{
                runOrNot -= 1
            }
        }

    }
    
    // BUTTON #9 PRESS
    @IBAction func buttonNineDown(sender: AnyObject) {
        
        
        if runOrNot == 4 {
                if buttonNineText.text == firstNumber.text && botNineButtonColor.backgroundColor!.isEqual(topOneLabelColor.backgroundColor){
                    scoreKeep += 1
                    correctAnswer()
                    // green color button - correct coice
                    botNineButtonColor.backgroundColor = UIColor(netHex: 0x96f10d)
                    topOneLabelColor.backgroundColor = UIColor(netHex: 0x96f10d)
                    matchingAnswer = true
                } else {
                    // subtract life if incorrect choice is chosen
                    lives -= 1
                    
                    // red color button - incorrect choice
                    botNineButtonColor.backgroundColor = UIColor(netHex: 0xff4f51)
                    pressButtonWrongSound()
                }
        }
        
        gameFinish()
        
        if runOrNot == 3 {
                if buttonNineText.text == secondNumber.text && botNineButtonColor.backgroundColor!.isEqual(topTwoLabelColor.backgroundColor){
                    scoreKeep += 1
                    correctAnswer()
                    // green color button - correct coice
                    botNineButtonColor.backgroundColor = UIColor(netHex: 0x96f10d)
                    topTwoLabelColor.backgroundColor = UIColor(netHex: 0x96f10d)
                    matchingAnswer = true
                } else {
                    // subtract life if incorrect choice is chosen
                    lives -= 1
                    
                    // red color button - incorrect choice
                    botNineButtonColor.backgroundColor = UIColor(netHex: 0xff4f51)
                    pressButtonWrongSound()
                }
        }
        
        gameFinish()
        
        if runOrNot == 2 {
                if buttonNineText.text == thirdNumber.text && botNineButtonColor.backgroundColor!.isEqual(topThreeLabelColor.backgroundColor){
                    scoreKeep += 1
                    correctAnswer()
                    // green color button - correct coice
                    botNineButtonColor.backgroundColor = UIColor(netHex: 0x96f10d)
                    topThreeLabelColor.backgroundColor = UIColor(netHex: 0x96f10d)
                    matchingAnswer = true
                } else {
                    // subtract life if incorrect choice is chosen
                    lives -= 1
                    
                    // red color button - incorrect choice
                    botNineButtonColor.backgroundColor = UIColor(netHex: 0xff4f51)
                    pressButtonWrongSound()
                }
        }
        
        gameFinish()
        
        if runOrNot == 1 {
                if buttonNineText.text == fourthNumber.text && botNineButtonColor.backgroundColor!.isEqual(topFourLabelColor.backgroundColor){
                    scoreKeep += 1
                    correctAnswer()
                    // green color button - correct coice
                    botNineButtonColor.backgroundColor = UIColor(netHex: 0x96f10d)
                    topFourLabelColor.backgroundColor = UIColor(netHex: 0x96f10d)
                    matchingAnswer = true
                } else {
                    // subtract life if incorrect choice is chosen
                    lives -= 1
                    
                    // red color button - incorrect choice
                    botNineButtonColor.backgroundColor = UIColor(netHex: 0xff4f51)
                    pressButtonWrongSound()
                }
        }
        
        gameFinish()
        
    }
    
    // BUTTON #9 - RELEASE
    @IBAction func buttonNineRelease(sender: AnyObject) {
        
        if runOrNot == 4 {
            if botNineButtonColor.backgroundColor!.isEqual(topOneLabelColor.backgroundColor) && buttonNineText.text == firstNumber.text{
                runOrNot -= 1
                
            }
        }
        
        if runOrNot == 3 {
            if botNineButtonColor.backgroundColor!.isEqual(topTwoLabelColor.backgroundColor) && buttonNineText.text == secondNumber.text{
                runOrNot -= 1
            }
        }
        
        if runOrNot == 2 {
            if botNineButtonColor.backgroundColor!.isEqual(topThreeLabelColor.backgroundColor) && buttonNineText.text == thirdNumber.text{
                runOrNot -= 1
            }
        }
        
        if runOrNot == 1 {
            if botNineButtonColor.backgroundColor!.isEqual(topFourLabelColor.backgroundColor) && buttonNineText.text == fourthNumber.text{
                runOrNot -= 1
            }
        }

    }

    // when back button is pressed, stop background music
    @IBAction func backOption(sender: AnyObject) {
//        backgroundMusicPlayer.stop()
    }
    
    
    
    
    
    
    
    

} // end




