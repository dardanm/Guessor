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
        // change opacity
        // change color buttons
        topBackground.layer.opacity = 0.1
        topBackgroundScore.layer.opacity = 0.2
        middleBackground.layer.opacity = 0.1
        bottomBackground.layer.opacity = 0.1
        
//        topBigOneColor.layer.opacity = 0.1
//        topBigTwoColor.layer.opacity = 0.1
//        topBigThreeColor.layer.opacity = 0.1
//        topBigFourColor.layer.opacity = 0.1
        
        coinLabel.textColor = UIColor(netHex: 0xffffff)
        
//        pipe1.backgroundColor = UIColor(netHex: 0xffffff)
//        pipe2.backgroundColor = UIColor(netHex: 0xffffff)
//        pipe3.backgroundColor = UIColor(netHex: 0xffffff)
//        pipe1.layer.opacity = 0.1
//        pipe2.layer.opacity = 0.1
//        pipe3.layer.opacity = 0.1
        
        topSmallOneSymbol.textColor = UIColor(netHex: 0xffffff)
        topSmallTwoSymbol.textColor = UIColor(netHex: 0xffffff)
        topSmallThreeSymbol.textColor = UIColor(netHex: 0xffffff)
        topSmallFourSymbol.textColor = UIColor(netHex: 0xffffff)
        topSmallOneColor.backgroundColor = UIColor(netHex: 0x000000)
        topSmallTwoColor.backgroundColor = UIColor(netHex: 0x000000)
        topSmallThreeColor.backgroundColor = UIColor(netHex: 0x000000)
        topSmallFourColor.backgroundColor = UIColor(netHex: 0x000000)
        topSmallOneColor.layer.opacity = 0.2
        topSmallTwoColor.layer.opacity = 0.2
        topSmallThreeColor.layer.opacity = 0.2
        topSmallFourColor.layer.opacity = 0.2
        
    }
    
    func whiteBackground(){
        topBackground.layer.opacity = 1.0
        topBackgroundScore.layer.opacity = 1.0
        middleBackground.layer.opacity = 1.0
        bottomBackground.layer.opacity = 1.0
        
//        topBigOneColor.layer.opacity = 1.0
//        topBigTwoColor.layer.opacity = 1.0
//        topBigThreeColor.layer.opacity = 1.0
//        topBigFourColor.layer.opacity = 1.0
        
        coinLabel.textColor = UIColor(netHex: 0xa3a3a3)
        
//        pipe1.backgroundColor = UIColor(netHex: 0xffffff)
//        pipe2.backgroundColor = UIColor(netHex: 0xffffff)
//        pipe3.backgroundColor = UIColor(netHex: 0xffffff)
//        pipe1.layer.opacity = 1.0
//        pipe2.layer.opacity = 1.0
//        pipe3.layer.opacity = 1.0
        
        topSmallOneSymbol.textColor = UIColor(netHex: 0x7f7f7f)
        topSmallTwoSymbol.textColor = UIColor(netHex: 0x7f7f7f)
        topSmallThreeSymbol.textColor = UIColor(netHex: 0x7f7f7f)
        topSmallFourSymbol.textColor = UIColor(netHex: 0x7f7f7f)
        topSmallOneColor.backgroundColor = UIColor(netHex: 0xffffff)
        topSmallTwoColor.backgroundColor = UIColor(netHex: 0xffffff)
        topSmallThreeColor.backgroundColor = UIColor(netHex: 0xffffff)
        topSmallFourColor.backgroundColor = UIColor(netHex: 0xffffff)
        topSmallOneColor.layer.opacity = 1.0
        topSmallTwoColor.layer.opacity = 1.0
        topSmallThreeColor.layer.opacity = 1.0
        topSmallFourColor.layer.opacity = 1.0
        
    }
    
    func mixBackground(){
        topBackground.layer.opacity = 0.1
        topBackgroundScore.layer.opacity = 0.2
        middleBackground.layer.opacity = 0.3
        bottomBackground.layer.opacity = 0.1
        
//        topBigOneColor.layer.opacity = 0.3
//        topBigTwoColor.layer.opacity = 0.3
//        topBigThreeColor.layer.opacity = 0.3
//        topBigFourColor.layer.opacity = 0.3
        
        coinLabel.textColor = UIColor(netHex: 0xffffff)
        
//        pipe1.backgroundColor = UIColor(netHex: 0xffffff)
//        pipe2.backgroundColor = UIColor(netHex: 0xffffff)
//        pipe3.backgroundColor = UIColor(netHex: 0xffffff)
//        pipe1.layer.opacity = 0.3
//        pipe2.layer.opacity = 0.3
//        pipe3.layer.opacity = 0.3
        
        topSmallOneSymbol.textColor = UIColor(netHex: 0xffffff)
        topSmallTwoSymbol.textColor = UIColor(netHex: 0xffffff)
        topSmallThreeSymbol.textColor = UIColor(netHex: 0xffffff)
        topSmallFourSymbol.textColor = UIColor(netHex: 0xffffff)
        topSmallOneColor.backgroundColor = UIColor(netHex: 0x000000)
        topSmallTwoColor.backgroundColor = UIColor(netHex: 0x000000)
        topSmallThreeColor.backgroundColor = UIColor(netHex: 0x000000)
        topSmallFourColor.backgroundColor = UIColor(netHex: 0x000000)
        topSmallOneColor.layer.opacity = 0.2
        topSmallTwoColor.layer.opacity = 0.2
        topSmallThreeColor.layer.opacity = 0.2
        topSmallFourColor.layer.opacity = 0.2
        
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
