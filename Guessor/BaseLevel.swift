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
    @IBOutlet var numberOneLabel: UILabel!
    @IBOutlet var numberTwoLabel: UILabel!
    @IBOutlet var numberThreeLabel: UILabel!
    @IBOutlet var numberFourLabel: UILabel!
    
    

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
    var topButtonOne:Int = 0
    var topButtonTwo:Int = 0
    var topButtonThree:Int = 0
    var topButtonFour:Int = 0
    
    // create variable background for top 4 buttons
    var topButtonOneBackground:Int = 0
    var topButtonTwoBackground:Int = 0
    var topButtonThreeBackground:Int = 0
    var topButtonFourBackground:Int = 0
    
    // create variable symbol for middle 9 buttons
    var bottomButtonOne:Int = 0
    var bottomButtonTwo:Int = 0
    var bottomButtonThree:Int = 0
    var bottomButtonFour:Int = 0
    var bottomButtonFive:Int = 0
    var bottomButtonSix:Int = 0
    var bottomButtonSeven:Int = 0
    var bottomButtonEight:Int = 0
    var bottomButtonNine:Int = 0
    
    // create variable symbol for middle 9 buttons
    var bottomButtonOneBackground:Int = 0
    var bottomButtonTwoBackground:Int = 0
    var bottomButtonThreeBackground:Int = 0
    var bottomButtonFourBackground:Int = 0
    var bottomButtonFiveBackground:Int = 0
    var bottomButtonSixBackground:Int = 0
    var bottomButtonSevenBackground:Int = 0
    var bottomButtonEightBackground:Int = 0
    var bottomButtonNineBackground:Int = 0
    
    
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
                if buttonOneText.text == firstNumber.text && buttonOneLabel.backgroundColor!.isEqual(numberOneLabel.backgroundColor){
                    scoreKeep += 1
                    correctAnswer()
                    // green color button - correct coice
                    numberOneLabel.backgroundColor = UIColor(netHex: 0x96f10d)
                    buttonOneLabel.backgroundColor = UIColor(netHex: 0x96f10d)
                    matchingAnswer = true
                } else {
                    // subtract life if incorrect choice is chosen
                    lives -= 1
                    
                    // red color button - incorrect choice
                    buttonOneLabel.backgroundColor = UIColor(netHex: 0xff4f51)
                    disableButtons()
                    pressButtonWrongSound()
                }
        }
        
        gameFinish()
        
        if runOrNot == 3 {
                if buttonOneText.text == secondNumber.text && buttonOneLabel.backgroundColor!.isEqual(numberTwoLabel.backgroundColor){
                    scoreKeep += 1
                    correctAnswer()
                    // green color button - correct coice
                    numberTwoLabel.backgroundColor = UIColor(netHex: 0x96f10d)
                    buttonOneLabel.backgroundColor = UIColor(netHex: 0x96f10d)
                    matchingAnswer = true
                } else {
                    // subtract life if incorrect choice is chosen
                    lives -= 1
                    
                    // red color button - incorrect choice
                    buttonOneLabel.backgroundColor = UIColor(netHex: 0xff4f51)
                    pressButtonWrongSound()
                }
        }
        
        gameFinish()
        
        if runOrNot == 2 {
                if buttonOneText.text == thirdNumber.text && buttonOneLabel.backgroundColor!.isEqual(numberThreeLabel.backgroundColor){
                    scoreKeep += 1
                    correctAnswer()
                    // green color button - correct coice
                    numberThreeLabel.backgroundColor = UIColor(netHex: 0x96f10d)
                    buttonOneLabel.backgroundColor = UIColor(netHex: 0x96f10d)
                    matchingAnswer = true
                } else {
                    // subtract life if incorrect choice is chosen
                    lives -= 1
                    
                    // red color button - incorrect choice
                    buttonOneLabel.backgroundColor = UIColor(netHex: 0xff4f51)
                    pressButtonWrongSound()
                }
        }
        
        gameFinish()
        
        if runOrNot == 1 {
                if buttonOneText.text == fourthNumber.text && buttonOneLabel.backgroundColor!.isEqual(numberFourLabel.backgroundColor){
                    scoreKeep += 1
                    correctAnswer()
                    // green color button - correct coice
                    numberFourLabel.backgroundColor = UIColor(netHex: 0x96f10d)
                    buttonOneLabel.backgroundColor = UIColor(netHex: 0x96f10d)
                    matchingAnswer = true
                } else {
                    // subtract life if incorrect choice is chosen
                    lives -= 1
                    
                    // red color button - incorrect choice
                    buttonOneLabel.backgroundColor = UIColor(netHex: 0xff4f51)
                    pressButtonWrongSound()
                }
        }
        
        gameFinish()
        
    }

    // BUTTON #1 - RELEASE
    @IBAction func buttonOneRelease(sender: AnyObject) {
        
        if runOrNot == 4 {
            if buttonOneLabel.backgroundColor!.isEqual(numberOneLabel.backgroundColor) && buttonOneText.text == firstNumber.text{
                runOrNot -= 1
            }
        }
        
        if runOrNot == 3 {
            if buttonOneLabel.backgroundColor!.isEqual(numberTwoLabel.backgroundColor) && buttonOneText.text == secondNumber.text {
                runOrNot -= 1
            }
        }
        
        if runOrNot == 2 {
            if buttonOneLabel.backgroundColor!.isEqual(numberThreeLabel.backgroundColor) && buttonOneText.text == thirdNumber.text {
                runOrNot -= 1
            }
        }
        
        if runOrNot == 1 {
            if buttonOneLabel.backgroundColor!.isEqual(numberFourLabel.backgroundColor) && buttonOneText.text == fourthNumber.text {
                runOrNot -= 1
            }
        }
        
    }
    
    @IBAction func buttonTwoDown(sender: AnyObject) {
        
        
        if runOrNot == 4 {
                if buttonTwoText.text == firstNumber.text && buttonTwoLabel.backgroundColor!.isEqual(numberOneLabel.backgroundColor){
                    scoreKeep += 1
                    correctAnswer()
                    // green color button - correct coice
                    buttonTwoLabel.backgroundColor = UIColor(netHex: 0x96f10d)
                    numberOneLabel.backgroundColor = UIColor(netHex: 0x96f10d)
                    matchingAnswer = true
                } else {
                    // subtract life if incorrect choice is chosen
                    lives -= 1
                    
                    // red color button - incorrect choice
                    buttonTwoLabel.backgroundColor = UIColor(netHex: 0xff4f51)
                    pressButtonWrongSound()
                }
        }
        
        gameFinish()
        
        if runOrNot == 3 {
                if buttonTwoText.text == secondNumber.text && buttonTwoLabel.backgroundColor!.isEqual(numberTwoLabel.backgroundColor){
                    scoreKeep += 1
                    correctAnswer()
                    // green color button - correct coice
                    buttonTwoLabel.backgroundColor = UIColor(netHex: 0x96f10d)
                    numberTwoLabel.backgroundColor = UIColor(netHex: 0x96f10d)
                    matchingAnswer = true
                } else {
                    // subtract life if incorrect choice is chosen
                    lives -= 1
                    
                    // red color button - incorrect choice
                    buttonTwoLabel.backgroundColor = UIColor(netHex: 0xff4f51)
                    pressButtonWrongSound()
                }
        }
        
        gameFinish()
        
        if runOrNot == 2 {
                if buttonTwoText.text == thirdNumber.text && buttonTwoLabel.backgroundColor!.isEqual(numberThreeLabel.backgroundColor){
                    scoreKeep += 1
                    correctAnswer()
                    // green color button - correct coice
                    buttonTwoLabel.backgroundColor = UIColor(netHex: 0x96f10d)
                    numberThreeLabel.backgroundColor = UIColor(netHex: 0x96f10d)
                    matchingAnswer = true
                } else {
                    // subtract life if incorrect choice is chosen
                    lives -= 1
                    
                    // red color button - incorrect choice
                    buttonTwoLabel.backgroundColor = UIColor(netHex: 0xff4f51)
                    pressButtonWrongSound()
                }
        }
        
        gameFinish()
        
        if runOrNot == 1 {
                if buttonTwoText.text == fourthNumber.text && buttonTwoLabel.backgroundColor!.isEqual(numberFourLabel.backgroundColor){
                    scoreKeep += 1
                    correctAnswer()
                    // green color button - correct coice
                    buttonTwoLabel.backgroundColor = UIColor(netHex: 0x96f10d)
                    numberFourLabel.backgroundColor = UIColor(netHex: 0x96f10d)
                    matchingAnswer = true
                } else {
                    // subtract life if incorrect choice is chosen
                    lives -= 1
                    
                    // red color button - incorrect choice
                    buttonTwoLabel.backgroundColor = UIColor(netHex: 0xff4f51)
                    pressButtonWrongSound()
                }
        }
        
        gameFinish()
        
    }
    

    // BUTTON #2 - RELEASE
    @IBAction func buttonTwoRelease(sender: AnyObject) {
      
        if runOrNot == 4 {
            if buttonTwoLabel.backgroundColor!.isEqual(numberOneLabel.backgroundColor) && buttonTwoText.text == firstNumber.text{
                runOrNot -= 1
            }
        }
        
        if runOrNot == 3 {
            if buttonTwoLabel.backgroundColor!.isEqual(numberTwoLabel.backgroundColor) && buttonTwoText.text == secondNumber.text{
                runOrNot -= 1
            }
        }
        
        if runOrNot == 2 {
            if buttonTwoLabel.backgroundColor!.isEqual(numberThreeLabel.backgroundColor) && buttonTwoText.text == thirdNumber.text{
                runOrNot -= 1
            }
        }
        
        if runOrNot == 1 {
            if buttonTwoLabel.backgroundColor!.isEqual(numberFourLabel.backgroundColor) && buttonTwoText.text == fourthNumber.text{
                runOrNot -= 1
            }
        }

    }
    
    // BUTTON #3 PRESS
    @IBAction func buttonThreeDown(sender: AnyObject) {
        
        
        if runOrNot == 4 {
                if buttonThreeText.text == firstNumber.text && buttonThreeLabel.backgroundColor!.isEqual(numberOneLabel.backgroundColor){
                    scoreKeep += 1
                    correctAnswer()
                    // green color button - correct coice
                    buttonThreeLabel.backgroundColor = UIColor(netHex: 0x96f10d)
                    numberOneLabel.backgroundColor = UIColor(netHex: 0x96f10d)
                    matchingAnswer = true
                } else {
                    // subtract life if incorrect choice is chosen
                    lives -= 1
                    
                    // red color button - incorrect choice
                    buttonThreeLabel.backgroundColor = UIColor(netHex: 0xff4f51)
                    pressButtonWrongSound()
                }
        }
        
        gameFinish()
        
        if runOrNot == 3 {
                if buttonThreeText.text == secondNumber.text && buttonThreeLabel.backgroundColor!.isEqual(numberTwoLabel.backgroundColor){
                    scoreKeep += 1
                    correctAnswer()
                    // green color button - correct coice
                    buttonThreeLabel.backgroundColor = UIColor(netHex: 0x96f10d)
                    numberTwoLabel.backgroundColor = UIColor(netHex: 0x96f10d)
                    matchingAnswer = true
                } else {
                    // subtract life if incorrect choice is chosen
                    lives -= 1
                    
                    // red color button - incorrect choice
                    buttonThreeLabel.backgroundColor = UIColor(netHex: 0xff4f51)
                    pressButtonWrongSound()
                }
        }
        
        gameFinish()
        
        if runOrNot == 2 {
                if buttonThreeText.text == thirdNumber.text && buttonThreeLabel.backgroundColor!.isEqual(numberThreeLabel.backgroundColor){
                    scoreKeep += 1
                    correctAnswer()
                    // green color button - correct coice
                    buttonThreeLabel.backgroundColor = UIColor(netHex: 0x96f10d)
                    numberThreeLabel.backgroundColor = UIColor(netHex: 0x96f10d)
                    matchingAnswer = true
                } else {
                    // subtract life if incorrect choice is chosen
                    lives -= 1
                    
                    // red color button - incorrect choice
                    buttonThreeLabel.backgroundColor = UIColor(netHex: 0xff4f51)
                    pressButtonWrongSound()
                }
        }
        
        gameFinish()
        
        if runOrNot == 1 {
                if buttonThreeText.text == fourthNumber.text && buttonThreeLabel.backgroundColor!.isEqual(numberFourLabel.backgroundColor){
                    scoreKeep += 1
                    correctAnswer()
                    // green color button - correct coice
                    buttonThreeLabel.backgroundColor = UIColor(netHex: 0x96f10d)
                    numberFourLabel.backgroundColor = UIColor(netHex: 0x96f10d)
                    matchingAnswer = true
                } else {
                    // subtract life if incorrect choice is chosen
                    lives -= 1
                    
                    // red color button - incorrect choice
                    buttonThreeLabel.backgroundColor = UIColor(netHex: 0xff4f51)
                    pressButtonWrongSound()
                }
        }
        
        gameFinish()
        
    }
    
    // BUTTON #3 - RELEASE
    @IBAction func buttonThreeRelease(sender: AnyObject) {
        
        if runOrNot == 4 {
            if buttonThreeLabel.backgroundColor!.isEqual(numberOneLabel.backgroundColor) && buttonThreeText.text == firstNumber.text{
                runOrNot -= 1
            }
        }
        
        if runOrNot == 3 {
            if buttonThreeLabel.backgroundColor!.isEqual(numberTwoLabel.backgroundColor) && buttonThreeText.text == secondNumber.text{
                runOrNot -= 1
            }
        }
        
        if runOrNot == 2 {
            if buttonThreeLabel.backgroundColor!.isEqual(numberThreeLabel.backgroundColor) && buttonThreeText.text == thirdNumber.text{
                runOrNot -= 1
            }
        }
        
        if runOrNot == 1 {
            if buttonThreeLabel.backgroundColor!.isEqual(numberFourLabel.backgroundColor) && buttonThreeText.text == fourthNumber.text{
                runOrNot -= 1
            }
        }

    }
    
    // BUTTON #4 PRESS
    @IBAction func buttonFourDown(sender: AnyObject) {
        
        
        if runOrNot == 4 {
                if buttonFourText.text == firstNumber.text && buttonFourLabel.backgroundColor!.isEqual(numberOneLabel.backgroundColor){
                    scoreKeep += 1
                    correctAnswer()
                    // green color button - correct coice
                    buttonFourLabel.backgroundColor = UIColor(netHex: 0x96f10d)
                    numberOneLabel.backgroundColor = UIColor(netHex: 0x96f10d)
                    matchingAnswer = true
                } else {
                    // subtract life if incorrect choice is chosen
                    lives -= 1
                    
                    // red color button - incorrect choice
                    buttonFourLabel.backgroundColor = UIColor(netHex: 0xff4f51)
                    pressButtonWrongSound()
                }
        }
        
        gameFinish()
        
        if runOrNot == 3 {
                if buttonFourText.text == secondNumber.text && buttonFourLabel.backgroundColor!.isEqual(numberTwoLabel.backgroundColor){
                    scoreKeep += 1
                    correctAnswer()
                    // green color button - correct coice
                    buttonFourLabel.backgroundColor = UIColor(netHex: 0x96f10d)
                    numberTwoLabel.backgroundColor = UIColor(netHex: 0x96f10d)
                    matchingAnswer = true
                } else {
                    // subtract life if incorrect choice is chosen
                    lives -= 1
                    
                    // red color button - incorrect choice
                    buttonFourLabel.backgroundColor = UIColor(netHex: 0xff4f51)
                    pressButtonWrongSound()
                }
        }
        
        gameFinish()
        
        if runOrNot == 2 {
                if buttonFourText.text == thirdNumber.text && buttonFourLabel.backgroundColor!.isEqual(numberThreeLabel.backgroundColor){
                    scoreKeep += 1
                    correctAnswer()
                    // green color button - correct coice
                    buttonFourLabel.backgroundColor = UIColor(netHex: 0x96f10d)
                    numberThreeLabel.backgroundColor = UIColor(netHex: 0x96f10d)
                    matchingAnswer = true
                } else {
                    // subtract life if incorrect choice is chosen
                    lives -= 1
                    
                    // red color button - incorrect choice
                    buttonFourLabel.backgroundColor = UIColor(netHex: 0xff4f51)
                    pressButtonWrongSound()
                }
        }
        
        gameFinish()
        
        if runOrNot == 1 {
                if buttonFourText.text == fourthNumber.text && buttonFourLabel.backgroundColor!.isEqual(numberFourLabel.backgroundColor){
                    scoreKeep += 1
                    correctAnswer()
                    // green color button - correct coice
                    buttonFourLabel.backgroundColor = UIColor(netHex: 0x96f10d)
                    numberFourLabel.backgroundColor = UIColor(netHex: 0x96f10d)
                    matchingAnswer = true
                } else {
                    // subtract life if incorrect choice is chosen
                    lives -= 1
                    
                    // red color button - incorrect choice
                    buttonFourLabel.backgroundColor = UIColor(netHex: 0xff4f51)
                    pressButtonWrongSound()
                }
        }
        
        gameFinish()
        
    }
    
    // BUTTON #4 - RELEASE
    @IBAction func buttonFourRelease(sender: AnyObject) {
        
        if runOrNot == 4 {
            if buttonFourLabel.backgroundColor!.isEqual(numberOneLabel.backgroundColor) && buttonFourText.text == firstNumber.text{
                runOrNot -= 1
            }
        }
        
        if runOrNot == 3 {
            if buttonFourLabel.backgroundColor!.isEqual(numberTwoLabel.backgroundColor) && buttonFourText.text == secondNumber.text{
                runOrNot -= 1
            }
        }
        
        if runOrNot == 2 {
            if buttonFourLabel.backgroundColor!.isEqual(numberThreeLabel.backgroundColor) && buttonFourText.text == thirdNumber.text{
                runOrNot -= 1
            }
        }
        
        if runOrNot == 1 {
            if buttonFourLabel.backgroundColor!.isEqual(numberFourLabel.backgroundColor) && buttonFourText.text == fourthNumber.text{
                runOrNot -= 1
            }
        }
        
    }

    // BUTTON #5 PRESS
    @IBAction func buttonFiveDown(sender: AnyObject) {
        
        
        if runOrNot == 4 {
                if buttonFiveText.text == firstNumber.text && buttonFiveLabel.backgroundColor!.isEqual(numberOneLabel.backgroundColor){
                    scoreKeep += 1
                    correctAnswer()
                    // green color button - correct coice
                    buttonFiveLabel.backgroundColor = UIColor(netHex: 0x96f10d)
                    numberOneLabel.backgroundColor = UIColor(netHex: 0x96f10d)
                    matchingAnswer = true
                } else {
                    // subtract life if incorrect choice is chosen
                    lives -= 1
                    
                    // red color button - incorrect choice
                    buttonFiveLabel.backgroundColor = UIColor(netHex: 0xff4f51)
                    pressButtonWrongSound()
                }
        }
        
        gameFinish()
        
        if runOrNot == 3 {
                if buttonFiveText.text == secondNumber.text && buttonFiveLabel.backgroundColor!.isEqual(numberTwoLabel.backgroundColor){
                    scoreKeep += 1
                    correctAnswer()
                    // green color button - correct coice
                    buttonFiveLabel.backgroundColor = UIColor(netHex: 0x96f10d)
                    numberTwoLabel.backgroundColor = UIColor(netHex: 0x96f10d)
                    matchingAnswer = true
                } else {
                    // subtract life if incorrect choice is chosen
                    lives -= 1
                    
                    // red color button - incorrect choice
                    buttonFiveLabel.backgroundColor = UIColor(netHex: 0xff4f51)
                    pressButtonWrongSound()
                }
        }
        
        gameFinish()
        
        if runOrNot == 2 {
                if buttonFiveText.text == thirdNumber.text && buttonFiveLabel.backgroundColor!.isEqual(numberThreeLabel.backgroundColor){
                    scoreKeep += 1
                    correctAnswer()
                    // green color button - correct coice
                    buttonFiveLabel.backgroundColor = UIColor(netHex: 0x96f10d)
                    numberThreeLabel.backgroundColor = UIColor(netHex: 0x96f10d)
                    matchingAnswer = true
                } else {
                    // subtract life if incorrect choice is chosen
                    lives -= 1
                    
                    // red color button - incorrect choice
                    buttonFiveLabel.backgroundColor = UIColor(netHex: 0xff4f51)
                    pressButtonWrongSound()
                }
        }
        
        gameFinish()
        
        if runOrNot == 1 {
                if buttonFiveText.text == fourthNumber.text && buttonFiveLabel.backgroundColor!.isEqual(numberFourLabel.backgroundColor){
                    scoreKeep += 1
                    correctAnswer()
                    // green color button - correct coice
                    buttonFiveLabel.backgroundColor = UIColor(netHex: 0x96f10d)
                    numberFourLabel.backgroundColor = UIColor(netHex: 0x96f10d)
                    matchingAnswer = true
                } else {
                    // subtract life if incorrect choice is chosen
                    lives -= 1
                    
                    // red color button - incorrect choice
                    buttonFiveLabel.backgroundColor = UIColor(netHex: 0xff4f51)
                    pressButtonWrongSound()
                }
        }
        
        gameFinish()
        
    }
    
    // BUTTON #5 - RELEASE
    @IBAction func buttonFiveRelease(sender: AnyObject) {
        
        if runOrNot == 4 {
            if buttonFiveLabel.backgroundColor!.isEqual(numberOneLabel.backgroundColor) && buttonFiveText.text == firstNumber.text{
                runOrNot -= 1
            }
        }
        
        if runOrNot == 3 {
            if buttonFiveLabel.backgroundColor!.isEqual(numberTwoLabel.backgroundColor) && buttonFiveText.text == secondNumber.text{
                runOrNot -= 1
            }
        }
        
        if runOrNot == 2 {
            if buttonFiveLabel.backgroundColor!.isEqual(numberThreeLabel.backgroundColor) && buttonFiveText.text == thirdNumber.text{
                runOrNot -= 1
            }
        }
        
        if runOrNot == 1 {
            if buttonFiveLabel.backgroundColor!.isEqual(numberFourLabel.backgroundColor) && buttonFiveText.text == fourthNumber.text{
                runOrNot -= 1
            }
        }

    }
    
    // BUTTON #6 PRESS
    @IBAction func buttonSixDown(sender: AnyObject) {
        
        
        if runOrNot == 4 {
                if buttonSixText.text == firstNumber.text && buttonSixLabel.backgroundColor!.isEqual(numberOneLabel.backgroundColor){
                    scoreKeep += 1
                    correctAnswer()
                    // green color button - correct coice
                    buttonSixLabel.backgroundColor = UIColor(netHex: 0x96f10d)
                    numberOneLabel.backgroundColor = UIColor(netHex: 0x96f10d)
                    matchingAnswer = true
                } else {
                    // subtract life if incorrect choice is chosen
                    lives -= 1
                    
                    // red color button - incorrect choice
                    buttonSixLabel.backgroundColor = UIColor(netHex: 0xff4f51)
                    pressButtonWrongSound()
                }
        }
        
        gameFinish()
        
        if runOrNot == 3 {
                if buttonSixText.text == secondNumber.text && buttonSixLabel.backgroundColor!.isEqual(numberTwoLabel.backgroundColor){
                    scoreKeep += 1
                    correctAnswer()
                    // green color button - correct coice
                    buttonSixLabel.backgroundColor = UIColor(netHex: 0x96f10d)
                    numberTwoLabel.backgroundColor = UIColor(netHex: 0x96f10d)
                    matchingAnswer = true
                } else {
                    // subtract life if incorrect choice is chosen
                    lives -= 1
                    
                    // red color button - incorrect choice
                    buttonSixLabel.backgroundColor = UIColor(netHex: 0xff4f51)
                    pressButtonWrongSound()
                }
        }
        
        gameFinish()
        
        if runOrNot == 2 {
                if buttonSixText.text == thirdNumber.text && buttonSixLabel.backgroundColor!.isEqual(numberThreeLabel.backgroundColor){
                    scoreKeep += 1
                    correctAnswer()
                    // green color button - correct coice
                    buttonSixLabel.backgroundColor = UIColor(netHex: 0x96f10d)
                    numberThreeLabel.backgroundColor = UIColor(netHex: 0x96f10d)
                    matchingAnswer = true
                } else {
                    // subtract life if incorrect choice is chosen
                    lives -= 1
                    
                    // red color button - incorrect choice
                    buttonSixLabel.backgroundColor = UIColor(netHex: 0xff4f51)
                    pressButtonWrongSound()
                }
        }
        
        gameFinish()
        
        if runOrNot == 1 {
                if buttonSixText.text == fourthNumber.text && buttonSixLabel.backgroundColor!.isEqual(numberFourLabel.backgroundColor){
                    scoreKeep += 1
                    correctAnswer()
                    // green color button - correct coice
                    buttonSixLabel.backgroundColor = UIColor(netHex: 0x96f10d)
                    numberFourLabel.backgroundColor = UIColor(netHex: 0x96f10d)
                    matchingAnswer = true
                } else {
                    // subtract life if incorrect choice is chosen
                    lives -= 1
                    
                    // red color button - incorrect choice
                    buttonSixLabel.backgroundColor = UIColor(netHex: 0xff4f51)
                    pressButtonWrongSound()
                }
        }
        
        gameFinish()
        
    }
    
    // BUTTON #6 - RELEASE
    @IBAction func buttonSixRelease(sender: AnyObject) {
        
        if runOrNot == 4 {
            if buttonSixLabel.backgroundColor!.isEqual(numberOneLabel.backgroundColor) && buttonSixText.text == firstNumber.text{
                runOrNot -= 1
            }
        }
        
        if runOrNot == 3 {
            if buttonSixLabel.backgroundColor!.isEqual(numberTwoLabel.backgroundColor) && buttonSixText.text == secondNumber.text{
                runOrNot -= 1
            }
        }
        
        if runOrNot == 2 {
            if buttonSixLabel.backgroundColor!.isEqual(numberThreeLabel.backgroundColor) && buttonSixText.text == thirdNumber.text{
                runOrNot -= 1
            }
        }
        
        if runOrNot == 1 {
            if buttonSixLabel.backgroundColor!.isEqual(numberFourLabel.backgroundColor) && buttonSixText.text == fourthNumber.text{
                runOrNot -= 1
            }
        }

    }
    
    // BUTTON #7 PRESS
    @IBAction func buttonSevenDown(sender: AnyObject) {
        
        
        if runOrNot == 4 {
                if buttonSevenText.text == firstNumber.text && buttonSevenLabel.backgroundColor!.isEqual(numberOneLabel.backgroundColor){
                    scoreKeep += 1
                    correctAnswer()
                    // green color button - correct coice
                    buttonSevenLabel.backgroundColor = UIColor(netHex: 0x96f10d)
                    numberOneLabel.backgroundColor = UIColor(netHex: 0x96f10d)
                    matchingAnswer = true
                } else {
                    // subtract life if incorrect choice is chosen
                    lives -= 1
                    
                    // red color button - incorrect choice
                    buttonSevenLabel.backgroundColor = UIColor(netHex: 0xff4f51)
                    pressButtonWrongSound()
                }
        }
        
        gameFinish()
        
        if runOrNot == 3 {
                if buttonSevenText.text == secondNumber.text && buttonSevenLabel.backgroundColor!.isEqual(numberTwoLabel.backgroundColor){
                    scoreKeep += 1
                    correctAnswer()
                    // green color button - correct coice
                    buttonSevenLabel.backgroundColor = UIColor(netHex: 0x96f10d)
                    numberTwoLabel.backgroundColor = UIColor(netHex: 0x96f10d)
                    matchingAnswer = true
                } else {
                    // subtract life if incorrect choice is chosen
                    lives -= 1
                    
                    // red color button - incorrect choice
                    buttonSevenLabel.backgroundColor = UIColor(netHex: 0xff4f51)
                    pressButtonWrongSound()
                }
        }
        
        gameFinish()
        
        if runOrNot == 2 {
                if buttonSevenText.text == thirdNumber.text && buttonSevenLabel.backgroundColor!.isEqual(numberThreeLabel.backgroundColor){
                    scoreKeep += 1
                    correctAnswer()
                    // green color button - correct coice
                    buttonSevenLabel.backgroundColor = UIColor(netHex: 0x96f10d)
                    numberThreeLabel.backgroundColor = UIColor(netHex: 0x96f10d)
                    matchingAnswer = true
                } else {
                    // subtract life if incorrect choice is chosen
                    lives -= 1
                    
                    // red color button - incorrect choice
                    buttonSevenLabel.backgroundColor = UIColor(netHex: 0xff4f51)
                    pressButtonWrongSound()
                }
        }
        
        gameFinish()
        
        if runOrNot == 1 {
                if buttonSevenText.text == fourthNumber.text && buttonSevenLabel.backgroundColor!.isEqual(numberFourLabel.backgroundColor){
                    scoreKeep += 1
                    correctAnswer()
                    // green color button - correct coice
                    buttonSevenLabel.backgroundColor = UIColor(netHex: 0x96f10d)
                    numberFourLabel.backgroundColor = UIColor(netHex: 0x96f10d)
                    matchingAnswer = true
                } else {
                    // subtract life if incorrect choice is chosen
                    lives -= 1
                    
                    // red color button - incorrect choice
                    buttonSevenLabel.backgroundColor = UIColor(netHex: 0xff4f51)
                    pressButtonWrongSound()
                }
        }
        
        gameFinish()
        
    }
    
    // BUTTON #7 - RELEASE
    @IBAction func buttonSevenRelease(sender: AnyObject) {
        
        if runOrNot == 4 {
            if buttonSevenLabel.backgroundColor!.isEqual(numberOneLabel.backgroundColor) && buttonSevenText.text == firstNumber.text{
                runOrNot -= 1
            }
        }
        
        if runOrNot == 3 {
            if buttonSevenLabel.backgroundColor!.isEqual(numberTwoLabel.backgroundColor) && buttonSevenText.text == secondNumber.text{
                runOrNot -= 1
            }
        }
        
        if runOrNot == 2 {
            if buttonSevenLabel.backgroundColor!.isEqual(numberThreeLabel.backgroundColor) && buttonSevenText.text == thirdNumber.text{
                runOrNot -= 1
            }
        }
        
        if runOrNot == 1 {
            if buttonSevenLabel.backgroundColor!.isEqual(numberFourLabel.backgroundColor) && buttonSevenText.text == fourthNumber.text{
                runOrNot -= 1
            }
        }

    }
    
    // BUTTON #8 PRESS
    @IBAction func buttonEightDown(sender: AnyObject) {
        
        
        if runOrNot == 4 {
                if buttonEightText.text == firstNumber.text && buttonEightLabel.backgroundColor!.isEqual(numberOneLabel.backgroundColor){
                    scoreKeep += 1
                    correctAnswer()
                    // green color button - correct coice
                    buttonEightLabel.backgroundColor = UIColor(netHex: 0x96f10d)
                    numberOneLabel.backgroundColor = UIColor(netHex: 0x96f10d)
                    matchingAnswer = true
                } else {
                    // subtract life if incorrect choice is chosen
                    lives -= 1
                    
                    // red color button - incorrect choice
                    buttonEightLabel.backgroundColor = UIColor(netHex: 0xff4f51)
                    pressButtonWrongSound()
                }
        }
        
        gameFinish()
        
        if runOrNot == 3 {
                if buttonEightText.text == secondNumber.text && buttonEightLabel.backgroundColor!.isEqual(numberTwoLabel.backgroundColor){
                    scoreKeep += 1
                    correctAnswer()
                    // green color button - correct coice
                    buttonEightLabel.backgroundColor = UIColor(netHex: 0x96f10d)
                    numberTwoLabel.backgroundColor = UIColor(netHex: 0x96f10d)
                    matchingAnswer = true
                } else {
                    // subtract life if incorrect choice is chosen
                    lives -= 1
                    
                    // red color button - incorrect choice
                    buttonEightLabel.backgroundColor = UIColor(netHex: 0xff4f51)
                    pressButtonWrongSound()
                }
        }
        
        gameFinish()
        
        if runOrNot == 2 {
                if buttonEightText.text == thirdNumber.text && buttonEightLabel.backgroundColor!.isEqual(numberThreeLabel.backgroundColor){
                    scoreKeep += 1
                    correctAnswer()
                    // green color button - correct coice
                    buttonEightLabel.backgroundColor = UIColor(netHex: 0x96f10d)
                    numberThreeLabel.backgroundColor = UIColor(netHex: 0x96f10d)
                    matchingAnswer = true
                } else {
                    // subtract life if incorrect choice is chosen
                    lives -= 1
                    
                    // red color button - incorrect choice
                    buttonEightLabel.backgroundColor = UIColor(netHex: 0xff4f51)
                    pressButtonWrongSound()
                }
        }
        
        gameFinish()
        
        if runOrNot == 1 {
                if buttonEightText.text == fourthNumber.text && buttonEightLabel.backgroundColor!.isEqual(numberFourLabel.backgroundColor){
                    scoreKeep += 1
                    correctAnswer()
                    // green color button - correct coice
                    buttonEightLabel.backgroundColor = UIColor(netHex: 0x96f10d)
                    numberFourLabel.backgroundColor = UIColor(netHex: 0x96f10d)
                    matchingAnswer = true
                } else {
                    // subtract life if incorrect choice is chosen
                    lives -= 1
                    
                    // red color button - incorrect choice
                    buttonEightLabel.backgroundColor = UIColor(netHex: 0xff4f51)
                    pressButtonWrongSound()
                }
        }
        
        gameFinish()
        
    }
    
    // BUTTON #8 - RELEASE
    @IBAction func buttonEightRelease(sender: AnyObject) {
        
        if runOrNot == 4 {
            if buttonEightLabel.backgroundColor!.isEqual(numberOneLabel.backgroundColor) && buttonEightText.text == firstNumber.text{
                runOrNot -= 1
            }
        }
        
        if runOrNot == 3 {
            if buttonEightLabel.backgroundColor!.isEqual(numberTwoLabel.backgroundColor) && buttonEightText.text == secondNumber.text{
                runOrNot -= 1
            }
        }
        
        if runOrNot == 2 {
            if buttonEightLabel.backgroundColor!.isEqual(numberThreeLabel.backgroundColor) && buttonEightText.text == thirdNumber.text{
                runOrNot -= 1
            }
        }
        
        if runOrNot == 1 {
            if buttonEightLabel.backgroundColor!.isEqual(numberFourLabel.backgroundColor) && buttonEightText.text == fourthNumber.text{
                runOrNot -= 1
            }
        }

    }
    
    // BUTTON #9 PRESS
    @IBAction func buttonNineDown(sender: AnyObject) {
        
        
        if runOrNot == 4 {
                if buttonNineText.text == firstNumber.text && buttonNineLabel.backgroundColor!.isEqual(numberOneLabel.backgroundColor){
                    scoreKeep += 1
                    correctAnswer()
                    // green color button - correct coice
                    buttonNineLabel.backgroundColor = UIColor(netHex: 0x96f10d)
                    numberOneLabel.backgroundColor = UIColor(netHex: 0x96f10d)
                    matchingAnswer = true
                } else {
                    // subtract life if incorrect choice is chosen
                    lives -= 1
                    
                    // red color button - incorrect choice
                    buttonNineLabel.backgroundColor = UIColor(netHex: 0xff4f51)
                    pressButtonWrongSound()
                }
        }
        
        gameFinish()
        
        if runOrNot == 3 {
                if buttonNineText.text == secondNumber.text && buttonNineLabel.backgroundColor!.isEqual(numberTwoLabel.backgroundColor){
                    scoreKeep += 1
                    correctAnswer()
                    // green color button - correct coice
                    buttonNineLabel.backgroundColor = UIColor(netHex: 0x96f10d)
                    numberTwoLabel.backgroundColor = UIColor(netHex: 0x96f10d)
                    matchingAnswer = true
                } else {
                    // subtract life if incorrect choice is chosen
                    lives -= 1
                    
                    // red color button - incorrect choice
                    buttonNineLabel.backgroundColor = UIColor(netHex: 0xff4f51)
                    pressButtonWrongSound()
                }
        }
        
        gameFinish()
        
        if runOrNot == 2 {
                if buttonNineText.text == thirdNumber.text && buttonNineLabel.backgroundColor!.isEqual(numberThreeLabel.backgroundColor){
                    scoreKeep += 1
                    correctAnswer()
                    // green color button - correct coice
                    buttonNineLabel.backgroundColor = UIColor(netHex: 0x96f10d)
                    numberThreeLabel.backgroundColor = UIColor(netHex: 0x96f10d)
                    matchingAnswer = true
                } else {
                    // subtract life if incorrect choice is chosen
                    lives -= 1
                    
                    // red color button - incorrect choice
                    buttonNineLabel.backgroundColor = UIColor(netHex: 0xff4f51)
                    pressButtonWrongSound()
                }
        }
        
        gameFinish()
        
        if runOrNot == 1 {
                if buttonNineText.text == fourthNumber.text && buttonNineLabel.backgroundColor!.isEqual(numberFourLabel.backgroundColor){
                    scoreKeep += 1
                    correctAnswer()
                    // green color button - correct coice
                    buttonNineLabel.backgroundColor = UIColor(netHex: 0x96f10d)
                    numberFourLabel.backgroundColor = UIColor(netHex: 0x96f10d)
                    matchingAnswer = true
                } else {
                    // subtract life if incorrect choice is chosen
                    lives -= 1
                    
                    // red color button - incorrect choice
                    buttonNineLabel.backgroundColor = UIColor(netHex: 0xff4f51)
                    pressButtonWrongSound()
                }
        }
        
        gameFinish()
        
    }
    
    // BUTTON #9 - RELEASE
    @IBAction func buttonNineRelease(sender: AnyObject) {
        
        if runOrNot == 4 {
            if buttonNineLabel.backgroundColor!.isEqual(numberOneLabel.backgroundColor) && buttonNineText.text == firstNumber.text{
                runOrNot -= 1
                
            }
        }
        
        if runOrNot == 3 {
            if buttonNineLabel.backgroundColor!.isEqual(numberTwoLabel.backgroundColor) && buttonNineText.text == secondNumber.text{
                runOrNot -= 1
            }
        }
        
        if runOrNot == 2 {
            if buttonNineLabel.backgroundColor!.isEqual(numberThreeLabel.backgroundColor) && buttonNineText.text == thirdNumber.text{
                runOrNot -= 1
            }
        }
        
        if runOrNot == 1 {
            if buttonNineLabel.backgroundColor!.isEqual(numberFourLabel.backgroundColor) && buttonNineText.text == fourthNumber.text{
                runOrNot -= 1
            }
        }

    }

    // when back button is pressed, stop background music
    @IBAction func backOption(sender: AnyObject) {
//        backgroundMusicPlayer.stop()
    }
    
    
    
    
    
    
    
    

} // end




