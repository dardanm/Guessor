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
    
    // set shadow options for buttons -- condense?
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
    
    
//    func greenBackgroundOptions(){
//        self.buttonOneOptionsColors()
//        self.buttonOneOptionsText()
//        self.buttonTwoOptionsColors()
//        self.buttonTwoOptionsText()
//        self.buttonThreeOptionsText()
//        self.buttonThreeOptionsColors()
//        self.buttonFourOptionsColors()
//        self.buttonFourOptionsText()
//        self.buttonFiveOptionsColors()
//        self.buttonFiveOptionsText()
//        self.buttonSixOptionsText()
//        self.buttonSixOptionsColors()
//        self.buttonSevenOptionsColors()
//        self.buttonSevenOptionsText()
//        self.buttonEightOptionsColors()
//        self.buttonEightOptionsText()
//        self.buttonNineOptionsText()
//        self.buttonNineOptionsColors()
//    }
    
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

    
}