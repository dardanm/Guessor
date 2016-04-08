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


    
    ////// BOTTOM BUTTONS RANDOM "SYMBOL" GENERATORS
    


    // number three

    // number four

    // number five

    // number six

    // number seven

    // number eight

    // number nine

    
    
    
    ////// TOP BUTTONS RANDOM "BACKGROUND" GENERATORS
    
    // number one

    // number two

    // number three

    // number four

    
    ////// BOTTOM BUTTONS RANDOM "BACKGROUND" GENERATORS
    
    // number one

    // number two

    // number three

    // number four

    // number five

    // number six

    // number seven

    // number eight

    // number nine

   
    
}
