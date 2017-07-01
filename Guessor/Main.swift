//
//  Main.swift
//  Guessor
//
//  Created by Dardan on 3/25/16.
//  Copyright © 2016 Meha. All rights reserved.
//

import UIKit
import AVFoundation
import QuartzCore
import UIColor_Hex_Swift
import SpriteKit

extension BaseLevel {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        pointsTarget = 200

        topButtons = [topButtonNumberOne,topButtonNumberTwo,topButtonNumberThree,topButtonNumberFour]
        bottomButtons = [bottomButtonNumberOne,bottomButtonNumberTwo,bottomButtonNumberThree,bottomButtonNumberFour]
        
        colorPickArray = ["#857AFF","#F7B220","#F77C2C","#A7CFFF"]
        iconPickArray = ["cane.png","candy.png","candy.png"]
        
        setupScene()
        startTimer()
    }


    
}
