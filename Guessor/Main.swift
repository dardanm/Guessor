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
import SwiftColor
import SpriteKit

extension BaseLevel {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        topButtons = [tbn1,tbn2,tbn3,tbn4]
        topSmallNumbers = [snt1,snt2,snt3,snt4]
        bottomButtons = [bbn1,bbn2,bbn3,bbn4]
        
        colorPickArray = ["#857AFF","#F7B220","#F77C2C","#A7CFFF"]
        iconPickArray = ["cane.png","candy.png","candy.png"]
        
        generateTopAndBottomButtons()

        worldOneLevels()
        
        setupScene()
        
        startTimer()
        
    }

    
}
