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
    
    func generateAtLeastOneMatchBottomButtons() {
        generateBottomButtons()
        
        var temp = Int(arc4random_uniform((UInt32(topButtons.count)+1)))
        
        print(temp)
        for i in 0..<temp {
            while (bottomButtons[i].backgroundColor != topButtons[buttonIndex].backgroundColor ||
                bottomButtons[i].currentImage?.imageAsset != topButtons[buttonIndex].currentImage?.imageAsset){
                    generateBottomButtons()
            }
        }
    }
    
}
