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

    // xp label
    @IBOutlet var xpLabel: UILabel!
    var xp:Int = 0

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
    
    //bottom buttons pictures
    @IBOutlet weak var candyB1: UIImageView!
    @IBOutlet weak var popB1: UIImageView!
    @IBOutlet weak var caneB1: UIImageView!


    
    
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
    var count = 10
    var timer = NSTimer()
    
    // switch variable
    var value = 0
    
    var runOrNot:Int = 4
    
    // PROGRESS BAR
    @IBOutlet var progressTimer: UIProgressView!
    
    // "generate" button
    @IBOutlet var generateLabel: UIButton!

    // "try again" button background
    @IBOutlet var tryAgainLabel: UIButton!
    
    // "try aagain" function
    @IBAction func tryAgain(sender: AnyObject) {
        stopTimer()
        tryAgain()
    }
    
    // get time
    let date = NSDate()
    let calendar = NSCalendar.currentCalendar()
    
    var matchingAnswer:Bool = false
    
    @IBOutlet weak var xpProgressBar: UIProgressView!
    
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
        
        buttonOneOptionsText()
        buttonTwoOptionsText()
        buttonThreeOptionsText()
        buttonFourOptionsText()
        buttonFiveOptionsText()
        buttonSixOptionsText()
        buttonSevenOptionsText()
        buttonEightOptionsText()
        buttonNineOptionsText()
        
        print(buttonOneText.text)
        
        if buttonOneText.text == "0" {
            caneB1.hidden = false
            candyB1.hidden = true
            popB1.hidden = true
        }
        if buttonOneText.text == ">" {
            caneB1.hidden = true
            candyB1.hidden = false
            popB1.hidden = true
        }
        if buttonOneText.text == "<" {
            caneB1.hidden = true
            candyB1.hidden = true
            popB1.hidden = false
        }
        
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

    @IBAction func generateButtonRelease(sender: AnyObject) {

    }

    
    
    // BUTTON #1 PRESS
    @IBAction func buttonOneDown(sender: AnyObject) {
        
        shadowOptions()
        
        if runOrNot == 4 {
                if buttonOneText.text == firstNumber.text && buttonOneLabel.backgroundColor!.isEqual(firstNumber.backgroundColor){
                    scoreKeep += 1
                    correctAnswer()
                    // green color button - correct coice
                    firstNumber.backgroundColor = UIColor(netHex: 0x88C425)
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
        
        if runOrNot == 3 {
                if buttonOneText.text == secondNumber.text && buttonOneLabel.backgroundColor!.isEqual(secondNumber.backgroundColor){
                    scoreKeep += 1
                    correctAnswer()
                    // green color button - correct coice
                    secondNumber.backgroundColor = UIColor(netHex: 0x88C425)
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
                if buttonOneText.text == thirdNumber.text && buttonOneLabel.backgroundColor!.isEqual(thirdNumber.backgroundColor){
                    scoreKeep += 1
                    correctAnswer()
                    // green color button - correct coice
                    thirdNumber.backgroundColor = UIColor(netHex: 0x88C425)
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
                if buttonOneText.text == fourthNumber.text && buttonOneLabel.backgroundColor!.isEqual(fourthNumber.backgroundColor){
                    scoreKeep += 1
                    correctAnswer()
                    // green color button - correct coice
                    fourthNumber.backgroundColor = UIColor(netHex: 0x88C425)
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
            if buttonOneLabel.backgroundColor!.isEqual(firstNumber.backgroundColor) && buttonOneText.text == firstNumber.text{
                runOrNot -= 1
            }
        }
        
        if runOrNot == 3 {
            if buttonOneLabel.backgroundColor!.isEqual(secondNumber.backgroundColor) && buttonOneText.text == secondNumber.text {
                runOrNot -= 1
            }
        }
        
        if runOrNot == 2 {
            if buttonOneLabel.backgroundColor!.isEqual(thirdNumber.backgroundColor) && buttonOneText.text == thirdNumber.text {
                runOrNot -= 1
            }
        }
        
        if runOrNot == 1 {
            if buttonOneLabel.backgroundColor!.isEqual(fourthNumber.backgroundColor) && buttonOneText.text == fourthNumber.text {
                runOrNot -= 1
            }
        }
        
    }
    
    @IBAction func buttonTwoDown(sender: AnyObject) {
        
        shadowOptions()
        
        if runOrNot == 4 {
                if buttonTwoText.text == firstNumber.text && buttonTwoLabel.backgroundColor!.isEqual(firstNumber.backgroundColor){
                    scoreKeep += 1
                    correctAnswer()
                    // green color button - correct coice
                    buttonTwoLabel.backgroundColor = UIColor(netHex: 0x88C425)
                    firstNumber.backgroundColor = UIColor(netHex: 0x88C425)
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
                if buttonTwoText.text == secondNumber.text && buttonTwoLabel.backgroundColor!.isEqual(secondNumber.backgroundColor){
                    scoreKeep += 1
                    correctAnswer()
                    // green color button - correct coice
                    buttonTwoLabel.backgroundColor = UIColor(netHex: 0x88C425)
                    secondNumber.backgroundColor = UIColor(netHex: 0x88C425)
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
                if buttonTwoText.text == thirdNumber.text && buttonTwoLabel.backgroundColor!.isEqual(thirdNumber.backgroundColor){
                    scoreKeep += 1
                    correctAnswer()
                    // green color button - correct coice
                    buttonTwoLabel.backgroundColor = UIColor(netHex: 0x88C425)
                    thirdNumber.backgroundColor = UIColor(netHex: 0x88C425)
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
                if buttonTwoText.text == fourthNumber.text && buttonTwoLabel.backgroundColor!.isEqual(fourthNumber.backgroundColor){
                    scoreKeep += 1
                    correctAnswer()
                    // green color button - correct coice
                    buttonTwoLabel.backgroundColor = UIColor(netHex: 0x88C425)
                    fourthNumber.backgroundColor = UIColor(netHex: 0x88C425)
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
            if buttonTwoLabel.backgroundColor!.isEqual(firstNumber.backgroundColor) && buttonTwoText.text == firstNumber.text{
                runOrNot -= 1
            }
        }
        
        if runOrNot == 3 {
            if buttonTwoLabel.backgroundColor!.isEqual(secondNumber.backgroundColor) && buttonTwoText.text == secondNumber.text{
                runOrNot -= 1
            }
        }
        
        if runOrNot == 2 {
            if buttonTwoLabel.backgroundColor!.isEqual(thirdNumber.backgroundColor) && buttonTwoText.text == thirdNumber.text{
                runOrNot -= 1
            }
        }
        
        if runOrNot == 1 {
            if buttonTwoLabel.backgroundColor!.isEqual(fourthNumber.backgroundColor) && buttonTwoText.text == fourthNumber.text{
                runOrNot -= 1
            }
        }

    }
    
    // BUTTON #3 PRESS
    @IBAction func buttonThreeDown(sender: AnyObject) {
        
        shadowOptions()
        
        if runOrNot == 4 {
                if buttonThreeText.text == firstNumber.text && buttonThreeLabel.backgroundColor!.isEqual(firstNumber.backgroundColor){
                    scoreKeep += 1
                    correctAnswer()
                    // green color button - correct coice
                    buttonThreeLabel.backgroundColor = UIColor(netHex: 0x88C425)
                    firstNumber.backgroundColor = UIColor(netHex: 0x88C425)
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
                if buttonThreeText.text == secondNumber.text && buttonThreeLabel.backgroundColor!.isEqual(secondNumber.backgroundColor){
                    scoreKeep += 1
                    correctAnswer()
                    // green color button - correct coice
                    buttonThreeLabel.backgroundColor = UIColor(netHex: 0x88C425)
                    secondNumber.backgroundColor = UIColor(netHex: 0x88C425)
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
                if buttonThreeText.text == thirdNumber.text && buttonThreeLabel.backgroundColor!.isEqual(thirdNumber.backgroundColor){
                    scoreKeep += 1
                    correctAnswer()
                    // green color button - correct coice
                    buttonThreeLabel.backgroundColor = UIColor(netHex: 0x88C425)
                    thirdNumber.backgroundColor = UIColor(netHex: 0x88C425)
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
                if buttonThreeText.text == fourthNumber.text && buttonThreeLabel.backgroundColor!.isEqual(fourthNumber.backgroundColor){
                    scoreKeep += 1
                    correctAnswer()
                    // green color button - correct coice
                    buttonThreeLabel.backgroundColor = UIColor(netHex: 0x88C425)
                    fourthNumber.backgroundColor = UIColor(netHex: 0x88C425)
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
            if buttonThreeLabel.backgroundColor!.isEqual(firstNumber.backgroundColor) && buttonThreeText.text == firstNumber.text{
                runOrNot -= 1
            }
        }
        
        if runOrNot == 3 {
            if buttonThreeLabel.backgroundColor!.isEqual(secondNumber.backgroundColor) && buttonThreeText.text == secondNumber.text{
                runOrNot -= 1
            }
        }
        
        if runOrNot == 2 {
            if buttonThreeLabel.backgroundColor!.isEqual(thirdNumber.backgroundColor) && buttonThreeText.text == thirdNumber.text{
                runOrNot -= 1
            }
        }
        
        if runOrNot == 1 {
            if buttonThreeLabel.backgroundColor!.isEqual(fourthNumber.backgroundColor) && buttonThreeText.text == fourthNumber.text{
                runOrNot -= 1
            }
        }

    }
    
    // BUTTON #4 PRESS
    @IBAction func buttonFourDown(sender: AnyObject) {
        
        shadowOptions()
        
        if runOrNot == 4 {
                if buttonFourText.text == firstNumber.text && buttonFourLabel.backgroundColor!.isEqual(firstNumber.backgroundColor){
                    scoreKeep += 1
                    correctAnswer()
                    // green color button - correct coice
                    buttonFourLabel.backgroundColor = UIColor(netHex: 0x88C425)
                    firstNumber.backgroundColor = UIColor(netHex: 0x88C425)
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
                if buttonFourText.text == secondNumber.text && buttonFourLabel.backgroundColor!.isEqual(secondNumber.backgroundColor){
                    scoreKeep += 1
                    correctAnswer()
                    // green color button - correct coice
                    buttonFourLabel.backgroundColor = UIColor(netHex: 0x88C425)
                    secondNumber.backgroundColor = UIColor(netHex: 0x88C425)
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
                if buttonFourText.text == thirdNumber.text && buttonFourLabel.backgroundColor!.isEqual(thirdNumber.backgroundColor){
                    scoreKeep += 1
                    correctAnswer()
                    // green color button - correct coice
                    buttonFourLabel.backgroundColor = UIColor(netHex: 0x88C425)
                    thirdNumber.backgroundColor = UIColor(netHex: 0x88C425)
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
                if buttonFourText.text == fourthNumber.text && buttonFourLabel.backgroundColor!.isEqual(fourthNumber.backgroundColor){
                    scoreKeep += 1
                    correctAnswer()
                    // green color button - correct coice
                    buttonFourLabel.backgroundColor = UIColor(netHex: 0x88C425)
                    fourthNumber.backgroundColor = UIColor(netHex: 0x88C425)
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
            if buttonFourLabel.backgroundColor!.isEqual(firstNumber.backgroundColor) && buttonFourText.text == firstNumber.text{
                runOrNot -= 1
            }
        }
        
        if runOrNot == 3 {
            if buttonFourLabel.backgroundColor!.isEqual(secondNumber.backgroundColor) && buttonFourText.text == secondNumber.text{
                runOrNot -= 1
            }
        }
        
        if runOrNot == 2 {
            if buttonFourLabel.backgroundColor!.isEqual(thirdNumber.backgroundColor) && buttonFourText.text == thirdNumber.text{
                runOrNot -= 1
            }
        }
        
        if runOrNot == 1 {
            if buttonFourLabel.backgroundColor!.isEqual(fourthNumber.backgroundColor) && buttonFourText.text == fourthNumber.text{
                runOrNot -= 1
            }
        }
        
    }

    // BUTTON #5 PRESS
    @IBAction func buttonFiveDown(sender: AnyObject) {
        
        shadowOptions()
        
        if runOrNot == 4 {
                if buttonFiveText.text == firstNumber.text && buttonFiveLabel.backgroundColor!.isEqual(firstNumber.backgroundColor){
                    scoreKeep += 1
                    correctAnswer()
                    // green color button - correct coice
                    buttonFiveLabel.backgroundColor = UIColor(netHex: 0x88C425)
                    firstNumber.backgroundColor = UIColor(netHex: 0x88C425)
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
                if buttonFiveText.text == secondNumber.text && buttonFiveLabel.backgroundColor!.isEqual(secondNumber.backgroundColor){
                    scoreKeep += 1
                    correctAnswer()
                    // green color button - correct coice
                    buttonFiveLabel.backgroundColor = UIColor(netHex: 0x88C425)
                    secondNumber.backgroundColor = UIColor(netHex: 0x88C425)
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
                if buttonFiveText.text == thirdNumber.text && buttonFiveLabel.backgroundColor!.isEqual(thirdNumber.backgroundColor){
                    scoreKeep += 1
                    correctAnswer()
                    // green color button - correct coice
                    buttonFiveLabel.backgroundColor = UIColor(netHex: 0x88C425)
                    thirdNumber.backgroundColor = UIColor(netHex: 0x88C425)
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
                if buttonFiveText.text == fourthNumber.text && buttonFiveLabel.backgroundColor!.isEqual(fourthNumber.backgroundColor){
                    scoreKeep += 1
                    correctAnswer()
                    // green color button - correct coice
                    buttonFiveLabel.backgroundColor = UIColor(netHex: 0x88C425)
                    fourthNumber.backgroundColor = UIColor(netHex: 0x88C425)
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
            if buttonFiveLabel.backgroundColor!.isEqual(firstNumber.backgroundColor) && buttonFiveText.text == firstNumber.text{
                runOrNot -= 1
            }
        }
        
        if runOrNot == 3 {
            if buttonFiveLabel.backgroundColor!.isEqual(secondNumber.backgroundColor) && buttonFiveText.text == secondNumber.text{
                runOrNot -= 1
            }
        }
        
        if runOrNot == 2 {
            if buttonFiveLabel.backgroundColor!.isEqual(thirdNumber.backgroundColor) && buttonFiveText.text == thirdNumber.text{
                runOrNot -= 1
            }
        }
        
        if runOrNot == 1 {
            if buttonFiveLabel.backgroundColor!.isEqual(fourthNumber.backgroundColor) && buttonFiveText.text == fourthNumber.text{
                runOrNot -= 1
            }
        }

    }
    
    // BUTTON #6 PRESS
    @IBAction func buttonSixDown(sender: AnyObject) {
        
        shadowOptions()
        
        if runOrNot == 4 {
                if buttonSixText.text == firstNumber.text && buttonSixLabel.backgroundColor!.isEqual(firstNumber.backgroundColor){
                    scoreKeep += 1
                    correctAnswer()
                    // green color button - correct coice
                    buttonSixLabel.backgroundColor = UIColor(netHex: 0x88C425)
                    firstNumber.backgroundColor = UIColor(netHex: 0x88C425)
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
                if buttonSixText.text == secondNumber.text && buttonSixLabel.backgroundColor!.isEqual(secondNumber.backgroundColor){
                    scoreKeep += 1
                    correctAnswer()
                    // green color button - correct coice
                    buttonSixLabel.backgroundColor = UIColor(netHex: 0x88C425)
                    secondNumber.backgroundColor = UIColor(netHex: 0x88C425)
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
                if buttonSixText.text == thirdNumber.text && buttonSixLabel.backgroundColor!.isEqual(thirdNumber.backgroundColor){
                    scoreKeep += 1
                    correctAnswer()
                    // green color button - correct coice
                    buttonSixLabel.backgroundColor = UIColor(netHex: 0x88C425)
                    thirdNumber.backgroundColor = UIColor(netHex: 0x88C425)
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
                if buttonSixText.text == fourthNumber.text && buttonSixLabel.backgroundColor!.isEqual(fourthNumber.backgroundColor){
                    scoreKeep += 1
                    correctAnswer()
                    // green color button - correct coice
                    buttonSixLabel.backgroundColor = UIColor(netHex: 0x88C425)
                    fourthNumber.backgroundColor = UIColor(netHex: 0x88C425)
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
            if buttonSixLabel.backgroundColor!.isEqual(firstNumber.backgroundColor) && buttonSixText.text == firstNumber.text{
                runOrNot -= 1
            }
        }
        
        if runOrNot == 3 {
            if buttonSixLabel.backgroundColor!.isEqual(secondNumber.backgroundColor) && buttonSixText.text == secondNumber.text{
                runOrNot -= 1
            }
        }
        
        if runOrNot == 2 {
            if buttonSixLabel.backgroundColor!.isEqual(thirdNumber.backgroundColor) && buttonSixText.text == thirdNumber.text{
                runOrNot -= 1
            }
        }
        
        if runOrNot == 1 {
            if buttonSixLabel.backgroundColor!.isEqual(fourthNumber.backgroundColor) && buttonSixText.text == fourthNumber.text{
                runOrNot -= 1
            }
        }

    }
    
    // BUTTON #7 PRESS
    @IBAction func buttonSevenDown(sender: AnyObject) {
        
        shadowOptions()
        
        if runOrNot == 4 {
                if buttonSevenText.text == firstNumber.text && buttonSevenLabel.backgroundColor!.isEqual(firstNumber.backgroundColor){
                    scoreKeep += 1
                    correctAnswer()
                    // green color button - correct coice
                    buttonSevenLabel.backgroundColor = UIColor(netHex: 0x88C425)
                    firstNumber.backgroundColor = UIColor(netHex: 0x88C425)
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
                if buttonSevenText.text == secondNumber.text && buttonSevenLabel.backgroundColor!.isEqual(secondNumber.backgroundColor){
                    scoreKeep += 1
                    correctAnswer()
                    // green color button - correct coice
                    buttonSevenLabel.backgroundColor = UIColor(netHex: 0x88C425)
                    secondNumber.backgroundColor = UIColor(netHex: 0x88C425)
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
                if buttonSevenText.text == thirdNumber.text && buttonSevenLabel.backgroundColor!.isEqual(thirdNumber.backgroundColor){
                    scoreKeep += 1
                    correctAnswer()
                    // green color button - correct coice
                    buttonSevenLabel.backgroundColor = UIColor(netHex: 0x88C425)
                    thirdNumber.backgroundColor = UIColor(netHex: 0x88C425)
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
                if buttonSevenText.text == fourthNumber.text && buttonSevenLabel.backgroundColor!.isEqual(fourthNumber.backgroundColor){
                    scoreKeep += 1
                    correctAnswer()
                    // green color button - correct coice
                    buttonSevenLabel.backgroundColor = UIColor(netHex: 0x88C425)
                    fourthNumber.backgroundColor = UIColor(netHex: 0x88C425)
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
            if buttonSevenLabel.backgroundColor!.isEqual(firstNumber.backgroundColor) && buttonSevenText.text == firstNumber.text{
                runOrNot -= 1
            }
        }
        
        if runOrNot == 3 {
            if buttonSevenLabel.backgroundColor!.isEqual(secondNumber.backgroundColor) && buttonSevenText.text == secondNumber.text{
                runOrNot -= 1
            }
        }
        
        if runOrNot == 2 {
            if buttonSevenLabel.backgroundColor!.isEqual(thirdNumber.backgroundColor) && buttonSevenText.text == thirdNumber.text{
                runOrNot -= 1
            }
        }
        
        if runOrNot == 1 {
            if buttonSevenLabel.backgroundColor!.isEqual(fourthNumber.backgroundColor) && buttonSevenText.text == fourthNumber.text{
                runOrNot -= 1
            }
        }

    }
    
    // BUTTON #8 PRESS
    @IBAction func buttonEightDown(sender: AnyObject) {
        
        shadowOptions()
        
        if runOrNot == 4 {
                if buttonEightText.text == firstNumber.text && buttonEightLabel.backgroundColor!.isEqual(firstNumber.backgroundColor){
                    scoreKeep += 1
                    correctAnswer()
                    // green color button - correct coice
                    buttonEightLabel.backgroundColor = UIColor(netHex: 0x88C425)
                    firstNumber.backgroundColor = UIColor(netHex: 0x88C425)
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
                if buttonEightText.text == secondNumber.text && buttonEightLabel.backgroundColor!.isEqual(secondNumber.backgroundColor){
                    scoreKeep += 1
                    correctAnswer()
                    // green color button - correct coice
                    buttonEightLabel.backgroundColor = UIColor(netHex: 0x88C425)
                    secondNumber.backgroundColor = UIColor(netHex: 0x88C425)
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
                if buttonEightText.text == thirdNumber.text && buttonEightLabel.backgroundColor!.isEqual(thirdNumber.backgroundColor){
                    scoreKeep += 1
                    correctAnswer()
                    // green color button - correct coice
                    buttonEightLabel.backgroundColor = UIColor(netHex: 0x88C425)
                    thirdNumber.backgroundColor = UIColor(netHex: 0x88C425)
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
                if buttonEightText.text == fourthNumber.text && buttonEightLabel.backgroundColor!.isEqual(fourthNumber.backgroundColor){
                    scoreKeep += 1
                    correctAnswer()
                    // green color button - correct coice
                    buttonEightLabel.backgroundColor = UIColor(netHex: 0x88C425)
                    fourthNumber.backgroundColor = UIColor(netHex: 0x88C425)
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
            if buttonEightLabel.backgroundColor!.isEqual(firstNumber.backgroundColor) && buttonEightText.text == firstNumber.text{
                runOrNot -= 1
            }
        }
        
        if runOrNot == 3 {
            if buttonEightLabel.backgroundColor!.isEqual(secondNumber.backgroundColor) && buttonEightText.text == secondNumber.text{
                runOrNot -= 1
            }
        }
        
        if runOrNot == 2 {
            if buttonEightLabel.backgroundColor!.isEqual(thirdNumber.backgroundColor) && buttonEightText.text == thirdNumber.text{
                runOrNot -= 1
            }
        }
        
        if runOrNot == 1 {
            if buttonEightLabel.backgroundColor!.isEqual(fourthNumber.backgroundColor) && buttonEightText.text == fourthNumber.text{
                runOrNot -= 1
            }
        }

    }
    
    // BUTTON #9 PRESS
    @IBAction func buttonNineDown(sender: AnyObject) {
        
        shadowOptions()
        
        if runOrNot == 4 {
                if buttonNineText.text == firstNumber.text && buttonNineLabel.backgroundColor!.isEqual(firstNumber.backgroundColor){
                    scoreKeep += 1
                    correctAnswer()
                    // green color button - correct coice
                    buttonNineLabel.backgroundColor = UIColor(netHex: 0x88C425)
                    firstNumber.backgroundColor = UIColor(netHex: 0x88C425)
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
                if buttonNineText.text == secondNumber.text && buttonNineLabel.backgroundColor!.isEqual(secondNumber.backgroundColor){
                    scoreKeep += 1
                    correctAnswer()
                    // green color button - correct coice
                    buttonNineLabel.backgroundColor = UIColor(netHex: 0x88C425)
                    secondNumber.backgroundColor = UIColor(netHex: 0x88C425)
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
                if buttonNineText.text == thirdNumber.text && buttonNineLabel.backgroundColor!.isEqual(thirdNumber.backgroundColor){
                    scoreKeep += 1
                    correctAnswer()
                    // green color button - correct coice
                    buttonNineLabel.backgroundColor = UIColor(netHex: 0x88C425)
                    thirdNumber.backgroundColor = UIColor(netHex: 0x88C425)
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
                if buttonNineText.text == fourthNumber.text && buttonNineLabel.backgroundColor!.isEqual(fourthNumber.backgroundColor){
                    scoreKeep += 1
                    correctAnswer()
                    // green color button - correct coice
                    buttonNineLabel.backgroundColor = UIColor(netHex: 0x88C425)
                    fourthNumber.backgroundColor = UIColor(netHex: 0x88C425)
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
            if buttonNineLabel.backgroundColor!.isEqual(firstNumber.backgroundColor) && buttonNineText.text == firstNumber.text{
                runOrNot -= 1
                
            }
        }
        
        if runOrNot == 3 {
            if buttonNineLabel.backgroundColor!.isEqual(secondNumber.backgroundColor) && buttonNineText.text == secondNumber.text{
                runOrNot -= 1
            }
        }
        
        if runOrNot == 2 {
            if buttonNineLabel.backgroundColor!.isEqual(thirdNumber.backgroundColor) && buttonNineText.text == thirdNumber.text{
                runOrNot -= 1
            }
        }
        
        if runOrNot == 1 {
            if buttonNineLabel.backgroundColor!.isEqual(fourthNumber.backgroundColor) && buttonNineText.text == fourthNumber.text{
                runOrNot -= 1
            }
        }

    }

    // when back button is pressed, stop background music
    @IBAction func backOption(sender: AnyObject) {
        backgroundMusicPlayer.stop()
    }
    
    
    
    
    
    
    
    

} // end




