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

    
    func pressButtonCorrectSound2() {
        
        do {
            self.buttonPressCorrectSound =  try AVAudioPlayer(contentsOfURL: NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("buttonCorrect", ofType: "mp3")!))
            self.buttonPressCorrectSound.play()
            
            
        } catch {
            print("Error")
        }
        buttonPressCorrectSound.volume = 0.5
    }
    
    func compareButtonsDown(buttonToCompare:GenerateButton, buttonColor:UIButton, buttonGreen:UILabel, topButOne:GenerateButton, green1:UILabel, topButTwo:GenerateButton, green2:UILabel,  topButThree:GenerateButton, green3:UILabel, topButFour:GenerateButton, green4:UILabel){

        
        func correctAns(){
            pressButtonCorrectSound2()
            scoreKeep += 1
            buttonGreen.hidden = false
            delay(0.5){
                buttonGreen.hidden = true
            }
        }
        
        if runner == 4{
            if buttonToCompare.back == topButOne.back && buttonToCompare.symb == topButOne.symb{
                correctAns()
            } else{
            }
        }
        
        if runner == 3{
            if buttonToCompare.labelcolor == topButTwo.labelcolor && buttonToCompare.symb == topButTwo.symb{
                correctAns()
            } else{
            }
        }
        
        if runner == 2{
            if buttonToCompare.labelcolor == topButThree.labelcolor && buttonToCompare.symb == topButThree.symb{
                correctAns()
            } else{
            }
        }
        
        if runner == 1{
            if buttonToCompare.labelcolor == topButFour.labelcolor && buttonToCompare.symb == topButFour.symb{
                correctAns()
            } else{
            }
        }

    } // END compareButtonsDown
    
    func compareButtonsRelease(buttonToCompare:GenerateButton, buttonColor:UIButton, buttonGreen:UILabel, topButOne:GenerateButton, green1:UILabel, topButTwo:GenerateButton, green2:UILabel,  topButThree:GenerateButton, green3:UILabel, topButFour:GenerateButton, green4:UILabel){

        func changeTrueOrNot(){
            if runner == 4{
                green1.hidden = false
            }
            if runner == 3{
                green2.hidden = false
            }
            if runner == 2{
                green3.hidden = false
            }
            if runner == 1{
                green4.hidden = false
            }
            runner -= 1

        }
        
        if runner == 4{
            if buttonToCompare.back == topButOne.back && buttonToCompare.symb == topButOne.symb{
                changeTrueOrNot()
            }
        }
        
        
        if runner == 3{
            if buttonToCompare.back == topButTwo.back && buttonToCompare.symb == topButTwo.symb{
                changeTrueOrNot()
            }
        }
        
        if runner == 2{
            if buttonToCompare.back == topButThree.back && buttonToCompare.symb == topButThree.symb{
                changeTrueOrNot()
            }
        }
        
        
        if runner == 1{
            if buttonToCompare.back == topButFour.back && buttonToCompare.symb == topButFour.symb{
                changeTrueOrNot()
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

