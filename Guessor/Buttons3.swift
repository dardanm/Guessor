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

    ////////////////////// NEW SYSTEM ////////////////////////
    
    ////// TOP BUTTONS RANDOM "SYMBOL" GENERATORS
    
    // number one
    func createTopButtonRandomSymbolNumOne(){
        value = Int(arc4random_uniform(4) + 1)
        switch value {
        case 1: topButtonSymbolOne = 1
        case 2: topButtonSymbolOne = 2
        case 3: topButtonSymbolOne = 3
        case 4: topButtonSymbolOne = 4
        default: topButtonSymbolOne = 10
        }
    }
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
