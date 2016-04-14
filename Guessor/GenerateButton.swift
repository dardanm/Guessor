//
//  TopButton.swift
//  Guessor
//
//  Created by Dardan on 4/12/16.
//  Copyright © 2016 Meha. All rights reserved.
//

import Foundation
import UIKit
import AVFoundation
import QuartzCore


class GenerateButton : BaseLevel {

    var greentop1: UILabel?
    var greentop2: UILabel?
    var greentop3: UILabel?
    var greentop4: UILabel?
    
    var symb:Int = 0
    var back:Int = 0
    var labelcolor:UILabel?
    
    var cane: UIImageView?
    var candy: UIImageView?
    var pop: UIImageView?
    var label: UILabel?
    
    var runner: Int = 4

    var topButOneTemp:GenerateButton?
    var topButTwoTemp:GenerateButton?
    var topButThreeTemp:GenerateButton?
    var topButFourTemp:GenerateButton?
    var green1:UILabel?
    var green2:UILabel?
    var green3:UILabel?
    var green4:UILabel?
    
    
    // Update top button image
    func randomImage(cane:UIImageView, candy:UIImageView, pop:UIImageView){
        value = Int(arc4random_uniform(3) + 1)
        switch value {
        case 1: symb = 1
        case 2: symb = 2
        case 3: symb = 3
        default: symb = 10
        }
        if symb == 1 {
            cane.hidden = false
            candy.hidden = true
            pop.hidden = true
        }
        if symb == 2 {
            cane.hidden = true
            candy.hidden = false
            pop.hidden = true
        }
        if symb == 3 {
            cane.hidden = true
            candy.hidden = true
            pop.hidden = false
        }
    }
    
    // BACKGROUND COLOR
    func randomColor(labelcolor:UILabel){
        value = Int(arc4random_uniform(4) + 1)
        switch value {
        case 1: back = 1
        case 2: back = 2
        case 3: back = 3
        case 4: back = 4
        default: back = 10
        }
        if back == 1 {
            labelcolor.backgroundColor = UIColor(netHex: 0x99e1c3)
        }
        if back == 2 {
            labelcolor.backgroundColor = UIColor(netHex: 0xf7b220)
        }
        if back == 3 {
            labelcolor.backgroundColor = UIColor(netHex: 0xf77c2c)
        }
        if back == 4 {
            labelcolor.backgroundColor = UIColor(netHex: 0xa7cfff)
        }
    }
    // BACKGROUND COLOR
    func randomColorBottom(labelcolor:UIButton){
        value = Int(arc4random_uniform(4) + 1)
        switch value {
        case 1: back = 1
        case 2: back = 2
        case 3: back = 3
        case 4: back = 4
        default: back = 10
        }
        if back == 1 {
            labelcolor.backgroundColor = UIColor(netHex: 0x99e1c3)
        }
        if back == 2 {
            labelcolor.backgroundColor = UIColor(netHex: 0xf7b220)
        }
        if back == 3 {
            labelcolor.backgroundColor = UIColor(netHex: 0xf77c2c)
        }
        if back == 4 {
            labelcolor.backgroundColor = UIColor(netHex: 0xa7cfff)
        }
    }

    
//    func pressButtonCorrectSound2() {
//        
//        do {
//            self.buttonPressCorrectSound =  try AVAudioPlayer(contentsOfURL: NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("buttonCorrect", ofType: "mp3")!))
//            self.buttonPressCorrectSound.play()
//            
//            
//        } catch {
//            print("Error")
//        }
//        buttonPressCorrectSound.volume = 0.5
//    }
    


    
    func getButtonInfo(topButOne:GenerateButton, green1Temp:UILabel, topButTwo:GenerateButton, green2Temp:UILabel,  topButThree:GenerateButton, green3Temp:UILabel, topButFour:GenerateButton, green4Temp:UILabel){
        topButOneTemp = topButOne
        topButTwoTemp = topButTwo
        topButThreeTemp = topButThree
        topButFourTemp = topButFour
        green1 = green1Temp
        green2 = green2Temp
        green3 = green3Temp
        green4 = green4Temp
    }
    

    
    func compareButtonsDown(buttonToCompare:GenerateButton, buttonColor:UIButton, buttonGreen:UILabel, buttonRed:UILabel){


        func correctAns(){
            pressButtonCorrectSound()
            scoreKeep += 1
            buttonGreen.hidden = false
            delay(0.5){
                buttonGreen.hidden = true
            }
        }
        func incorrectAns(){
            pressButtonCorrectSound()
            
            lives -= 1
            buttonRed.hidden = false
            delay(0.5){
                buttonRed.hidden = true
            }
        }
        
        if runner == 4{
            if buttonToCompare.back == topButOneTemp!.back && buttonToCompare.symb == topButOneTemp!.symb{
                correctAns()
            } else{
                incorrectAns()
            }
        }
        
        if runner == 3{
            if buttonToCompare.labelcolor == topButTwoTemp!.labelcolor && buttonToCompare.symb == topButTwoTemp!.symb{
                correctAns()
            } else{
                incorrectAns()
            }
        }
        
        if runner == 2{
            if buttonToCompare.labelcolor == topButThreeTemp!.labelcolor && buttonToCompare.symb == topButThreeTemp!.symb{
                correctAns()
            } else{
                incorrectAns()
            }
        }
        
        if runner == 1{
            if buttonToCompare.labelcolor == topButFourTemp!.labelcolor && buttonToCompare.symb == topButFourTemp!.symb{
                correctAns()
            } else{
                incorrectAns()
            }
        }

    } // END compareButtonsDown
    
