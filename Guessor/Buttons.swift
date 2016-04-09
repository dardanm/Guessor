//
//  Buttons.swift
//  Guessor
//
//  Created by Dardan on 3/19/16.
//  Copyright © 2016 Meha. All rights reserved.
//

import UIKit
import AVFoundation
import QuartzCore

extension BaseLevel {
    
    // ========= GUI / BUTTONS
    

    
//    func disableButtons(){
//        botOneButtonColor.enabled = false
//        buttonTwoLabel.enabled = false
//        buttonThreeLabel.enabled = false
//        buttonFourLabel.enabled = false
//        buttonFiveLabel.enabled = false
//        buttonSixLabel.enabled = false
//        buttonSevenLabel.enabled = false
//        buttonEightLabel.enabled = false
//        buttonNineLabel.enabled = false
//        generateLabel.enabled = false
//    }
//    
//    func enableButtons(){
//        buttonOneLabel.enabled = true
//        buttonTwoLabel.enabled = true
//        buttonThreeLabel.enabled = true
//        buttonFourLabel.enabled = true
//        buttonFiveLabel.enabled = true
//        buttonSixLabel.enabled = true
//        buttonSevenLabel.enabled = true
//        buttonEightLabel.enabled = true
//        buttonNineLabel.enabled = true
//        generateLabel.enabled = true
//    }
//
//    // number one top
//    func numberOneOptionsColors(){
//        value = Int(arc4random_uniform(4) + 1)
//        switch value {
//        case 1: numberOneLabel.backgroundColor = UIColor(netHex: 0x99e1c3)
//        case 2: numberOneLabel.backgroundColor = UIColor(netHex: 0xf7b220)
//        case 3: numberOneLabel.backgroundColor = UIColor(netHex: 0xf77c2c)
//        case 4: numberOneLabel.backgroundColor = UIColor(netHex: 0xa7cfff)
//        default: numberOneLabel.backgroundColor = UIColor(netHex: 0xA8330C)
//        }
//    }
//    
//    // number two top
//    func numberTwoOptionsColors(){
//        value = Int(arc4random_uniform(4) + 1)
//        switch value {
//        case 1: numberTwoLabel.backgroundColor = UIColor(netHex: 0x99e1c3)
//        case 2: numberTwoLabel.backgroundColor = UIColor(netHex: 0xf7b220)
//        case 3: numberTwoLabel.backgroundColor = UIColor(netHex: 0xf77c2c)
//        case 4: numberTwoLabel.backgroundColor = UIColor(netHex: 0xa7cfff)
//        default: numberTwoLabel.backgroundColor = UIColor(netHex: 0xA8330C)
//        }
//    }
//    
//    // number three top
//    func numberThreeOptionsColors(){
//        value = Int(arc4random_uniform(4) + 1)
//        switch value {
//        case 1: numberThreeLabel.backgroundColor = UIColor(netHex: 0x99e1c3)
//        case 2: numberThreeLabel.backgroundColor = UIColor(netHex: 0xf7b220)
//        case 3: numberThreeLabel.backgroundColor = UIColor(netHex: 0xf77c2c)
//        case 4: numberThreeLabel.backgroundColor = UIColor(netHex: 0xa7cfff)
//        default: numberThreeLabel.backgroundColor = UIColor(netHex: 0xA8330C)
//        }
//    }
//    
//    // number four top
//    func numberFourOptionsColors(){
//        value = Int(arc4random_uniform(4) + 1)
//        switch value {
//        case 1: numberFourLabel.backgroundColor = UIColor(netHex: 0x99e1c3)
//        case 2: numberFourLabel.backgroundColor = UIColor(netHex: 0xf7b220)
//        case 3: numberFourLabel.backgroundColor = UIColor(netHex: 0xf77c2c)
//        case 4: numberFourLabel.backgroundColor = UIColor(netHex: 0xa7cfff)
//        default: numberFourLabel.backgroundColor = UIColor(netHex: 0xA8330C)
//        }
//    }
//    
//    
//
//    
//    // button one random colors
//    func buttonOneOptionsColors(){
//        value = Int(arc4random_uniform(4) + 1)
//        switch value {
//        case 1: buttonOneLabel.backgroundColor = UIColor(netHex: 0x99e1c3)
//        case 2: buttonOneLabel.backgroundColor = UIColor(netHex: 0xf7b220)
//        case 3: buttonOneLabel.backgroundColor = UIColor(netHex: 0xf77c2c)
//        case 4: buttonOneLabel.backgroundColor = UIColor(netHex: 0xa7cfff)
//        default: buttonOneLabel.backgroundColor = UIColor(netHex: 0xA8330C)
//        }
//    }
//    // button two random colors
//    func buttonTwoOptionsColors(){
//        value = Int(arc4random_uniform(4) + 1)
//        switch value {
//        case 1: buttonTwoLabel.backgroundColor = UIColor(netHex: 0x99e1c3)
//        case 2: buttonTwoLabel.backgroundColor = UIColor(netHex: 0xf7b220)
//        case 3: buttonTwoLabel.backgroundColor = UIColor(netHex: 0xf77c2c)
//        case 4: buttonTwoLabel.backgroundColor = UIColor(netHex: 0xa7cfff)
//        default: buttonTwoLabel.backgroundColor = UIColor(netHex: 0xA8330C)
//        }
//    }
//    // button three random colors
//    func buttonThreeOptionsColors(){
//        value = Int(arc4random_uniform(4) + 1)
//        switch value {
//        case 1: buttonThreeLabel.backgroundColor = UIColor(netHex: 0x99e1c3)
//        case 2: buttonThreeLabel.backgroundColor = UIColor(netHex: 0xf7b220)
//        case 3: buttonThreeLabel.backgroundColor = UIColor(netHex: 0xf77c2c)
//        case 4: buttonThreeLabel.backgroundColor = UIColor(netHex: 0xa7cfff)
//        default: buttonThreeLabel.backgroundColor = UIColor(netHex: 0xA8330C)
//        }
//    }
//    // button four random colors
//    func buttonFourOptionsColors(){
//        value = Int(arc4random_uniform(4) + 1)
//        switch value {
//        case 1: buttonFourLabel.backgroundColor = UIColor(netHex: 0x99e1c3)
//        case 2: buttonFourLabel.backgroundColor = UIColor(netHex: 0xf7b220)
//        case 3: buttonFourLabel.backgroundColor = UIColor(netHex: 0xf77c2c)
//        case 4: buttonFourLabel.backgroundColor = UIColor(netHex: 0xa7cfff)
//        default: buttonFourLabel.backgroundColor = UIColor(netHex: 0xA8330C)
//        }
//    }
//    // button five random colors
//    func buttonFiveOptionsColors(){
//        value = Int(arc4random_uniform(4) + 1)
//        switch value {
//        case 1: buttonFiveLabel.backgroundColor = UIColor(netHex: 0x99e1c3)
//        case 2: buttonFiveLabel.backgroundColor = UIColor(netHex: 0xf7b220)
//        case 3: buttonFiveLabel.backgroundColor = UIColor(netHex: 0xf77c2c)
//        case 4: buttonFiveLabel.backgroundColor = UIColor(netHex: 0xa7cfff)
//        default: buttonFiveLabel.backgroundColor = UIColor(netHex: 0xA8330C)
//        }
//    }
//    // button six random colors
//    func buttonSixOptionsColors(){
//        value = Int(arc4random_uniform(4) + 1)
//        switch value {
//        case 1: buttonSixLabel.backgroundColor = UIColor(netHex: 0x99e1c3)
//        case 2: buttonSixLabel.backgroundColor = UIColor(netHex: 0xf7b220)
//        case 3: buttonSixLabel.backgroundColor = UIColor(netHex: 0xf77c2c)
//        case 4: buttonSixLabel.backgroundColor = UIColor(netHex: 0xa7cfff)
//        default: buttonSixLabel.backgroundColor = UIColor(netHex: 0xA8330C)
//        }
//    }
//    // button seven random colors
//    func buttonSevenOptionsColors(){
//        value = Int(arc4random_uniform(4) + 1)
//        switch value {
//        case 1: buttonSevenLabel.backgroundColor = UIColor(netHex: 0x99e1c3)
//        case 2: buttonSevenLabel.backgroundColor = UIColor(netHex: 0xf7b220)
//        case 3: buttonSevenLabel.backgroundColor = UIColor(netHex: 0xf77c2c)
//        case 4: buttonSevenLabel.backgroundColor = UIColor(netHex: 0xa7cfff)
//        default: buttonSevenLabel.backgroundColor = UIColor(netHex: 0xA8330C)
//        }
//    }
//    // button eight random colors
//    func buttonEightOptionsColors(){
//        value = Int(arc4random_uniform(4) + 1)
//        switch value {
//        case 1: buttonEightLabel.backgroundColor = UIColor(netHex: 0x99e1c3)
//        case 2: buttonEightLabel.backgroundColor = UIColor(netHex: 0xf7b220)
//        case 3: buttonEightLabel.backgroundColor = UIColor(netHex: 0xf77c2c)
//        case 4: buttonEightLabel.backgroundColor = UIColor(netHex: 0xa7cfff)
//        default: buttonEightLabel.backgroundColor = UIColor(netHex: 0xA8330C)
//        }
//    }
//    // button nine random colors
//    func buttonNineOptionsColors(){
//        value = Int(arc4random_uniform(4) + 1)
//        switch value {
//        case 1: buttonNineLabel.backgroundColor = UIColor(netHex: 0x99e1c3)
//        case 2: buttonNineLabel.backgroundColor = UIColor(netHex: 0xf7b220)
//        case 3: buttonNineLabel.backgroundColor = UIColor(netHex: 0xf77c2c)
//        case 4: buttonNineLabel.backgroundColor = UIColor(netHex: 0xa7cfff)
//        default: buttonNineLabel.backgroundColor = UIColor(netHex: 0xA8330C)
//        }
//    }

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
    
