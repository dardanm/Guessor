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


class TopButton : BaseLevel {
    
    var symb:Int = 0
    var back:Int = 0
    var labelcolor:UILabel?
    
    var cane: UIImageView?
    var candy: UIImageView?
    var pop: UIImageView?
    var label: UILabel?
    
    // Update top button image
    func randomImage(_ cane:UIImageView, candy:UIImageView, pop:UIImageView){
        value = Int(arc4random_uniform(3) + 1)
        switch value {
        case 1: symb = 1
        case 2: symb = 2
        case 3: symb = 3
        default: symb = 10
        }
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
        value = s
        switch value {
        case 1: symb = 1
        case 2: symb = 2
        case 3: symb = 3
        default: symb = 10
        }
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

    
    // BACKGROUND COLOR
    func randomColor(_ labelcolor:UILabel){
        value = Int(arc4random_uniform(4) + 1)
        switch value {
        case 1: back = 1
        case 2: back = 2
        case 3: back = 3
        case 4: back = 4
        default: back = 10
        }
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
    
    
    
    
    
} // END CLASS