    func compareButtonsRelease(buttonToCompare:GenerateButton, buttonColor:UIButton, buttonGreen:UILabel, buttonRed:UILabel){

        func changeTrueOrNot(){
            if runner == 4{
                green1!.hidden = false
            }
            if runner == 3{
                green2!.hidden = false
            }
            if runner == 2{
                green3!.hidden = false
            }
            if runner == 1{
                green4!.hidden = false
            }
            runner -= 1

        }
        
        if runner == 4{
            if buttonToCompare.back == topButOneTemp!.back && buttonToCompare.symb == topButOneTemp!.symb{
                changeTrueOrNot()
            }
        }
        
        
        if runner == 3{
            if buttonToCompare.back == topButTwoTemp!.back && buttonToCompare.symb == topButTwoTemp!.symb{
                changeTrueOrNot()
            }
        }
        
        if runner == 2{
            if buttonToCompare.back == topButThreeTemp!.back && buttonToCompare.symb == topButThreeTemp!.symb{
                changeTrueOrNot()
            }
        }
        
        
        if runner == 1{
            if buttonToCompare.back == topButFourTemp!.back && buttonToCompare.symb == topButFourTemp!.symb{
                changeTrueOrNot()
            }
        }
        
        // clear green top colors
        if self.runner == 0{
            runner = 4
            delay(1.5){
            self.green1?.hidden = true
            self.green2?.hidden = true
            self.green3?.hidden = true
            self.green4?.hidden = true
        }
        }
        
        print("runner \(runner)")
        
    } // END compareButtonsDown
    

    
    func numberCheckTop(topButton:GenerateButton){
        
        if
            (
                    !(topButton.symb == botButton1.symb && topButton.back == botButton1.back) &&
                    !(topButton.symb == botButton2.symb && topButton.back == botButton2.back) &&
                    !(topButton.symb == botButton3.symb && topButton.back == botButton3.back) &&
                    !(topButton.symb == botButton4.symb && topButton.back == botButton4.back) &&
                    !(topButton.symb == botButton5.symb && topButton.back == botButton5.back) &&
                    !(topButton.symb == botButton6.symb && topButton.back == botButton6.back) &&
                    !(topButton.symb == botButton7.symb && topButton.back == botButton7.back) &&
                    !(topButton.symb == botButton8.symb && topButton.back == botButton8.back) &&
                    !(topButton.symb == botButton9.symb && topButton.back == botButton9.back)
            )
        {trueOrNot = false}
        
        
    }
    
    
    ///// generate
    func generateTopAndBottomButtons(){
        
        // top buttons
        button1.randomImage(self.caneN1, candy: self.candyN1, pop: self.popN1)
        button2.randomImage(self.caneN2, candy: self.candyN2, pop: self.popN2)
        button3.randomImage(self.caneN3, candy: self.candyN3, pop: self.popN3)
        button4.randomImage(self.caneN4, candy: self.candyN4, pop: self.popN4)
        button1.randomColor(self.topOneLabelColor)
        button2.randomColor(self.topTwoLabelColor)
        button3.randomColor(self.topThreeLabelColor)
        button4.randomColor(self.topFourLabelColor)
        
        // bottom buttons
        botButton1.randomImage(self.caneB1, candy: self.candyB1, pop: self.popB1)
        botButton1.randomColorBottom(self.botOneButtonColor)
        botButton2.randomImage(self.caneB2, candy: self.candyB2, pop: self.popB2)
        botButton2.randomColorBottom(self.botTwoButtonColor)
        botButton3.randomImage(self.caneB3, candy: self.candyB3, pop: self.popB3)
        botButton3.randomColorBottom(self.botThreeButtonColor)
        botButton4.randomImage(self.caneB4, candy: self.candyB4, pop: self.popB4)
        botButton4.randomColorBottom(self.botFourButtonColor)
        botButton5.randomImage(self.caneB5, candy: self.candyB5, pop: self.popB5)
        botButton5.randomColorBottom(self.botFiveButtonColor)
        botButton6.randomImage(self.caneB6, candy: self.candyB6, pop: self.popB6)
        botButton6.randomColorBottom(self.botSixButtonColor)
        botButton7.randomImage(self.caneB7, candy: self.candyB7, pop: self.popB7)
        botButton7.randomColorBottom(self.botSevenButtonColor)
        botButton8.randomImage(self.caneB8, candy: self.candyB8, pop: self.popB8)
        botButton8.randomColorBottom(self.botEightButtonColor)
        botButton9.randomImage(self.caneB9, candy: self.candyB9, pop: self.popB9)
        botButton9.randomColorBottom(self.botNineButtonColor)
        
    }
    
