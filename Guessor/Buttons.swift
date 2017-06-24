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
        topButtonUno = Button(buttonBackground: topButtonNumberOne, buttonCane: caneN1, buttonCandy: candyN1, buttonPop: popN1)

    }
    
    
    func generateBottomButtons(){
        
        botButtonUno = Button(buttonBackground: bottomButtonNumberOne, buttonCane: caneB1, buttonCandy: candyB1, buttonPop: popB1)
        botButtonDos = Button(buttonBackground: bottomButtonNumberTwo, buttonCane: caneB2, buttonCandy: candyB2, buttonPop: popB2)
        botButtonTres = Button(buttonBackground: bottomButtonNumberThree, buttonCane: caneB3, buttonCandy: candyB3, buttonPop: popB3)

        
        
        
    }
    
}
