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
    
    // switch variable
    //var value = 0

    
    var symb:Int = 1
    var back:Int = 1
    var labelcolor:UILabel?
    
    var cane: UIImageView?
    var candy: UIImageView?
    var pop: UIImageView?
    var label: UILabel?
    
    init(buttonBackground:UILabel, buttonCane:UIImageView, buttonCandy:UIImageView, buttonPop:UIImageView) {
        
        self.randomImage(cane: buttonCane, candy: buttonCandy, pop: buttonPop)
        self.randomColor(buttonBackground)
        
    }
    
    init(buttonBackground:UIButton, buttonCane:UIImageView, buttonCandy:UIImageView, buttonPop:UIImageView) {
        
        self.randomImage(cane: buttonCane, candy: buttonCandy, pop: buttonPop)
        self.randomColor(buttonBackground)
        
    }

    
    
    // BACKGROUND COLOR
    func randomColor(_ labelcolor:UILabel){
        
        back = randomize()
        if back == 1 {
            labelcolor.backgroundColor = UIColor(netHex: 0x857AFF)
        }
        if back == 2 {
            labelcolor.backgroundColor = UIColor(netHex: 0xf7b220)
        }
        if back == 3 {
            labelcolor.backgroundColor = UIColor(netHex: 0xf77c2c)
        }
        if back == 4 {
            labelcolor.backgroundColor = UIColor(netHex: 0xa7cfff)
        }
    }
    
    // BACKGROUND COLOR
    func randomColor(_ labelcolor:UIButton){
        
        back = randomize()
        if back == 1 {
            labelcolor.backgroundColor = UIColor(netHex: 0x857AFF)
        }
        if back == 2 {
            labelcolor.backgroundColor = UIColor(netHex: 0xf7b220)
        }
        if back == 3 {
            labelcolor.backgroundColor = UIColor(netHex: 0xf77c2c)
        }
        if back == 4 {
            labelcolor.backgroundColor = UIColor(netHex: 0xa7cfff)
        }
    }

    
    // Update top button image
    func randomImage(cane:UIImageView, candy:UIImageView, pop:UIImageView){
        symb = randomize()
        if symb == 1 {
            cane.isHidden = false
            candy.isHidden = true
            pop.isHidden = true
        }
        if symb == 2 {
            cane.isHidden = true
            candy.isHidden = false
            pop.isHidden = true
        }
        if symb == 3 {
            cane.isHidden = true
            candy.isHidden = true
            pop.isHidden = false
        }
    }

    
    func setImage(cane:UIImageView, candy:UIImageView, pop:UIImageView, s:Int){
        symb = randomize()
        
        if symb == 1 {
            cane.isHidden = false
            candy.isHidden = true
            pop.isHidden = true
        }
        if symb == 2 {
            cane.isHidden = true
            candy.isHidden = false
            pop.isHidden = true
        }
        if symb == 3 {
            cane.isHidden = true
            candy.isHidden = true
            pop.isHidden = false
        }
    }
    
    // randomize
    func randomize() -> Int{
        var value = 0
        value = Int(arc4random_uniform(4) + 1)
        return value
    }
    
    func makeBackgroundGreen(buttonBackground:UILabel){
        buttonBackground.backgroundColor = UIColor(netHex: 0x96F10D)
    }
    
    func makeBackgroundRed(buttonBackground:UILabel){
        buttonBackground.backgroundColor = UIColor(netHex: 0xFB5737)
    }


    

    
    
    
    
    
} // END CLASS

