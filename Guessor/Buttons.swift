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
        case 1: numberOneLabel.backgroundColor = UIColor(netHex: 0xFAD089)
        firstNumber.layer.shadowColor = UIColor(netHex: 0xd0762d).CGColor
        case 2: numberOneLabel.backgroundColor = UIColor(netHex: 0xFF9C5B)
        firstNumber.layer.shadowColor = UIColor(netHex: 0x90c6b1).CGColor
        case 3: numberOneLabel.backgroundColor = UIColor(netHex: 0xb5daff)
        firstNumber.layer.shadowColor = UIColor(netHex: 0x97c2ed).CGColor
        case 4: numberOneLabel.backgroundColor = UIColor(netHex: 0xfabe28)
        firstNumber.layer.shadowColor = UIColor(netHex: 0xdfa922).CGColor
        default: numberOneLabel.backgroundColor = UIColor(netHex: 0xA8330C)
        }
    }
    
    // number two top
    func numberTwoOptionsColors(){
        value = Int(arc4random_uniform(4) + 1)
        switch value {
        case 1: numberTwoLabel.backgroundColor = UIColor(netHex: 0xFAD089)
        secondNumber.layer.shadowColor = UIColor(netHex: 0xd0762d).CGColor
        case 2: numberTwoLabel.backgroundColor = UIColor(netHex: 0xFF9C5B)
        secondNumber.layer.shadowColor = UIColor(netHex: 0x90c6b1).CGColor
        case 3: numberTwoLabel.backgroundColor = UIColor(netHex: 0xb5daff)
        secondNumber.layer.shadowColor = UIColor(netHex: 0x97c2ed).CGColor
        case 4: numberTwoLabel.backgroundColor = UIColor(netHex: 0xfabe28)
        secondNumber.layer.shadowColor = UIColor(netHex: 0xdfa922).CGColor
        default: numberTwoLabel.backgroundColor = UIColor(netHex: 0xA8330C)
        }
    }
    
    // number three top
    func numberThreeOptionsColors(){
        value = Int(arc4random_uniform(4) + 1)
        switch value {
        case 1: numberThreeLabel.backgroundColor = UIColor(netHex: 0xFAD089)
        thirdNumber.layer.shadowColor = UIColor(netHex: 0xd0762d).CGColor
        case 2: numberThreeLabel.backgroundColor = UIColor(netHex: 0xFF9C5B)
        thirdNumber.layer.shadowColor = UIColor(netHex: 0x90c6b1).CGColor
        case 3: numberThreeLabel.backgroundColor = UIColor(netHex: 0xb5daff)
        thirdNumber.layer.shadowColor = UIColor(netHex: 0x97c2ed).CGColor
        case 4: numberThreeLabel.backgroundColor = UIColor(netHex: 0xfabe28)
        thirdNumber.layer.shadowColor = UIColor(netHex: 0xdfa922).CGColor
        default: numberThreeLabel.backgroundColor = UIColor(netHex: 0xA8330C)
        }
    }
    
    // number four top
    func numberFourOptionsColors(){
        value = Int(arc4random_uniform(4) + 1)
        switch value {
        case 1: numberFourLabel.backgroundColor = UIColor(netHex: 0xFAD089)
        fourthNumber.layer.shadowColor = UIColor(netHex: 0xd0762d).CGColor
        case 2: numberFourLabel.backgroundColor = UIColor(netHex: 0xFF9C5B)
        fourthNumber.layer.shadowColor = UIColor(netHex: 0x90c6b1).CGColor
        case 3: numberFourLabel.backgroundColor = UIColor(netHex: 0xb5daff)
        fourthNumber.layer.shadowColor = UIColor(netHex: 0x97c2ed).CGColor
        case 4: numberFourLabel.backgroundColor = UIColor(netHex: 0xfabe28)
        fourthNumber.layer.shadowColor = UIColor(netHex: 0xdfa922).CGColor
        default: numberFourLabel.backgroundColor = UIColor(netHex: 0xA8330C)
        }
    }
    
    
    // button one random colors
    func buttonOneOptionsColors(){
        value = Int(arc4random_uniform(4) + 1)
        switch value {
        case 1: buttonOneLabel.backgroundColor = UIColor(netHex: 0xFAD089)
        buttonOneLabel.layer.shadowColor = UIColor(netHex: 0xd0762d).CGColor
        case 2: buttonOneLabel.backgroundColor = UIColor(netHex: 0xFF9C5B)
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
        case 1: buttonTwoLabel.backgroundColor = UIColor(netHex: 0xFAD089)
        buttonTwoLabel.layer.shadowColor = UIColor(netHex: 0xd0762d).CGColor
        case 2: buttonTwoLabel.backgroundColor = UIColor(netHex: 0xFF9C5B)
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
        case 1: buttonThreeLabel.backgroundColor = UIColor(netHex: 0xFAD089)
        buttonThreeLabel.layer.shadowColor = UIColor(netHex: 0xd0762d).CGColor
        case 2: buttonThreeLabel.backgroundColor = UIColor(netHex: 0xFF9C5B)
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
        case 1: buttonFourLabel.backgroundColor = UIColor(netHex: 0xFAD089)
        buttonFourLabel.layer.shadowColor = UIColor(netHex: 0xd0762d).CGColor
        case 2: buttonFourLabel.backgroundColor = UIColor(netHex: 0xFF9C5B)
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
        case 1: buttonFiveLabel.backgroundColor = UIColor(netHex: 0xFAD089)
        buttonFiveLabel.layer.shadowColor = UIColor(netHex: 0xd0762d).CGColor
        case 2: buttonFiveLabel.backgroundColor = UIColor(netHex: 0xFF9C5B)
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
        case 1: buttonSixLabel.backgroundColor = UIColor(netHex: 0xFAD089)
        buttonSixLabel.layer.shadowColor = UIColor(netHex: 0xd0762d).CGColor
        case 2: buttonSixLabel.backgroundColor = UIColor(netHex: 0xFF9C5B)
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
        case 1: buttonSevenLabel.backgroundColor = UIColor(netHex: 0xFAD089)
        buttonSevenLabel.layer.shadowColor = UIColor(netHex: 0xd0762d).CGColor
        case 2: buttonSevenLabel.backgroundColor = UIColor(netHex: 0xFF9C5B)
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
        case 1: buttonEightLabel.backgroundColor = UIColor(netHex: 0xFAD089)
        buttonEightLabel.layer.shadowColor = UIColor(netHex: 0xd0762d).CGColor
        case 2: buttonEightLabel.backgroundColor = UIColor(netHex: 0xFF9C5B)
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
        case 1: buttonNineLabel.backgroundColor = UIColor(netHex: 0xFAD089)
        buttonNineLabel.layer.shadowColor = UIColor(netHex: 0xd0762d).CGColor
        case 2: buttonNineLabel.backgroundColor = UIColor(netHex: 0xFF9C5B)
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
        
        
        
        //button 1
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
    
    
}