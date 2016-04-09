//
//  Buttons2.swift
//  Guessor
//
//  Created by Dardan on 4/7/16.
//  Copyright © 2016 Meha. All rights reserved.
//

import UIKit
import AVFoundation
import QuartzCore

extension BaseLevel {

    func blackBackground(){
        // insert code here
        // change opacity
        // change color buttons
        topBackground.layer.opacity = 0.1
        topBackgroundScore.layer.opacity = 0.1
        topBackgroundNumbers.layer.opacity = 0.1
        middleBackground.layer.opacity = 0.1
        bottomBackground.layer.opacity = 0.1
        coinLabel.textColor = UIColor(netHex: 0xffffff)
        
    }
    
    func whiteBackground(){
        // insert code here
        topBackground.layer.opacity = 1.0
        topBackgroundScore.layer.opacity = 1.0
        topBackgroundNumbers.layer.opacity = 1.0
        middleBackground.layer.opacity = 1.0
        bottomBackground.layer.opacity = 1.0
        coinLabel.textColor = UIColor(netHex: 0xa3a3a3)
    }
    
    func mixBackground(){
        // insert code here
        topBackground.layer.opacity = 0.5
        topBackgroundScore.layer.opacity = 0.5
        topBackgroundNumbers.layer.opacity = 0.5
        middleBackground.layer.opacity = 0.5
        bottomBackground.layer.opacity = 0.5
        coinLabel.textColor = UIColor(netHex: 0xffffff)
    }
    
    
    // new system
    
    func generateTopAndBottomButtons(){
        
        // top numbers randomize
        createTopOneSymbolRandom()
        createTopTwoSymbolRandom()
        createTopThreeSymbolRandom()
        createTopFourSymbolRandom()
        
        createTopOneColorRandom()
        createTopTwoColorRandom()
        createTopThreeColorRandom()
        createTopFourColorRandom()
        
        // bottom numbers randomize
        createBotOneSymbolRandom()
        createBotTwoSymbolRandom()
        createBotThreeSymbolRandom()
        createBotFourSymbolRandom()
        createBotFiveSymbolRandom()
        createBotSixSymbolRandom()
        createBotSevenSymbolRandom()
        createBotEightSymbolRandom()
        createBotNineSymbolRandom()
        
        createBotOneColorRandom()
        createBotTwoColorRandom()
        createBotThreeColorRandom()
        createBotFourColorRandom()
        createBotFiveColorRandom()
        createBotSixColorRandom()
        createBotSevenColorRandom()
        createBotEightColorRandom()
        createBotNineColorRandom()
        
        generateButtonImages()
        updateButtonBackground()
        
    }
    
    
    
    
    
    
    
    

}
