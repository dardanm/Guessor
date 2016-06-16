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
