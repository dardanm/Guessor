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

    ///// generate
    func generateTopAndBottomButtons(){
        
        // top buttons
        generateTopButtons()
        
        // bottom buttons
        generateBottomButtons()
        
    }
    
    
    func generateTopButtons(){
        oneButtonTop = Button(button: topButtonNumberOne)
        twoButtonTop = Button(button: topButtonNumberTwo)
        threeButtonTop = Button(button: topButtonNumberThree)
        fourButtonTop = Button(button: topButtonNumberFour)

    }
    
    
    func generateBottomButtons(){
        
        oneButtonBottom = Button(button: bottomButtonNumberOne)
        twoButtonBottom = Button(button: bottomButtonNumberTwo)
        threeButtonBottom = Button(button: bottomButtonNumberThree)
        
        fourButtonBottom = Button(button: bottomButtonNumberFour)
        fiveButtonBottom = Button(button: bottomButtonNumberFive)
        sixButtonBottom = Button(button: bottomButtonNumberSix)
        
        sevenButtonBottom = Button(button: bottomButtonNumberSeven)
        eightButtonBottom = Button(button: bottomButtonNumberEight)
        nineButtonBottom = Button(button: bottomButtonNumberNine)
        
    }
    
}