    func generateTopButtons(){
        
        // top buttons
        button1.randomImage(self.caneN1, candy: self.candyN1, pop: self.popN1)
        button2.randomImage(self.caneN2, candy: self.candyN2, pop: self.popN2)
        button3.randomImage(self.caneN3, candy: self.candyN3, pop: self.popN3)
        button4.randomImage(self.caneN4, candy: self.candyN4, pop: self.popN4)
        button1.randomColor(self.topOneLabelColor)
        button2.randomColor(self.topTwoLabelColor)
        button3.randomColor(self.topThreeLabelColor)
        button4.randomColor(self.topFourLabelColor)
        
    }
    
    func generateBottomButtons(){
        
        // bottom buttons
        botButton1.randomImage(self.caneB1, candy: self.candyB1, pop: self.popB1)
        botButton1.randomColorBottom(self.botOneButtonColor)
        botButton2.randomImage(self.caneB2, candy: self.candyB2, pop: self.popB2)
        botButton2.randomColorBottom(self.botTwoButtonColor)
        botButton3.randomImage(self.caneB3, candy: self.candyB3, pop: self.popB3)
        botButton3.randomColorBottom(self.botThreeButtonColor)
        botButton4.randomImage(self.caneB4, candy: self.candyB4, pop: self.popB4)
        botButton4.randomColorBottom(self.botFourButtonColor)
        botButton5.randomImage(self.caneB5, candy: self.candyB5, pop: self.popB5)
        botButton5.randomColorBottom(self.botFiveButtonColor)
        botButton6.randomImage(self.caneB6, candy: self.candyB6, pop: self.popB6)
        botButton6.randomColorBottom(self.botSixButtonColor)
        botButton7.randomImage(self.caneB7, candy: self.candyB7, pop: self.popB7)
        botButton7.randomColorBottom(self.botSevenButtonColor)
        botButton8.randomImage(self.caneB8, candy: self.candyB8, pop: self.popB8)
        botButton8.randomColorBottom(self.botEightButtonColor)
        botButton9.randomImage(self.caneB9, candy: self.candyB9, pop: self.popB9)
        botButton9.randomColorBottom(self.botNineButtonColor)
        
    }
    
    
    
    
} // END CLASS


let button1 = GenerateButton()
let button2 = GenerateButton()
let button3 = GenerateButton()
let button4 = GenerateButton()

let botButton1 = GenerateButton()
let botButton2 = GenerateButton()
let botButton3 = GenerateButton()
let botButton4 = GenerateButton()
let botButton5 = GenerateButton()
let botButton6 = GenerateButton()
let botButton7 = GenerateButton()
let botButton8 = GenerateButton()
let botButton9 = GenerateButton()

let compare = GenerateButton()

