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
        for i in 0..<topButtonsCollection!.count {
            topButtonsCollection![i].randomColorAndImage()
        }
    }
    
    func generateBottomButtons(){
        for i in 0..<bottomButtonsCollection!.count {
            bottomButtonsCollection![i].randomColorAndImage()
        }
    }
    
    func generateAtLeastOneMatchBottomButtons(){
        generateBottomButtons()
        
        let temp = Int(arc4random_uniform((UInt32(bottomButtonsCollection!.count))) + 1)
        for i in 0..<temp {
            while (bottomButtonsCollection?[i].backgroundColor != topButtonsCollection?[buttonIndex].backgroundColor ||
                   bottomButtonsCollection?[i].currentImage?.imageAsset != topButtonsCollection?[buttonIndex].currentImage?.imageAsset){
                   generateBottomButtons()
                   generateBottomButtons()
            }
        }
    }
    
    func makeThisButtonMatchTopButton(b: UIButton){
        
    }

}
