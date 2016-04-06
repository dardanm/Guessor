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
    
    // number one top
    func numberOneOptionsColors(){
        value = Int(arc4random_uniform(4) + 1)
        switch value {
        case 1: numberOneLabel.backgroundColor = UIColor(netHex: 0x99e1c3)
        firstNumber.layer.shadowColor = UIColor(netHex: 0xd0762d).CGColor
        case 2: numberOneLabel.backgroundColor = UIColor(netHex: 0xf7b220)
        firstNumber.layer.shadowColor = UIColor(netHex: 0x90c6b1).CGColor
        case 3: numberOneLabel.backgroundColor = UIColor(netHex: 0xf77c2c)
        firstNumber.layer.shadowColor = UIColor(netHex: 0x97c2ed).CGColor
        case 4: numberOneLabel.backgroundColor = UIColor(netHex: 0xa7cfff)
        firstNumber.layer.shadowColor = UIColor(netHex: 0xdfa922).CGColor
        default: numberOneLabel.backgroundColor = UIColor(netHex: 0xA8330C)
        }
    }
    
    // number two top
    func numberTwoOptionsColors(){
        value = Int(arc4random_uniform(4) + 1)
        switch value {
        case 1: numberTwoLabel.backgroundColor = UIColor(netHex: 0x99e1c3)
        secondNumber.layer.shadowColor = UIColor(netHex: 0xd0762d).CGColor
        case 2: numberTwoLabel.backgroundColor = UIColor(netHex: 0xf7b220)
        secondNumber.layer.shadowColor = UIColor(netHex: 0x90c6b1).CGColor
        case 3: numberTwoLabel.backgroundColor = UIColor(netHex: 0xf77c2c)
        secondNumber.layer.shadowColor = UIColor(netHex: 0x97c2ed).CGColor
        case 4: numberTwoLabel.backgroundColor = UIColor(netHex: 0xa7cfff)
        secondNumber.layer.shadowColor = UIColor(netHex: 0xdfa922).CGColor
        default: numberTwoLabel.backgroundColor = UIColor(netHex: 0xA8330C)
        }
    }
    
    // number three top
    func numberThreeOptionsColors(){
        value = Int(arc4random_uniform(4) + 1)
        switch value {
        case 1: numberThreeLabel.backgroundColor = UIColor(netHex: 0x99e1c3)
        thirdNumber.layer.shadowColor = UIColor(netHex: 0xd0762d).CGColor
        case 2: numberThreeLabel.backgroundColor = UIColor(netHex: 0xf7b220)
        thirdNumber.layer.shadowColor = UIColor(netHex: 0x90c6b1).CGColor
        case 3: numberThreeLabel.backgroundColor = UIColor(netHex: 0xf77c2c)
        thirdNumber.layer.shadowColor = UIColor(netHex: 0x97c2ed).CGColor
        case 4: numberThreeLabel.backgroundColor = UIColor(netHex: 0xa7cfff)
        thirdNumber.layer.shadowColor = UIColor(netHex: 0xdfa922).CGColor
        default: numberThreeLabel.backgroundColor = UIColor(netHex: 0xA8330C)
        }
    }
    
    // number four top
    func numberFourOptionsColors(){
        value = Int(arc4random_uniform(4) + 1)
        switch value {
        case 1: numberFourLabel.backgroundColor = UIColor(netHex: 0x99e1c3)
        fourthNumber.layer.shadowColor = UIColor(netHex: 0xd0762d).CGColor
        case 2: numberFourLabel.backgroundColor = UIColor(netHex: 0xf7b220)
        fourthNumber.layer.shadowColor = UIColor(netHex: 0x90c6b1).CGColor
        case 3: numberFourLabel.backgroundColor = UIColor(netHex: 0xf77c2c)
        fourthNumber.layer.shadowColor = UIColor(netHex: 0x97c2ed).CGColor
        case 4: numberFourLabel.backgroundColor = UIColor(netHex: 0xa7cfff)
        fourthNumber.layer.shadowColor = UIColor(netHex: 0xdfa922).CGColor
        default: numberFourLabel.backgroundColor = UIColor(netHex: 0xA8330C)
        }
    }
    
    
    // button one random colors
    func buttonOneOptionsColors(){
        value = Int(arc4random_uniform(4) + 1)
        switch value {
        case 1: buttonOneLabel.backgroundColor = UIColor(netHex: 0x99e1c3)
        buttonOneLabel.layer.shadowColor = UIColor(netHex: 0xd0762d).CGColor
        case 2: buttonOneLabel.backgroundColor = UIColor(netHex: 0xf7b220)
        buttonOneLabel.layer.shadowColor = UIColor(netHex: 0x90c6b1).CGColor
        case 3: buttonOneLabel.backgroundColor = UIColor(netHex: 0xf77c2c)
        buttonOneLabel.layer.shadowColor = UIColor(netHex: 0x97c2ed).CGColor
        case 4: buttonOneLabel.backgroundColor = UIColor(netHex: 0xa7cfff)
        buttonOneLabel.layer.shadowColor = UIColor(netHex: 0xdfa922).CGColor
        default: buttonOneLabel.backgroundColor = UIColor(netHex: 0xA8330C)
        }
    }
    // button two random colors
    func buttonTwoOptionsColors(){
        value = Int(arc4random_uniform(4) + 1)
        switch value {
        case 1: buttonTwoLabel.backgroundColor = UIColor(netHex: 0x99e1c3)
        buttonTwoLabel.layer.shadowColor = UIColor(netHex: 0xd0762d).CGColor
        case 2: buttonTwoLabel.backgroundColor = UIColor(netHex: 0xf7b220)
        buttonTwoLabel.layer.shadowColor = UIColor(netHex: 0x90c6b1).CGColor
        case 3: buttonTwoLabel.backgroundColor = UIColor(netHex: 0xf77c2c)
        buttonTwoLabel.layer.shadowColor = UIColor(netHex: 0x97c2ed).CGColor
        case 4: buttonTwoLabel.backgroundColor = UIColor(netHex: 0xa7cfff)
        buttonTwoLabel.layer.shadowColor = UIColor(netHex: 0xdfa922).CGColor
        default: buttonTwoLabel.backgroundColor = UIColor(netHex: 0xA8330C)
        }
    }
    // button three random colors
    func buttonThreeOptionsColors(){
        value = Int(arc4random_uniform(4) + 1)
        switch value {
        case 1: buttonThreeLabel.backgroundColor = UIColor(netHex: 0x99e1c3)
        buttonThreeLabel.layer.shadowColor = UIColor(netHex: 0xd0762d).CGColor
        case 2: buttonThreeLabel.backgroundColor = UIColor(netHex: 0xf7b220)
        buttonThreeLabel.layer.shadowColor = UIColor(netHex: 0x90c6b1).CGColor
        case 3: buttonThreeLabel.backgroundColor = UIColor(netHex: 0xf77c2c)
        buttonThreeLabel.layer.shadowColor = UIColor(netHex: 0x97c2ed).CGColor
        case 4: buttonThreeLabel.backgroundColor = UIColor(netHex: 0xa7cfff)
        buttonThreeLabel.layer.shadowColor = UIColor(netHex: 0xdfa922).CGColor
        default: buttonThreeLabel.backgroundColor = UIColor(netHex: 0xA8330C)
        }
    }
    // button four random colors
    func buttonFourOptionsColors(){
        value = Int(arc4random_uniform(4) + 1)
        switch value {
        case 1: buttonFourLabel.backgroundColor = UIColor(netHex: 0x99e1c3)
        buttonFourLabel.layer.shadowColor = UIColor(netHex: 0xd0762d).CGColor
        case 2: buttonFourLabel.backgroundColor = UIColor(netHex: 0xf7b220)
        buttonFourLabel.layer.shadowColor = UIColor(netHex: 0x90c6b1).CGColor
        case 3: buttonFourLabel.backgroundColor = UIColor(netHex: 0xf77c2c)
        buttonFourLabel.layer.shadowColor = UIColor(netHex: 0x97c2ed).CGColor
        case 4: buttonFourLabel.backgroundColor = UIColor(netHex: 0xa7cfff)
        buttonFourLabel.layer.shadowColor = UIColor(netHex: 0xdfa922).CGColor
        default: buttonFourLabel.backgroundColor = UIColor(netHex: 0xA8330C)
        }
    }
    // button five random colors
    func buttonFiveOptionsColors(){
        value = Int(arc4random_uniform(4) + 1)
        switch value {
        case 1: buttonFiveLabel.backgroundColor = UIColor(netHex: 0x99e1c3)
        buttonFiveLabel.layer.shadowColor = UIColor(netHex: 0xd0762d).CGColor
        case 2: buttonFiveLabel.backgroundColor = UIColor(netHex: 0xf7b220)
        buttonFiveLabel.layer.shadowColor = UIColor(netHex: 0x90c6b1).CGColor
        case 3: buttonFiveLabel.backgroundColor = UIColor(netHex: 0xf77c2c)
        buttonFiveLabel.layer.shadowColor = UIColor(netHex: 0x97c2ed).CGColor
        case 4: buttonFiveLabel.backgroundColor = UIColor(netHex: 0xa7cfff)
        buttonFiveLabel.layer.shadowColor = UIColor(netHex: 0xdfa922).CGColor
        default: buttonFiveLabel.backgroundColor = UIColor(netHex: 0xA8330C)
        }
    }
    // button six random colors
    func buttonSixOptionsColors(){
        value = Int(arc4random_uniform(4) + 1)
        switch value {
        case 1: buttonSixLabel.backgroundColor = UIColor(netHex: 0x99e1c3)
        buttonSixLabel.layer.shadowColor = UIColor(netHex: 0xd0762d).CGColor
        case 2: buttonSixLabel.backgroundColor = UIColor(netHex: 0xf7b220)
        buttonSixLabel.layer.shadowColor = UIColor(netHex: 0x90c6b1).CGColor
        case 3: buttonSixLabel.backgroundColor = UIColor(netHex: 0xf77c2c)
        buttonSixLabel.layer.shadowColor = UIColor(netHex: 0x97c2ed).CGColor
        case 4: buttonSixLabel.backgroundColor = UIColor(netHex: 0xa7cfff)
        buttonSixLabel.layer.shadowColor = UIColor(netHex: 0xdfa922).CGColor
        default: buttonSixLabel.backgroundColor = UIColor(netHex: 0xA8330C)
        }
    }
    // button seven random colors
    func buttonSevenOptionsColors(){
        value = Int(arc4random_uniform(4) + 1)
        switch value {
        case 1: buttonSevenLabel.backgroundColor = UIColor(netHex: 0x99e1c3)
        buttonSevenLabel.layer.shadowColor = UIColor(netHex: 0xd0762d).CGColor
        case 2: buttonSevenLabel.backgroundColor = UIColor(netHex: 0xf7b220)
        buttonSevenLabel.layer.shadowColor = UIColor(netHex: 0x90c6b1).CGColor
        case 3: buttonSevenLabel.backgroundColor = UIColor(netHex: 0xf77c2c)
        buttonSevenLabel.layer.shadowColor = UIColor(netHex: 0x97c2ed).CGColor
        case 4: buttonSevenLabel.backgroundColor = UIColor(netHex: 0xa7cfff)
        buttonSevenLabel.layer.shadowColor = UIColor(netHex: 0xdfa922).CGColor
        default: buttonSevenLabel.backgroundColor = UIColor(netHex: 0xA8330C)
        }
    }
    // button eight random colors
    func buttonEightOptionsColors(){
        value = Int(arc4random_uniform(4) + 1)
        switch value {
        case 1: buttonEightLabel.backgroundColor = UIColor(netHex: 0x99e1c3)
        buttonEightLabel.layer.shadowColor = UIColor(netHex: 0xd0762d).CGColor
        case 2: buttonEightLabel.backgroundColor = UIColor(netHex: 0xf7b220)
        buttonEightLabel.layer.shadowColor = UIColor(netHex: 0x90c6b1).CGColor
        case 3: buttonEightLabel.backgroundColor = UIColor(netHex: 0xf77c2c)
        buttonEightLabel.layer.shadowColor = UIColor(netHex: 0x97c2ed).CGColor
        case 4: buttonEightLabel.backgroundColor = UIColor(netHex: 0xa7cfff)
        buttonEightLabel.layer.shadowColor = UIColor(netHex: 0xdfa922).CGColor
        default: buttonEightLabel.backgroundColor = UIColor(netHex: 0xA8330C)
        }
    }
    // button nine random colors
    func buttonNineOptionsColors(){
        value = Int(arc4random_uniform(4) + 1)
        switch value {
        case 1: buttonNineLabel.backgroundColor = UIColor(netHex: 0x99e1c3)
        buttonNineLabel.layer.shadowColor = UIColor(netHex: 0xd0762d).CGColor
        case 2: buttonNineLabel.backgroundColor = UIColor(netHex: 0xf7b220)
        buttonNineLabel.layer.shadowColor = UIColor(netHex: 0x90c6b1).CGColor
        case 3: buttonNineLabel.backgroundColor = UIColor(netHex: 0xf77c2c)
        buttonNineLabel.layer.shadowColor = UIColor(netHex: 0x97c2ed).CGColor
        case 4: buttonNineLabel.backgroundColor = UIColor(netHex: 0xa7cfff)
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
    
    func generateButtonImages(){
        
        // "0" - CANE
        // ">" - CANDY
        // "<" - POP
        
        //number 1
        if firstNumber.text == "O" {
            caneN1.hidden = false
            candyN1.hidden = true
            popN1.hidden = true
        }
        if firstNumber.text == ">" {
            caneN1.hidden = true
            candyN1.hidden = false
            popN1.hidden = true
        }
        if firstNumber.text == "<" {
            caneN1.hidden = true
            candyN1.hidden = true
            popN1.hidden = false
        }
        //number 2
        if secondNumber.text == "O" {
            caneN2.hidden = false
            candyN2.hidden = true
            popN2.hidden = true
        }
        if secondNumber.text == ">" {
            caneN2.hidden = true
            candyN2.hidden = false
            popN2.hidden = true
        }
        if secondNumber.text == "<" {
            caneN2.hidden = true
            candyN2.hidden = true
            popN2.hidden = false
        }
        //number 3
        if thirdNumber.text == "O" {
            caneN3.hidden = false
            candyN3.hidden = true
            popN3.hidden = true
        }
        if thirdNumber.text == ">" {
            caneN3.hidden = true
            candyN3.hidden = false
            popN3.hidden = true
        }
        if thirdNumber.text == "<" {
            caneN3.hidden = true
            candyN3.hidden = true
            popN3.hidden = false
        }
        //number 4
        if fourthNumber.text == "O" {
            caneN4.hidden = false
            candyN4.hidden = true
            popN4.hidden = true
        }
        if fourthNumber.text == ">" {
            caneN4.hidden = true
            candyN4.hidden = false
            popN4.hidden = true
        }
        if fourthNumber.text == "<" {
            caneN4.hidden = true
            candyN4.hidden = true
            popN4.hidden = false
        }
        
        
        // 1
        if buttonOneText.text == "O" {
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
        
        // 2
        if buttonTwoText.text == "O" {
            caneB2.hidden = false
            candyB2.hidden = true
            popB2.hidden = true
        }
        if buttonTwoText.text == ">" {
            caneB2.hidden = true
            candyB2.hidden = false
            popB2.hidden = true
        }
        if buttonTwoText.text == "<" {
            caneB2.hidden = true
            candyB2.hidden = true
            popB2.hidden = false
        }
        
        // 3
        if buttonThreeText.text == "O" {
            caneB3.hidden = false
            candyB3.hidden = true
            popB3.hidden = true
        }
        if buttonThreeText.text == ">" {
            caneB3.hidden = true
            candyB3.hidden = false
            popB3.hidden = true
        }
        if buttonThreeText.text == "<" {
            caneB3.hidden = true
            candyB3.hidden = true
            popB3.hidden = false
        }
        
        // 4
        if buttonFourText.text == "O" {
            caneB4.hidden = false
            candyB4.hidden = true
            popB4.hidden = true
        }
        if buttonFourText.text == ">" {
            caneB4.hidden = true
            candyB4.hidden = false
            popB4.hidden = true
        }
        if buttonFourText.text == "<" {
            caneB4.hidden = true
            candyB4.hidden = true
            popB4.hidden = false
        }
        
        // 5
        if buttonFiveText.text == "O" {
            caneB5.hidden = false
            candyB5.hidden = true
            popB5.hidden = true
        }
        if buttonFiveText.text == ">" {
            caneB5.hidden = true
            candyB5.hidden = false
            popB5.hidden = true
        }
        if buttonFiveText.text == "<" {
            caneB5.hidden = true
            candyB5.hidden = true
            popB5.hidden = false
        }
        
        // 6
        if buttonSixText.text == "O" {
            caneB6.hidden = false
            candyB6.hidden = true
            popB6.hidden = true
        }
        if buttonSixText.text == ">" {
            caneB6.hidden = true
            candyB6.hidden = false
            popB6.hidden = true
        }
        if buttonSixText.text == "<" {
            caneB6.hidden = true
            candyB6.hidden = true
            popB6.hidden = false
        }
        
        // 7
        if buttonSevenText.text == "O" {
            caneB7.hidden = false
            candyB7.hidden = true
            popB7.hidden = true
        }
        if buttonSevenText.text == ">" {
            caneB7.hidden = true
            candyB7.hidden = false
            popB7.hidden = true
        }
        if buttonSevenText.text == "<" {
            caneB7.hidden = true
            candyB7.hidden = true
            popB7.hidden = false
        }
        
        // 8
        if buttonEightText.text == "O" {
            caneB8.hidden = false
            candyB8.hidden = true
            popB8.hidden = true
        }
        if buttonEightText.text == ">" {
            caneB8.hidden = true
            candyB8.hidden = false
            popB8.hidden = true
        }
        if buttonEightText.text == "<" {
            caneB8.hidden = true
            candyB8.hidden = true
            popB8.hidden = false
        }
        
        // 9
        if buttonNineText.text == "O" {
            caneB9.hidden = false
            candyB9.hidden = true
            popB9.hidden = true
        }
        if buttonNineText.text == ">" {
            caneB9.hidden = true
            candyB9.hidden = false
            popB9.hidden = true
        }
        if buttonNineText.text == "<" {
            caneB9.hidden = true
            candyB9.hidden = true
            popB9.hidden = false
        }
        
        
        
        
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
    
    
    
    func generateBottomButtons(){
        // bottom numbers randomize
        self.buttonOneOptionsText()
        self.buttonTwoOptionsText()
        self.buttonThreeOptionsText()
        self.buttonFourOptionsText()
        self.buttonFiveOptionsText()
        self.buttonSixOptionsText()
        self.buttonSevenOptionsText()
        self.buttonEightOptionsText()
        self.buttonNineOptionsText()
        
        self.buttonOneOptionsColors()
        self.buttonTwoOptionsColors()
        self.buttonThreeOptionsColors()
        self.buttonFourOptionsColors()
        self.buttonFiveOptionsColors()
        self.buttonSixOptionsColors()
        self.buttonSevenOptionsColors()
        self.buttonEightOptionsColors()
        self.buttonNineOptionsColors()
        
        generateButtonImages()
    }
    
    func generateTopAndBottomButtons(){
        
        // top numbers randomize
        self.numberOneOptionsColors()
        self.numberOneOptionsText()
        
        self.numberTwoOptionsColors()
        self.numberTwoOptionsText()
        
        self.numberThreeOptionsColors()
        self.numberThreeOptionsText()
        
        self.numberFourOptionsColors()
        self.numberFourOptionsText()
        
        // bottom numbers randomize
        self.buttonOneOptionsText()
        self.buttonTwoOptionsText()
        self.buttonThreeOptionsText()
        self.buttonFourOptionsText()
        self.buttonFiveOptionsText()
        self.buttonSixOptionsText()
        self.buttonSevenOptionsText()
        self.buttonEightOptionsText()
        self.buttonNineOptionsText()
        
        self.buttonOneOptionsColors()
        self.buttonTwoOptionsColors()
        self.buttonThreeOptionsColors()
        self.buttonFourOptionsColors()
        self.buttonFiveOptionsColors()
        self.buttonSixOptionsColors()
        self.buttonSevenOptionsColors()
        self.buttonEightOptionsColors()
        self.buttonNineOptionsColors()
        
        generateButtonImages()
        
    }
    
    
    
    func topNumbersEqualSomeBottomButton(){
        
        if
            (
                    // check first number
                    (   buttonOneText.text == firstNumber.text && buttonOneLabel.backgroundColor!.isEqual(numberOneLabel.backgroundColor)  ||
                        buttonTwoText.text == firstNumber.text && buttonTwoLabel.backgroundColor!.isEqual(numberOneLabel.backgroundColor)  ||
                        buttonThreeText.text == firstNumber.text && buttonThreeLabel.backgroundColor!.isEqual(numberOneLabel.backgroundColor)  ||
                        buttonFourText.text == firstNumber.text && buttonFourLabel.backgroundColor!.isEqual(numberOneLabel.backgroundColor)  ||
                        buttonFiveText.text == firstNumber.text && buttonFiveLabel.backgroundColor!.isEqual(numberOneLabel.backgroundColor)  ||
                        buttonSixText.text == firstNumber.text && buttonSixLabel.backgroundColor!.isEqual(numberOneLabel.backgroundColor)  ||
                        buttonSevenText.text == firstNumber.text && buttonSevenLabel.backgroundColor!.isEqual(numberOneLabel.backgroundColor)  ||
                        buttonEightText.text == firstNumber.text && buttonEightLabel.backgroundColor!.isEqual(numberOneLabel.backgroundColor)  ||
                        buttonNineText.text == firstNumber.text && buttonNineLabel.backgroundColor!.isEqual(numberOneLabel.backgroundColor) )
                    
                    &&
                    
                    // check second number
                    (   buttonOneText.text == secondNumber.text && buttonOneLabel.backgroundColor!.isEqual(numberTwoLabel.backgroundColor)  ||
                        buttonTwoText.text == secondNumber.text && buttonTwoLabel.backgroundColor!.isEqual(numberTwoLabel.backgroundColor)  ||
                        buttonThreeText.text == secondNumber.text && buttonThreeLabel.backgroundColor!.isEqual(numberTwoLabel.backgroundColor)  ||
                        buttonFourText.text == secondNumber.text && buttonFourLabel.backgroundColor!.isEqual(numberTwoLabel.backgroundColor)  ||
                        buttonFiveText.text == secondNumber.text && buttonFiveLabel.backgroundColor!.isEqual(numberTwoLabel.backgroundColor)  ||
                        buttonSixText.text == secondNumber.text && buttonSixLabel.backgroundColor!.isEqual(numberTwoLabel.backgroundColor)  ||
                        buttonSevenText.text == secondNumber.text && buttonSevenLabel.backgroundColor!.isEqual(numberTwoLabel.backgroundColor)  ||
                        buttonEightText.text == secondNumber.text && buttonEightLabel.backgroundColor!.isEqual(numberTwoLabel.backgroundColor)  ||
                        buttonNineText.text == secondNumber.text && buttonNineLabel.backgroundColor!.isEqual(numberTwoLabel.backgroundColor) )
                    
                    &&
                    
                    // check third number
                    (   buttonOneText.text == thirdNumber.text && buttonOneLabel.backgroundColor!.isEqual(numberThreeLabel.backgroundColor)  ||
                        buttonTwoText.text == thirdNumber.text && buttonTwoLabel.backgroundColor!.isEqual(numberThreeLabel.backgroundColor)  ||
                        buttonThreeText.text == thirdNumber.text && buttonThreeLabel.backgroundColor!.isEqual(numberThreeLabel.backgroundColor)  ||
                        buttonFourText.text == thirdNumber.text && buttonFourLabel.backgroundColor!.isEqual(numberThreeLabel.backgroundColor)  ||
                        buttonFiveText.text == thirdNumber.text && buttonFiveLabel.backgroundColor!.isEqual(numberThreeLabel.backgroundColor)  ||
                        buttonSixText.text == thirdNumber.text && buttonSixLabel.backgroundColor!.isEqual(numberThreeLabel.backgroundColor)  ||
                        buttonSevenText.text == thirdNumber.text && buttonSevenLabel.backgroundColor!.isEqual(numberThreeLabel.backgroundColor)  ||
                        buttonEightText.text == thirdNumber.text && buttonEightLabel.backgroundColor!.isEqual(numberThreeLabel.backgroundColor)  ||
                        buttonNineText.text == thirdNumber.text && buttonNineLabel.backgroundColor!.isEqual(numberThreeLabel.backgroundColor) )
                    
                    &&
                    
                    // check fourth number
                    (   buttonOneText.text == fourthNumber.text && buttonOneLabel.backgroundColor!.isEqual(numberFourLabel.backgroundColor)  ||
                        buttonTwoText.text == fourthNumber.text && buttonTwoLabel.backgroundColor!.isEqual(numberFourLabel.backgroundColor)  ||
                        buttonThreeText.text == fourthNumber.text && buttonThreeLabel.backgroundColor!.isEqual(numberFourLabel.backgroundColor)  ||
                        buttonFourText.text == fourthNumber.text && buttonFourLabel.backgroundColor!.isEqual(numberFourLabel.backgroundColor)  ||
                        buttonFiveText.text == fourthNumber.text && buttonFiveLabel.backgroundColor!.isEqual(numberFourLabel.backgroundColor)  ||
                        buttonSixText.text == fourthNumber.text && buttonSixLabel.backgroundColor!.isEqual(numberFourLabel.backgroundColor)  ||
                        buttonSevenText.text == fourthNumber.text && buttonSevenLabel.backgroundColor!.isEqual(numberFourLabel.backgroundColor)  ||
                        buttonEightText.text == fourthNumber.text && buttonEightLabel.backgroundColor!.isEqual(numberFourLabel.backgroundColor)  ||
                        buttonNineText.text == fourthNumber.text && buttonNineLabel.backgroundColor!.isEqual(numberFourLabel.backgroundColor) )
                
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
                    !(buttonOneText.text == firstNumber.text && buttonOneLabel.backgroundColor!.isEqual(numberOneLabel.backgroundColor))  &&
                    !(buttonTwoText.text == firstNumber.text && buttonTwoLabel.backgroundColor!.isEqual(numberOneLabel.backgroundColor)) &&
                    !(buttonThreeText.text == firstNumber.text && buttonThreeLabel.backgroundColor!.isEqual(numberOneLabel.backgroundColor)) &&
                    !(buttonFourText.text == firstNumber.text && buttonFourLabel.backgroundColor!.isEqual(numberOneLabel.backgroundColor)) &&
                    !(buttonFiveText.text == firstNumber.text && buttonFiveLabel.backgroundColor!.isEqual(numberOneLabel.backgroundColor)) &&
                    !(buttonSixText.text == firstNumber.text && buttonSixLabel.backgroundColor!.isEqual(numberOneLabel.backgroundColor)) &&
                    !(buttonSevenText.text == firstNumber.text && buttonSevenLabel.backgroundColor!.isEqual(numberOneLabel.backgroundColor)) &&
                    !(buttonEightText.text == firstNumber.text && buttonEightLabel.backgroundColor!.isEqual(numberOneLabel.backgroundColor)) &&
                    !(buttonNineText.text == firstNumber.text && buttonNineLabel.backgroundColor!.isEqual(numberOneLabel.backgroundColor))
                
            )
        {trueOrNot = false}
    }
    
    func numberTwoNoMatchCheck(){
        if
            (   !(buttonOneText.text == secondNumber.text && buttonOneLabel.backgroundColor!.isEqual(numberTwoLabel.backgroundColor))  &&
                !(buttonTwoText.text == secondNumber.text && buttonTwoLabel.backgroundColor!.isEqual(numberTwoLabel.backgroundColor)) &&
                !(buttonThreeText.text == secondNumber.text && buttonThreeLabel.backgroundColor!.isEqual(numberTwoLabel.backgroundColor)) &&
                !(buttonFourText.text == secondNumber.text && buttonFourLabel.backgroundColor!.isEqual(numberTwoLabel.backgroundColor)) &&
                !(buttonFiveText.text == secondNumber.text && buttonFiveLabel.backgroundColor!.isEqual(numberTwoLabel.backgroundColor)) &&
                !(buttonSixText.text == secondNumber.text && buttonSixLabel.backgroundColor!.isEqual(numberTwoLabel.backgroundColor)) &&
                !(buttonSevenText.text == secondNumber.text && buttonSevenLabel.backgroundColor!.isEqual(numberTwoLabel.backgroundColor)) &&
                !(buttonEightText.text == secondNumber.text && buttonEightLabel.backgroundColor!.isEqual(numberTwoLabel.backgroundColor)) &&
                !(buttonNineText.text == secondNumber.text && buttonNineLabel.backgroundColor!.isEqual(numberTwoLabel.backgroundColor)) )
        {trueOrNot = false}
    }
    
    func numberThreeNoMatchCheck(){
        if
            (   !(buttonOneText.text == thirdNumber.text && buttonOneLabel.backgroundColor!.isEqual(numberThreeLabel.backgroundColor))  &&
                !(buttonTwoText.text == thirdNumber.text && buttonTwoLabel.backgroundColor!.isEqual(numberThreeLabel.backgroundColor)) &&
                !(buttonThreeText.text == thirdNumber.text && buttonThreeLabel.backgroundColor!.isEqual(numberThreeLabel.backgroundColor)) &&
                !(buttonFourText.text == thirdNumber.text && buttonFourLabel.backgroundColor!.isEqual(numberThreeLabel.backgroundColor)) &&
                !(buttonFiveText.text == thirdNumber.text && buttonFiveLabel.backgroundColor!.isEqual(numberThreeLabel.backgroundColor)) &&
                !(buttonSixText.text == thirdNumber.text && buttonSixLabel.backgroundColor!.isEqual(numberThreeLabel.backgroundColor)) &&
                !(buttonSevenText.text == thirdNumber.text && buttonSevenLabel.backgroundColor!.isEqual(numberThreeLabel.backgroundColor)) &&
                !(buttonEightText.text == thirdNumber.text && buttonEightLabel.backgroundColor!.isEqual(numberThreeLabel.backgroundColor)) &&
                !(buttonNineText.text == thirdNumber.text && buttonNineLabel.backgroundColor!.isEqual(numberThreeLabel.backgroundColor)) )
        {trueOrNot = false}
    }
    
    func numberFourNoMatchCheck(){
        if
            (   !(buttonOneText.text == fourthNumber.text && buttonOneLabel.backgroundColor!.isEqual(numberFourLabel.backgroundColor))  &&
                !(buttonTwoText.text == fourthNumber.text && buttonTwoLabel.backgroundColor!.isEqual(numberFourLabel.backgroundColor)) &&
                !(buttonThreeText.text == fourthNumber.text && buttonThreeLabel.backgroundColor!.isEqual(numberFourLabel.backgroundColor)) &&
                !(buttonFourText.text == fourthNumber.text && buttonFourLabel.backgroundColor!.isEqual(numberFourLabel.backgroundColor)) &&
                !(buttonFiveText.text == fourthNumber.text && buttonFiveLabel.backgroundColor!.isEqual(numberFourLabel.backgroundColor)) &&
                !(buttonSixText.text == fourthNumber.text && buttonSixLabel.backgroundColor!.isEqual(numberFourLabel.backgroundColor)) &&
                !(buttonSevenText.text == fourthNumber.text && buttonSevenLabel.backgroundColor!.isEqual(numberFourLabel.backgroundColor)) &&
                !(buttonEightText.text == fourthNumber.text && buttonEightLabel.backgroundColor!.isEqual(numberFourLabel.backgroundColor)) &&
                !(buttonNineText.text == fourthNumber.text && buttonNineLabel.backgroundColor!.isEqual(numberFourLabel.backgroundColor)) )
        {trueOrNot = false}
    }
    
    
    
    func check3(){
        
        if
            (
                numberOneLabel.backgroundColor!.isEqual(numberTwoLabel.backgroundColor) ||
                numberOneLabel.backgroundColor!.isEqual(numberThreeLabel.backgroundColor) ||
                numberOneLabel.backgroundColor!.isEqual(numberFourLabel.backgroundColor) ||
                numberTwoLabel.backgroundColor!.isEqual(numberThreeLabel.backgroundColor) ||
                numberTwoLabel.backgroundColor!.isEqual(numberFourLabel.backgroundColor) ||
                numberThreeLabel.backgroundColor!.isEqual(numberFourLabel.backgroundColor)
                
            )
        {trueOrNot = false
        }else {trueOrNot = true}
        
        
    }
    
    
    
    
}