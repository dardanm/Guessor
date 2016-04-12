//
//  Buttons.swift
//  Guessor
//
//  Created by Dardan on 3/19/16.
//  Copyright © 2016 Meha. All rights reserved.
//

import UIKit
import AVFoundation
import QuartzCore

extension BaseLevel {
    
    // ========= GUI / BUTTONS
    

    
    func disableButtons(){
        botOneButtonColor.enabled = false
        botTwoButtonColor.enabled = false
        botThreeButtonColor.enabled = false
        botFourButtonColor.enabled = false
        botFiveButtonColor.enabled = false
        botSixButtonColor.enabled = false
        botSevenButtonColor.enabled = false
        botEightButtonColor.enabled = false
        botNineButtonColor.enabled = false
        generateLabel.enabled = false
    }
    
    func enableButtons(){
        botOneButtonColor.enabled = true
        botTwoButtonColor.enabled = true
        botThreeButtonColor.enabled = true
        botFourButtonColor.enabled = true
        botFiveButtonColor.enabled = true
        botSixButtonColor.enabled = true
        botSevenButtonColor.enabled = true
        botEightButtonColor.enabled = true
        botNineButtonColor.enabled = true
        generateLabel.enabled = true
    }

    
    func generateButtonImages(){

        updateTopOneImage()
        updateTopTwoImage()
        updateTopThreeImage()
        updateTopFourImage()
        
        updateBotOneImage()
        updateBotTwoImage()
        updateBotThreeImage()
        updateBotFourImage()
        updateBotFiveImage()
        updateBotSixImage()
        updateBotSevenImage()
        updateBotEightImage()
        updateBotNineImage()
 
    }
    
    func updateButtonBackground(){
        
        updateTopOneColorBackground()
        updateTopTwoColorBackground()
        updateTopThreeColorBackground()
        updateTopFourColorBackground()
        
        updateBotOneColorBackground()
        updateBotTwoColorBackground()
        updateBotThreeColorBackground()
        updateBotFourColorBackground()
        updateBotFiveColorBackground()
        updateBotSixColorBackground()
        updateBotSevenColorBackground()
        updateBotEightColorBackground()
        updateBotNineColorBackground()
        
    }
    
    
    func realRandomGeneratorFirst(){
        generateTopAndBottomButtons()
        check3()
        numberCheck()
        
        while trueOrNot == false {
            generateTopAndBottomButtons()
            check3()
            numberCheck()
        }
    }
    
    func numberCheck(){
        numberOneNoMatchCheck()
        numberTwoNoMatchCheck()
        numberThreeNoMatchCheck()
        numberFourNoMatchCheck()
    }
    
    
    func numberOneNoMatchCheck(){
        if
            (
                    !(topOneSymbol == botOneSymbol && topOneColorBackground == botOneColorBackground) &&
                    !(topOneSymbol == botTwoSymbol && topOneColorBackground == botTwoColorBackground) &&
                    !(topOneSymbol == botThreeSymbol && topOneColorBackground == botThreeColorBackground) &&
                    !(topOneSymbol == botFourSymbol && topOneColorBackground == botFourColorBackground) &&
                    !(topOneSymbol == botFiveSymbol && topOneColorBackground == botFiveColorBackground) &&
                    !(topOneSymbol == botSixSymbol && topOneColorBackground == botSixColorBackground) &&
                    !(topOneSymbol == botSevenSymbol && topOneColorBackground == botSevenColorBackground) &&
                    !(topOneSymbol == botEightSymbol && topOneColorBackground == botEightColorBackground) &&
                    !(topOneSymbol == botNineSymbol && topOneColorBackground == botNineColorBackground)
            )
        {trueOrNot = false}
    }
    
    func numberTwoNoMatchCheck(){
        if
            (
                    !(topTwoSymbol == botOneSymbol && topTwoColorBackground == botOneColorBackground) &&
                    !(topTwoSymbol == botTwoSymbol && topTwoColorBackground == botTwoColorBackground) &&
                    !(topTwoSymbol == botThreeSymbol && topTwoColorBackground == botThreeColorBackground) &&
                    !(topTwoSymbol == botFourSymbol && topTwoColorBackground == botFourColorBackground) &&
                    !(topTwoSymbol == botFiveSymbol && topTwoColorBackground == botFiveColorBackground) &&
                    !(topTwoSymbol == botSixSymbol && topTwoColorBackground == botSixColorBackground) &&
                    !(topTwoSymbol == botSevenSymbol && topTwoColorBackground == botSevenColorBackground) &&
                    !(topTwoSymbol == botEightSymbol && topTwoColorBackground == botEightColorBackground) &&
                    !(topTwoSymbol == botNineSymbol && topTwoColorBackground == botNineColorBackground)
            )
        {trueOrNot = false}
    }

    func numberThreeNoMatchCheck(){
        if
            (
                    !(topThreeSymbol == botOneSymbol && topThreeColorBackground == botOneColorBackground) &&
                    !(topThreeSymbol == botTwoSymbol && topThreeColorBackground == botTwoColorBackground) &&
                    !(topThreeSymbol == botThreeSymbol && topThreeColorBackground == botThreeColorBackground) &&
                    !(topThreeSymbol == botFourSymbol && topThreeColorBackground == botFourColorBackground) &&
                    !(topThreeSymbol == botFiveSymbol && topThreeColorBackground == botFiveColorBackground) &&
                    !(topThreeSymbol == botSixSymbol && topThreeColorBackground == botSixColorBackground) &&
                    !(topThreeSymbol == botSevenSymbol && topThreeColorBackground == botSevenColorBackground) &&
                    !(topThreeSymbol == botEightSymbol && topThreeColorBackground == botEightColorBackground) &&
                    !(topThreeSymbol == botNineSymbol && topThreeColorBackground == botNineColorBackground)
            )
        {trueOrNot = false}
    }
    
    func numberFourNoMatchCheck(){
        if
            (
                    !(topFourSymbol == botOneSymbol && topFourColorBackground == botOneColorBackground) &&
                    !(topFourSymbol == botTwoSymbol && topFourColorBackground == botTwoColorBackground) &&
                    !(topFourSymbol == botThreeSymbol && topFourColorBackground == botThreeColorBackground) &&
                    !(topFourSymbol == botFourSymbol && topFourColorBackground == botFourColorBackground) &&
                    !(topFourSymbol == botFiveSymbol && topFourColorBackground == botFiveColorBackground) &&
                    !(topFourSymbol == botSixSymbol && topFourColorBackground == botSixColorBackground) &&
                    !(topFourSymbol == botSevenSymbol && topFourColorBackground == botSevenColorBackground) &&
                    !(topFourSymbol == botEightSymbol && topFourColorBackground == botEightColorBackground) &&
                    !(topFourSymbol == botNineSymbol && topFourColorBackground == botNineColorBackground)
            )
        {trueOrNot = false}
    }
    
    
    
    func check3(){
        
        if
        (
        topOneColorBackground == topTwoColorBackground ||
        topOneColorBackground == topThreeColorBackground ||
        topOneColorBackground == topFourColorBackground ||
        topTwoColorBackground == topThreeColorBackground ||
        topTwoColorBackground == topFourColorBackground ||
        topThreeColorBackground == topFourColorBackground
        
        )
        {trueOrNot = false
        }else {trueOrNot = true}
        
        
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