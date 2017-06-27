//
//  CoreOptions.swift
//  Guessor
//
//  Created by Dardan on 3/19/16.
//  Copyright © 2016 Meha. All rights reserved.
//

import UIKit
import AVFoundation
import QuartzCore

extension BaseLevel {
    
    // LOCK PORTRAIT
    override var shouldAutorotate : Bool {
        if (UIDevice.current.orientation == UIDeviceOrientation.landscapeLeft ||
            UIDevice.current.orientation == UIDeviceOrientation.landscapeRight ||
            UIDevice.current.orientation == UIDeviceOrientation.unknown) {
                return false
        }
        else {
            return true
        }
    }
    
    override var supportedInterfaceOrientations : UIInterfaceOrientationMask {
        return [UIInterfaceOrientationMask.portrait ,UIInterfaceOrientationMask.portraitUpsideDown]
    }
    
    func updateTimer(){
        for i in 0...9 {
            for j in 0...1 {
                if count >= 10 {
                    progressTimer.progress = 1.0
                }
                if count == Float(i) {
                    progressTimer.progress = Float(j)
                } else {
                    progressTimer.progress = -1
                }
            }
        }
    }
    
}
