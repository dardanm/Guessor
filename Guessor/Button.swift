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
import UIColor_Hex_Swift


extension UIButton {

    
    // BACKGROUND COLOR
    func randomColor(){
        var back = 1
        back = Int(arc4random_uniform(4) + 1)
        if back == 1 {
            self.backgroundColor = UIColor("#857AFF")
        }
        if back == 2 {
            self.backgroundColor = UIColor("#f7b220")
        }
        if back == 3 {
            self.backgroundColor = UIColor("#f77c2c")
        }
        if back == 4 {
            self.backgroundColor = UIColor("#a7cfff")
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
        self.backgroundColor = UIColor("#96F10D")
    }
    
    func makeBackgroundRed(){
        self.backgroundColor = UIColor("#FB5737")
    }
    
    
} // END CLASS