    func generateButtonImages(){

        updateTopOneImage()
        updateTopTwoImage()
        updateTopThreeImage()
        updateTopFourImage()
        
        updateBotOneImage()
        updateBotTwoImage()
        updateBotThreeImage()
        updateBotFourImage()
        updateBotFiveImage()
        updateBotSixImage()
        updateBotSevenImage()
        updateBotEightImage()
        updateBotNineImage()
        
        
    }

        
    // button two random numbers
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
    
    
    
//    func generateBottomButtons(){
//        // bottom numbers randomize
//        self.buttonOneOptionsText()
//        self.buttonTwoOptionsText()
//        self.buttonThreeOptionsText()
//        self.buttonFourOptionsText()
//        self.buttonFiveOptionsText()
//        self.buttonSixOptionsText()
//        self.buttonSevenOptionsText()
//        self.buttonEightOptionsText()
//        self.buttonNineOptionsText()
//        
//        self.buttonOneOptionsColors()
//        self.buttonTwoOptionsColors()
//        self.buttonThreeOptionsColors()
//        self.buttonFourOptionsColors()
//        self.buttonFiveOptionsColors()
//        self.buttonSixOptionsColors()
//        self.buttonSevenOptionsColors()
//        self.buttonEightOptionsColors()
//        self.buttonNineOptionsColors()
//        
//        generateButtonImages()
//    }
    
    
    
