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
        
        for i in 0..<topButtons.count {
            topButtons[i].randomColorAndImage()
        }
        
    }
    
    
    func generateBottomButtons(){
    
        for i in 0..<bottomButtons.count {
            bottomButtons[i].randomColorAndImage()
        }
        
    }


    
}
