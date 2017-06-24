//
//  TopButton.swift
//  Guessor
//
//  Created by Dardan on 4/12/16.
//  Copyright © 2016 Meha. All rights reserved.
//

import Foundation
import UIKit
import AVFoundation
import QuartzCore

class Button {

    var symb:Int = 1
    var back:Int = 1
    
    init(button :UIButton) {
        
        self.randomColor(buttonBackgroundColor: button)
        self.randomImage(button: button)
        
    }
    
    // BACKGROUND COLOR
    func randomColor(buttonBackgroundColor:UIButton){
        
        back = Int(arc4random_uniform(4) + 1)
        if back == 1 {
            buttonBackgroundColor.backgroundColor = UIColor(netHex: 0x857AFF)
        }
        if back == 2 {
            buttonBackgroundColor.backgroundColor = UIColor(netHex: 0xf7b220)
        }
        if back == 3 {
            buttonBackgroundColor.backgroundColor = UIColor(netHex: 0xf77c2c)
        }
        if back == 4 {
            buttonBackgroundColor.backgroundColor = UIColor(netHex: 0xa7cfff)
        }
    }

    
    // Update top button image
    func randomImage(button: UIButton){
        
        symb = Int(arc4random_uniform(3) + 1)

        if symb == 1 {
            button.setImage(UIImage(named: "cane.png"), for: UIControlState.normal)
        }
        if symb == 2 {
            button.setImage(UIImage(named: "candy.png"), for: UIControlState.normal)
        }
        if symb == 3 {
            button.setImage(UIImage(named: "pop.png"), for: UIControlState.normal)
        }
    }

    
    func makeBackgroundGreen(buttonBackground:UIButton){
        buttonBackground.backgroundColor = UIColor(netHex: 0x96F10D)
        
    }
    
    func makeBackgroundRed(buttonBackground:UIButton){
        buttonBackground.backgroundColor = UIColor(netHex: 0xFB5737)
    }
    
    
} // END CLASS

