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

    func generateTopAndBottomButtons(){
        generateTopButtons()
        generateAtLeastOneMatchBottomButtons()
    }
    
    func generateTopButtons(){
        for i in 0..<topButtons.count {
            topButtons[i].randomColorAndImage()
        }
    }
    
    func generateBottomButtons(){
        for i in 0..<bottomButtons.count {
            bottomButtons[i].randomColorAndImage()
        }
    }
    
    func generateAtLeastOneMatchBottomButtons(){
        generateBottomButtons()
        
        let temp = Int(arc4random_uniform((UInt32(bottomButtons.count))) + 1)

        for i in 0..<temp {
            while (bottomButtons[i].backgroundColor != topButtons[runOrNot].backgroundColor ||
                   bottomButtons[i].currentImage != topButtons[runOrNot].currentImage){
                   generateBottomButtons()
                    generateBottomButtons()
            }
        }
    }
    
    func makeThisButtonMatchTopButton(b: UIButton){
        
    }

}
