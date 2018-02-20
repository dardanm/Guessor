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
import SwiftColor

extension UIButton {
    
    func randomColor() {
        back = Int(arc4random_uniform(UInt32(colorPickArray.count)))
        self.backgroundColor = UIColor(colorPickArray[back])
    }

    func randomImage() {
        symb = Int(arc4random_uniform(3))
        self.setImage(UIImage(named: iconPickArray[symb]), for: UIControlState.normal)
    }
    
    func randomColorAndImage() {
        self.randomImage()
        self.randomColor()
    }

    func makeBackgroundGreen() { self.backgroundColor = UIColor("#96F10D") }
    func makeBackgroundRed() { self.backgroundColor = UIColor("#FB5737") }
    
    
}