    func topNumbersEqualSomeBottomButton(){
        
        if
            (
                    // check first number
                    (
                        (topOneSymbol == botOneSymbol && topOneColorBackground == botOneColorBackground) ||
                        (topOneSymbol == botTwoSymbol && topOneColorBackground == botTwoColorBackground) ||
                        (topOneSymbol == botThreeSymbol && topOneColorBackground == botThreeColorBackground) ||
                        (topOneSymbol == botFourSymbol && topOneColorBackground == botFourColorBackground) ||
                        (topOneSymbol == botFiveSymbol && topOneColorBackground == botFiveColorBackground) ||
                        (topOneSymbol == botSixSymbol && topOneColorBackground == botSixColorBackground) ||
                        (topOneSymbol == botSevenSymbol && topOneColorBackground == botSevenColorBackground) ||
                        (topOneSymbol == botEightSymbol && topOneColorBackground == botEightColorBackground) ||
                        (topOneSymbol == botNineSymbol && topOneColorBackground == botNineColorBackground)
                    )
                    
                    &&
                    
                    // check second number
                        (
                                (topOneSymbol == botOneSymbol && topOneColorBackground == botOneColorBackground) ||
                                (topOneSymbol == botTwoSymbol && topOneColorBackground == botTwoColorBackground) ||
                                (topOneSymbol == botThreeSymbol && topOneColorBackground == botThreeColorBackground) ||
                                (topOneSymbol == botFourSymbol && topOneColorBackground == botFourColorBackground) ||
                                (topOneSymbol == botFiveSymbol && topOneColorBackground == botFiveColorBackground) ||
                                (topOneSymbol == botSixSymbol && topOneColorBackground == botSixColorBackground) ||
                                (topOneSymbol == botSevenSymbol && topOneColorBackground == botSevenColorBackground) ||
                                (topOneSymbol == botEightSymbol && topOneColorBackground == botEightColorBackground) ||
                                (topOneSymbol == botNineSymbol && topOneColorBackground == botNineColorBackground)
                        )
                    
                    &&
                    
                    // check third number
                        (
                            (topOneSymbol == botOneSymbol && topOneColorBackground == botOneColorBackground) ||
                                (topOneSymbol == botTwoSymbol && topOneColorBackground == botTwoColorBackground) ||
                                (topOneSymbol == botThreeSymbol && topOneColorBackground == botThreeColorBackground) ||
                                (topOneSymbol == botFourSymbol && topOneColorBackground == botFourColorBackground) ||
                                (topOneSymbol == botFiveSymbol && topOneColorBackground == botFiveColorBackground) ||
                                (topOneSymbol == botSixSymbol && topOneColorBackground == botSixColorBackground) ||
                                (topOneSymbol == botSevenSymbol && topOneColorBackground == botSevenColorBackground) ||
                                (topOneSymbol == botEightSymbol && topOneColorBackground == botEightColorBackground) ||
                                (topOneSymbol == botNineSymbol && topOneColorBackground == botNineColorBackground)
                        )
                    
                    &&
                    
                    // check fourth number
                        (
                                (topOneSymbol == botOneSymbol && topOneColorBackground == botOneColorBackground) ||
                                (topOneSymbol == botTwoSymbol && topOneColorBackground == botTwoColorBackground) ||
                                (topOneSymbol == botThreeSymbol && topOneColorBackground == botThreeColorBackground) ||
                                (topOneSymbol == botFourSymbol && topOneColorBackground == botFourColorBackground) ||
                                (topOneSymbol == botFiveSymbol && topOneColorBackground == botFiveColorBackground) ||
                                (topOneSymbol == botSixSymbol && topOneColorBackground == botSixColorBackground) ||
                                (topOneSymbol == botSevenSymbol && topOneColorBackground == botSevenColorBackground) ||
                                (topOneSymbol == botEightSymbol && topOneColorBackground == botEightColorBackground) ||
                                (topOneSymbol == botNineSymbol && topOneColorBackground == botNineColorBackground)
                )
                
            )
        {trueOrNot = true}
        
        
    }
    
    
    func realRandomGeneratorFirst(){
        topNumbersEqualSomeBottomButton()
        check3()
        numberCheck()
        
        while trueOrNot == false {
            generateTopAndBottomButtons()
            topNumbersEqualSomeBottomButton()
            check3()
            numberCheck()
        }
    }
    
