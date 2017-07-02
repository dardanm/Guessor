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
            pointsTarget = 150
            topButtons = [topButtonNumberOne,topButtonNumberTwo,topButtonNumberThree,topButtonNumberFour]
            setSmallNumbers(arr: [1,2,3,4])
        
        case 2:
            pointsTarget = 200
            topButtons = [topButtonNumberTwo,topButtonNumberOne,topButtonNumberThree, topButtonNumberFour]
            setSmallNumbers(arr: [2,1,3,4])
 
        default:
            pointsTarget = 50
            
        }

    }

}
