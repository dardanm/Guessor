//
//  Levels.swift
//  Guessor
//
//  Created by Dardan Meha on 7/1/17.
//  Copyright © 2017 Meha. All rights reserved.
//

import UIKit
import AVFoundation
import QuartzCore
import UIColor_Hex_Swift
import SpriteKit

extension BaseLevel {

    func worldOneLevels(){
        
        switch level {
            
        case 1:
            pointsTarget = 100
            
            colorPickArray = ["#857AFF","#F7B220","#F77C2C","#A7CFFF"]
            iconPickArray = ["cane.png","candy.png","candy.png"]
            
            topButtons = [tbn1,tbn2,tbn3,tbn4]
            
        default:
            pointsTarget = 50
            
        }

    }

}