    func numberCheck(){
        numberOneNoMatchCheck()
        numberTwoNoMatchCheck()
        numberThreeNoMatchCheck()
        numberFourNoMatchCheck()
    }
    
    
    func numberOneNoMatchCheck(){
        if
            (
                    !(topOneSymbol == botOneSymbol && topOneColorBackground == botOneColorBackground) &&
                    !(topOneSymbol == botTwoSymbol && topOneColorBackground == botTwoColorBackground) &&
                    !(topOneSymbol == botThreeSymbol && topOneColorBackground == botThreeColorBackground) &&
                    !(topOneSymbol == botFourSymbol && topOneColorBackground == botFourColorBackground) &&
                    !(topOneSymbol == botFiveSymbol && topOneColorBackground == botFiveColorBackground) &&
                    !(topOneSymbol == botSixSymbol && topOneColorBackground == botSixColorBackground) &&
                    !(topOneSymbol == botSevenSymbol && topOneColorBackground == botSevenColorBackground) &&
                    !(topOneSymbol == botEightSymbol && topOneColorBackground == botEightColorBackground) &&
                    !(topOneSymbol == botNineSymbol && topOneColorBackground == botNineColorBackground)
            )
        {trueOrNot = false}
    }
    
    func numberTwoNoMatchCheck(){
        if
            (
                    !(topTwoSymbol == botOneSymbol && topTwoColorBackground == botOneColorBackground) &&
                    !(topTwoSymbol == botTwoSymbol && topTwoColorBackground == botTwoColorBackground) &&
                    !(topTwoSymbol == botThreeSymbol && topTwoColorBackground == botThreeColorBackground) &&
                    !(topTwoSymbol == botFourSymbol && topTwoColorBackground == botFourColorBackground) &&
                    !(topTwoSymbol == botFiveSymbol && topTwoColorBackground == botFiveColorBackground) &&
                    !(topTwoSymbol == botSixSymbol && topTwoColorBackground == botSixColorBackground) &&
                    !(topTwoSymbol == botSevenSymbol && topTwoColorBackground == botSevenColorBackground) &&
                    !(topTwoSymbol == botEightSymbol && topTwoColorBackground == botEightColorBackground) &&
                    !(topTwoSymbol == botNineSymbol && topTwoColorBackground == botNineColorBackground)
            )
        {trueOrNot = false}
    }

