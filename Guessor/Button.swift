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

extension UIButton {

    
    // BACKGROUND COLOR
    func randomColor(){
        var back = 1
        back = Int(arc4random_uniform(4) + 1)
        if back == 1 {
            self.backgroundColor = UIColor(netHex: 0x857AFF)
        }
        if back == 2 {
            self.backgroundColor = UIColor(netHex: 0xf7b220)
        }
        if back == 3 {
            self.backgroundColor = UIColor(netHex: 0xf77c2c)
        }
        if back == 4 {
            self.backgroundColor = UIColor(netHex: 0xa7cfff)
        }
    }

    
    // Update top button image
    func randomImage(){
        
        var symb = 1
        symb = Int(arc4random_uniform(3) + 1)

        if symb == 1 {
            self.setImage(UIImage(named: "cane.png"), for: UIControlState.normal)
        }
        if symb == 2 {
            self.setImage(UIImage(named: "candy.png"), for: UIControlState.normal)
        }
        if symb == 3 {
            self.setImage(UIImage(named: "pop.png"), for: UIControlState.normal)
        }
    }
    
    func randomColorAndImage(){
        self.randomImage()
        self.randomColor()
    }

    
    func makeBackgroundGreen(){
        self.backgroundColor = UIColor(netHex: 0x96F10D)
        
    }
    
    func makeBackgroundRed(){
        self.backgroundColor = UIColor(netHex: 0xFB5737)
    }
    
    
} // END CLASS

