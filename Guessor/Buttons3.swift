//
//  Buttons3.swift
//  Guessor
//
//  Created by Dardan on 4/8/16.
//  Copyright © 2016 Meha. All rights reserved.
//

import UIKit
import AVFoundation
import QuartzCore

extension BaseLevel {

    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        
        
    }
    
    func matchTopAndBottomButtons(){
        
        // "1" - CANE
        // "2" - CANDY
        // "3" - POP
        
        
        // TOP BUTTONS MATCH IMAGES //
        // number 1
        if topButtonSymbolOne == 1 {
            caneN1.hidden = false
            candyN1.hidden = true
            popN1.hidden = true
        }
        if topButtonSymbolOne == 2 {
            caneN1.hidden = true
            candyN1.hidden = false
            popN1.hidden = true
        }
        if topButtonSymbolOne == 3 {
            caneN1.hidden = true
            candyN1.hidden = true
            popN1.hidden = false
        }
        // number 2
        if topButtonSymbolTwo == 1 {
            caneN2.hidden = false
            candyN2.hidden = true
            popN2.hidden = true
        }
        if topButtonSymbolTwo == 2 {
            caneN2.hidden = true
            candyN2.hidden = false
            popN2.hidden = true
        }
        if topButtonSymbolTwo == 3 {
            caneN2.hidden = true
            candyN2.hidden = true
            popN2.hidden = false
        }
        // number 3
        if topButtonSymbolThree == 1 {
            caneN3.hidden = false
            candyN3.hidden = true
            popN3.hidden = true
        }
        if topButtonSymbolThree == 2 {
            caneN3.hidden = true
            candyN3.hidden = false
            popN3.hidden = true
        }
        if topButtonSymbolThree == 3 {
            caneN3.hidden = true
            candyN3.hidden = true
            popN3.hidden = false
        }
        // number 4
        if topButtonSymbolFour == 1 {
            caneN4.hidden = false
            candyN4.hidden = true
            popN4.hidden = true
        }
        if topButtonSymbolFour == 2 {
            caneN4.hidden = true
            candyN4.hidden = false
            popN4.hidden = true
        }
        if topButtonSymbolFour == 3 {
            caneN4.hidden = true
            candyN4.hidden = true
            popN4.hidden = false
        }
        
        // BOTTOM BUTTONS MATCH IMAGES
        // 1
        if bottomButtonSymbolOne == 1 {
            caneB1.hidden = false
            candyB1.hidden = true
            popB1.hidden = true
        }
        if bottomButtonSymbolOne == 2 {
            caneB1.hidden = true
            candyB1.hidden = false
            popB1.hidden = true
        }
        if bottomButtonSymbolOne == 3 {
            caneB1.hidden = true
            candyB1.hidden = true
            popB1.hidden = false
        }
        
        // 2
        if bottomButtonSymbolOne == 1 {
            caneB2.hidden = false
            candyB2.hidden = true
            popB2.hidden = true
        }
        if bottomButtonSymbolOne == 2 {
            caneB2.hidden = true
            candyB2.hidden = false
            popB2.hidden = true
        }
        if bottomButtonSymbolOne == 3 {
            caneB2.hidden = true
            candyB2.hidden = true
            popB2.hidden = false
        }
        
        // 3
        if bottomButtonSymbolOne == 1 {
            caneB3.hidden = false
            candyB3.hidden = true
            popB3.hidden = true
        }
        if bottomButtonSymbolOne == 2 {
            caneB3.hidden = true
            candyB3.hidden = false
            popB3.hidden = true
        }
        if bottomButtonSymbolOne == 3 {
            caneB3.hidden = true
            candyB3.hidden = true
            popB3.hidden = false
        }
        
        // 4
        if bottomButtonSymbolOne == 1 {
            caneB4.hidden = false
            candyB4.hidden = true
            popB4.hidden = true
        }
        if bottomButtonSymbolOne == 2 {
            caneB4.hidden = true
            candyB4.hidden = false
            popB4.hidden = true
        }
        if bottomButtonSymbolOne == 3 {
            caneB4.hidden = true
            candyB4.hidden = true
            popB4.hidden = false
        }
        
        // 5
        if bottomButtonSymbolOne == 1 {
            caneB5.hidden = false
            candyB5.hidden = true
            popB5.hidden = true
        }
        if bottomButtonSymbolOne == 2 {
            caneB5.hidden = true
            candyB5.hidden = false
            popB5.hidden = true
        }
        if bottomButtonSymbolOne == 3 {
            caneB5.hidden = true
            candyB5.hidden = true
            popB5.hidden = false
        }
        
        // 6
        if bottomButtonSymbolOne == 1 {
            caneB6.hidden = false
            candyB6.hidden = true
            popB6.hidden = true
        }
        if bottomButtonSymbolOne == 2 {
            caneB6.hidden = true
            candyB6.hidden = false
            popB6.hidden = true
        }
        if bottomButtonSymbolOne == 3 {
            caneB6.hidden = true
            candyB6.hidden = true
            popB6.hidden = false
        }
        
        // 7
        if bottomButtonSymbolOne == 1 {
            caneB7.hidden = false
            candyB7.hidden = true
            popB7.hidden = true
        }
        if bottomButtonSymbolOne == 2 {
            caneB7.hidden = true
            candyB7.hidden = false
            popB7.hidden = true
        }
        if bottomButtonSymbolOne == 3 {
            caneB7.hidden = true
            candyB7.hidden = true
            popB7.hidden = false
        }
        
        // 8
        if bottomButtonSymbolOne == 1 {
            caneB8.hidden = false
            candyB8.hidden = true
            popB8.hidden = true
        }
        if bottomButtonSymbolOne == 2 {
            caneB8.hidden = true
            candyB8.hidden = false
            popB8.hidden = true
        }
        if bottomButtonSymbolOne == 3 {
            caneB8.hidden = true
            candyB8.hidden = true
            popB8.hidden = false
        }
        
        // 9
        if bottomButtonSymbolOne == 1 {
            caneB9.hidden = false
            candyB9.hidden = true
            popB9.hidden = true
        }
        if bottomButtonSymbolOne == 2 {
            caneB9.hidden = true
            candyB9.hidden = false
            popB9.hidden = true
        }
        if bottomButtonSymbolOne == 3 {
            caneB9.hidden = true
            candyB9.hidden = true
            popB9.hidden = false
        }
        
    }
    

    ////////////////////// NEW SYSTEM ////////////////////////
    
    ////// TOP BUTTONS RANDOM "SYMBOL" GENERATORS
    

    // number two
    func createTopButtonRandomSymbolNumTwo(){
        value = Int(arc4random_uniform(4) + 1)
        switch value {
        case 1: topButtonSymbolTwo = 1
        case 2: topButtonSymbolTwo = 2
        case 3: topButtonSymbolTwo = 3
        case 4: topButtonSymbolTwo = 4
        default: topButtonSymbolTwo = 10
        }
    }
    // number two
    func createTopButtonRandomSymbolNumThree(){
        value = Int(arc4random_uniform(4) + 1)
        switch value {
        case 1: topButtonSymbolThree = 1
        case 2: topButtonSymbolThree = 2
        case 3: topButtonSymbolThree = 3
        case 4: topButtonSymbolThree = 4
        default: topButtonSymbolThree = 10
        }
    }
    // number two
    func createTopButtonRandomSymbolNumFour(){
        value = Int(arc4random_uniform(4) + 1)
        switch value {
        case 1: topButtonSymbolFour = 1
        case 2: topButtonSymbolFour = 2
        case 3: topButtonSymbolFour = 3
        case 4: topButtonSymbolFour = 4
        default: topButtonSymbolFour = 10
        }
    }
    
    ////// BOTTOM BUTTONS RANDOM "SYMBOL" GENERATORS
    
    // number one
    func createBottomButtonRandomSymbolNumOne(){
        value = Int(arc4random_uniform(4) + 1)
        switch value {
        case 1: bottomButtonSymbolOne = 1
        case 2: bottomButtonSymbolOne = 2
        case 3: bottomButtonSymbolOne = 3
        case 4: bottomButtonSymbolOne = 4
        default: bottomButtonSymbolOne = 10
        }
    }
    // number two
    func createBottomButtonRandomSymbolNumTwo(){
        value = Int(arc4random_uniform(4) + 1)
        switch value {
        case 1: bottomButtonSymbolTwo = 1
        case 2: bottomButtonSymbolTwo = 2
        case 3: bottomButtonSymbolTwo = 3
        case 4: bottomButtonSymbolTwo = 4
        default: bottomButtonSymbolTwo = 10
        }
    }
    // number three
    func createBottomButtonRandomSymbolNumThree(){
        value = Int(arc4random_uniform(4) + 1)
        switch value {
        case 1: bottomButtonSymbolThree = 1
        case 2: bottomButtonSymbolThree = 2
        case 3: bottomButtonSymbolThree = 3
        case 4: bottomButtonSymbolThree = 4
        default: bottomButtonSymbolThree = 10
        }
    }
    // number four
    func createBottomButtonRandomSymbolNumFour(){
        value = Int(arc4random_uniform(4) + 1)
        switch value {
        case 1: bottomButtonSymbolFour = 1
        case 2: bottomButtonSymbolFour = 2
        case 3: bottomButtonSymbolFour = 3
        case 4: bottomButtonSymbolFour = 4
        default: bottomButtonSymbolFour = 10
        }
    }
    // number five
    func createBottomButtonRandomSymbolNumFive(){
        value = Int(arc4random_uniform(4) + 1)
        switch value {
        case 1: bottomButtonSymbolFive = 1
        case 2: bottomButtonSymbolFive = 2
        case 3: bottomButtonSymbolFive = 3
        case 4: bottomButtonSymbolFive = 4
        default: bottomButtonSymbolFive = 10
        }
    }
    // number six
    func createBottomButtonRandomSymbolNumSix(){
        value = Int(arc4random_uniform(4) + 1)
        switch value {
        case 1: bottomButtonSymbolSix = 1
        case 2: bottomButtonSymbolSix = 2
        case 3: bottomButtonSymbolSix = 3
        case 4: bottomButtonSymbolSix = 4
        default: bottomButtonSymbolSix = 10
        }
    }
    // number seven
    func createBottomButtonRandomSymbolNumSeven(){
        value = Int(arc4random_uniform(4) + 1)
        switch value {
        case 1: bottomButtonSymbolSeven = 1
        case 2: bottomButtonSymbolSeven = 2
        case 3: bottomButtonSymbolSeven = 3
        case 4: bottomButtonSymbolSeven = 4
        default: bottomButtonSymbolSeven = 10
        }
    }
    // number eight
    func createBottomButtonRandomSymbolNumEight(){
        value = Int(arc4random_uniform(4) + 1)
        switch value {
        case 1: bottomButtonSymbolEight = 1
        case 2: bottomButtonSymbolEight = 2
        case 3: bottomButtonSymbolEight = 3
        case 4: bottomButtonSymbolEight = 4
        default: bottomButtonSymbolEight = 10
        }
    }
    // number nine
    func createBottomButtonRandomSymbolNumNine(){
        value = Int(arc4random_uniform(4) + 1)
        switch value {
        case 1: bottomButtonSymbolNine = 1
        case 2: bottomButtonSymbolNine = 2
        case 3: bottomButtonSymbolNine = 3
        case 4: bottomButtonSymbolNine = 4
        default: bottomButtonSymbolNine = 10
        }
    }
    
    
    
    ////// TOP BUTTONS RANDOM "BACKGROUND" GENERATORS
    
    // number one
    func createTopButtonRandomColorNumOne(){
        value = Int(arc4random_uniform(4) + 1)
        switch value {
        case 1: topButtonBackgroundColorOne = 1
        case 2: topButtonBackgroundColorOne = 2
        case 3: topButtonBackgroundColorOne = 3
        case 4: topButtonBackgroundColorOne = 4
        default: topButtonBackgroundColorOne = 10
        }
    }
    // number two
    func createTopButtonRandomColorNumTwo(){
        value = Int(arc4random_uniform(4) + 1)
        switch value {
        case 1: topButtonBackgroundColorTwo = 1
        case 2: topButtonBackgroundColorTwo = 2
        case 3: topButtonBackgroundColorTwo = 3
        case 4: topButtonBackgroundColorTwo = 4
        default: topButtonBackgroundColorTwo = 10
        }
    }
    // number three
    func createTopButtonRandomColorNumThree(){
        value = Int(arc4random_uniform(4) + 1)
        switch value {
        case 1: topButtonBackgroundColorThree = 1
        case 2: topButtonBackgroundColorThree = 2
        case 3: topButtonBackgroundColorThree = 3
        case 4: topButtonBackgroundColorThree = 4
        default: topButtonBackgroundColorThree = 10
        }
    }
    // number four
    func createTopButtonRandomColorNumFour(){
        value = Int(arc4random_uniform(4) + 1)
        switch value {
        case 1: topButtonBackgroundColorFour = 1
        case 2: topButtonBackgroundColorFour = 2
        case 3: topButtonBackgroundColorFour = 3
        case 4: topButtonBackgroundColorFour = 4
        default: topButtonBackgroundColorFour = 10
        }
    }
    
    ////// BOTTOM BUTTONS RANDOM "BACKGROUND" GENERATORS
    
    // number one
    func createBottomButtonRandomColorNumOne(){
        value = Int(arc4random_uniform(4) + 1)
        switch value {
        case 1: bottomButtonBackgroundColorOne = 1
        case 2: bottomButtonBackgroundColorOne = 2
        case 3: bottomButtonBackgroundColorOne = 3
        case 4: bottomButtonBackgroundColorOne = 4
        default: bottomButtonBackgroundColorOne = 10
        }
    }
    // number two
    func createBottomButtonRandomColorNumTwo(){
        value = Int(arc4random_uniform(4) + 1)
        switch value {
        case 1: bottomButtonBackgroundColorTwo = 1
        case 2: bottomButtonBackgroundColorTwo = 2
        case 3: bottomButtonBackgroundColorTwo = 3
        case 4: bottomButtonBackgroundColorTwo = 4
        default: bottomButtonBackgroundColorTwo = 10
        }
    }
    // number three
    func createBottomButtonRandomColorNumThree(){
        value = Int(arc4random_uniform(4) + 1)
        switch value {
        case 1: bottomButtonBackgroundColorThree = 1
        case 2: bottomButtonBackgroundColorThree = 2
        case 3: bottomButtonBackgroundColorThree = 3
        case 4: bottomButtonBackgroundColorThree = 4
        default: bottomButtonBackgroundColorThree = 10
        }
    }
    // number four
    func createBottomButtonRandomColorNumFour(){
        value = Int(arc4random_uniform(4) + 1)
        switch value {
        case 1: bottomButtonBackgroundColorFour = 1
        case 2: bottomButtonBackgroundColorFour = 2
        case 3: bottomButtonBackgroundColorFour = 3
        case 4: bottomButtonBackgroundColorFour = 4
        default: bottomButtonBackgroundColorFour = 10
        }
    }
    // number five
    func createBottomButtonRandomColorNumFive(){
        value = Int(arc4random_uniform(4) + 1)
        switch value {
        case 1: bottomButtonBackgroundColorFive = 1
        case 2: bottomButtonBackgroundColorFive = 2
        case 3: bottomButtonBackgroundColorFive = 3
        case 4: bottomButtonBackgroundColorFive = 4
        default: bottomButtonBackgroundColorFive = 10
        }
    }
    // number six
    func createBottomButtonRandomColorNumSix(){
        value = Int(arc4random_uniform(4) + 1)
        switch value {
        case 1: bottomButtonBackgroundColorSix = 1
        case 2: bottomButtonBackgroundColorSix = 2
        case 3: bottomButtonBackgroundColorSix = 3
        case 4: bottomButtonBackgroundColorSix = 4
        default: bottomButtonBackgroundColorSix = 10
        }
    }
    // number seven
    func createBottomButtonRandomColorNumSeven(){
        value = Int(arc4random_uniform(4) + 1)
        switch value {
        case 1: bottomButtonBackgroundColorSeven = 1
        case 2: bottomButtonBackgroundColorSeven = 2
        case 3: bottomButtonBackgroundColorSeven = 3
        case 4: bottomButtonBackgroundColorSeven = 4
        default: bottomButtonBackgroundColorSeven = 10
        }
    }
    // number eight
    func createBottomButtonRandomColorNumEight(){
        value = Int(arc4random_uniform(4) + 1)
        switch value {
        case 1: bottomButtonBackgroundColorEight = 1
        case 2: bottomButtonBackgroundColorEight = 2
        case 3: bottomButtonBackgroundColorEight = 3
        case 4: bottomButtonBackgroundColorEight = 4
        default: bottomButtonBackgroundColorEight = 10
        }
    }
    // number nine
    func createBottomButtonRandomColorNumNine(){
        value = Int(arc4random_uniform(4) + 1)
        switch value {
        case 1: bottomButtonBackgroundColorNine = 1
        case 2: bottomButtonBackgroundColorNine = 2
        case 3: bottomButtonBackgroundColorNine = 3
        case 4: bottomButtonBackgroundColorNine = 4
        default: bottomButtonBackgroundColorNine = 10
        }
    }
   
    
}