    func numberThreeNoMatchCheck(){
        if
            (
                    !(topThreeSymbol == botOneSymbol && topThreeColorBackground == botOneColorBackground) &&
                    !(topThreeSymbol == botTwoSymbol && topThreeColorBackground == botTwoColorBackground) &&
                    !(topThreeSymbol == botThreeSymbol && topThreeColorBackground == botThreeColorBackground) &&
                    !(topThreeSymbol == botFourSymbol && topThreeColorBackground == botFourColorBackground) &&
                    !(topThreeSymbol == botFiveSymbol && topThreeColorBackground == botFiveColorBackground) &&
                    !(topThreeSymbol == botSixSymbol && topThreeColorBackground == botSixColorBackground) &&
                    !(topThreeSymbol == botSevenSymbol && topThreeColorBackground == botSevenColorBackground) &&
                    !(topThreeSymbol == botEightSymbol && topThreeColorBackground == botEightColorBackground) &&
                    !(topThreeSymbol == botNineSymbol && topThreeColorBackground == botNineColorBackground)
            )
        {trueOrNot = false}
    }
    
    func numberFourNoMatchCheck(){
        if
            (
                    !(topFourSymbol == botOneSymbol && topFourColorBackground == botOneColorBackground) &&
                    !(topFourSymbol == botTwoSymbol && topFourColorBackground == botTwoColorBackground) &&
                    !(topFourSymbol == botThreeSymbol && topFourColorBackground == botThreeColorBackground) &&
                    !(topFourSymbol == botFourSymbol && topFourColorBackground == botFourColorBackground) &&
                    !(topFourSymbol == botFiveSymbol && topFourColorBackground == botFiveColorBackground) &&
                    !(topFourSymbol == botSixSymbol && topFourColorBackground == botSixColorBackground) &&
                    !(topFourSymbol == botSevenSymbol && topFourColorBackground == botSevenColorBackground) &&
                    !(topFourSymbol == botEightSymbol && topFourColorBackground == botEightColorBackground) &&
                    !(topFourSymbol == botNineSymbol && topFourColorBackground == botNineColorBackground)
            )
        {trueOrNot = false}
    }
    
    
    
    func check3(){
        
        if
        (
        topOneColorBackground == topTwoColorBackground ||
        topOneColorBackground == topThreeColorBackground ||
        topOneColorBackground == topFourColorBackground ||
        topTwoColorBackground == topThreeColorBackground ||
        topTwoColorBackground == topFourColorBackground ||
        topThreeColorBackground == topFourColorBackground
        
        )
        {trueOrNot = false
        }else {trueOrNot = true}
        
        
    }
    
    
    
//    func check3(){
//
//        if
//            (
//                topOneColorBackground == topTwoColorBackground ||
//                numberOneLabel.backgroundColor!.isEqual(numberThreeLabel.backgroundColor) ||
//                numberOneLabel.backgroundColor!.isEqual(numberFourLabel.backgroundColor) ||
//                numberTwoLabel.backgroundColor!.isEqual(numberThreeLabel.backgroundColor) ||
//                numberTwoLabel.backgroundColor!.isEqual(numberFourLabel.backgroundColor) ||
//                numberThreeLabel.backgroundColor!.isEqual(numberFourLabel.backgroundColor
//                
//            )
//        {trueOrNot = false
//        }else {trueOrNot = true}
//        
//        
//    }

    
    
    
    
    
    
}