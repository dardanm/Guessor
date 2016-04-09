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
    

    
//    func disableButtons(){
//        botOneButtonColor.enabled = false
//        buttonTwoLabel.enabled = false
//        buttonThreeLabel.enabled = false
//        buttonFourLabel.enabled = false
//        buttonFiveLabel.enabled = false
//        buttonSixLabel.enabled = false
//        buttonSevenLabel.enabled = false
//        buttonEightLabel.enabled = false
//        buttonNineLabel.enabled = false
//        generateLabel.enabled = false
//    }
//    
//    func enableButtons(){
//        buttonOneLabel.enabled = true
//        buttonTwoLabel.enabled = true
//        buttonThreeLabel.enabled = true
//        buttonFourLabel.enabled = true
//        buttonFiveLabel.enabled = true
//        buttonSixLabel.enabled = true
//        buttonSevenLabel.enabled = true
//        buttonEightLabel.enabled = true
//        buttonNineLabel.enabled = true
//        generateLabel.enabled = true
//    }
//



    
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

        

    
    
//    func topNumbersEqualSomeBottomButton(){
//        
//        if
//            (
//                    // check first number
//                    (
//                        (topOneSymbol == botOneSymbol && topOneColorBackground == botOneColorBackground) ||
//                        (topOneSymbol == botTwoSymbol && topOneColorBackground == botTwoColorBackground) ||
//                        (topOneSymbol == botThreeSymbol && topOneColorBackground == botThreeColorBackground) ||
//                        (topOneSymbol == botFourSymbol && topOneColorBackground == botFourColorBackground) ||
//                        (topOneSymbol == botFiveSymbol && topOneColorBackground == botFiveColorBackground) ||
//                        (topOneSymbol == botSixSymbol && topOneColorBackground == botSixColorBackground) ||
//                        (topOneSymbol == botSevenSymbol && topOneColorBackground == botSevenColorBackground) ||
//                        (topOneSymbol == botEightSymbol && topOneColorBackground == botEightColorBackground) ||
//                        (topOneSymbol == botNineSymbol && topOneColorBackground == botNineColorBackground)
//                    )
//                    
//                    &&
//                    
//                    // check second number
//                        (
//                                (topOneSymbol == botOneSymbol && topOneColorBackground == botOneColorBackground) ||
//                                (topOneSymbol == botTwoSymbol && topOneColorBackground == botTwoColorBackground) ||
//                                (topOneSymbol == botThreeSymbol && topOneColorBackground == botThreeColorBackground) ||
//                                (topOneSymbol == botFourSymbol && topOneColorBackground == botFourColorBackground) ||
//                                (topOneSymbol == botFiveSymbol && topOneColorBackground == botFiveColorBackground) ||
//                                (topOneSymbol == botSixSymbol && topOneColorBackground == botSixColorBackground) ||
//                                (topOneSymbol == botSevenSymbol && topOneColorBackground == botSevenColorBackground) ||
//                                (topOneSymbol == botEightSymbol && topOneColorBackground == botEightColorBackground) ||
//                                (topOneSymbol == botNineSymbol && topOneColorBackground == botNineColorBackground)
//                        )
//                    
//                    &&
//                    
//                    // check third number
//                        (
//                            (topOneSymbol == botOneSymbol && topOneColorBackground == botOneColorBackground) ||
//                                (topOneSymbol == botTwoSymbol && topOneColorBackground == botTwoColorBackground) ||
//                                (topOneSymbol == botThreeSymbol && topOneColorBackground == botThreeColorBackground) ||
//                                (topOneSymbol == botFourSymbol && topOneColorBackground == botFourColorBackground) ||
//                                (topOneSymbol == botFiveSymbol && topOneColorBackground == botFiveColorBackground) ||
//                                (topOneSymbol == botSixSymbol && topOneColorBackground == botSixColorBackground) ||
//                                (topOneSymbol == botSevenSymbol && topOneColorBackground == botSevenColorBackground) ||
//                                (topOneSymbol == botEightSymbol && topOneColorBackground == botEightColorBackground) ||
//                                (topOneSymbol == botNineSymbol && topOneColorBackground == botNineColorBackground)
//                        )
//                    
//                    &&
//                    
//                    // check fourth number
//                        (
//                                (topOneSymbol == botOneSymbol && topOneColorBackground == botOneColorBackground) ||
//                                (topOneSymbol == botTwoSymbol && topOneColorBackground == botTwoColorBackground) ||
//                                (topOneSymbol == botThreeSymbol && topOneColorBackground == botThreeColorBackground) ||
//                                (topOneSymbol == botFourSymbol && topOneColorBackground == botFourColorBackground) ||
//                                (topOneSymbol == botFiveSymbol && topOneColorBackground == botFiveColorBackground) ||
//                                (topOneSymbol == botSixSymbol && topOneColorBackground == botSixColorBackground) ||
//                                (topOneSymbol == botSevenSymbol && topOneColorBackground == botSevenColorBackground) ||
//                                (topOneSymbol == botEightSymbol && topOneColorBackground == botEightColorBackground) ||
//                                (topOneSymbol == botNineSymbol && topOneColorBackground == botNineColorBackground)
//                )
//                
//            )
//        {trueOrNot = true}
//        
//        
//    }
//    
//    
//    func realRandomGeneratorFirst(){
//        topNumbersEqualSomeBottomButton()
//        check3()
//        numberCheck()
//        
//        while trueOrNot == false {
//            generateTopAndBottomButtons()
//            topNumbersEqualSomeBottomButton()
//            check3()
//            numberCheck()
//        }
//    }
//    
//    func numberCheck(){
//        numberOneNoMatchCheck()
//        numberTwoNoMatchCheck()
//        numberThreeNoMatchCheck()
//        numberFourNoMatchCheck()
//    }
//    
//    
//    func numberOneNoMatchCheck(){
//        if
//            (
//                    !(topOneSymbol == botOneSymbol && topOneColorBackground == botOneColorBackground) &&
//                    !(topOneSymbol == botTwoSymbol && topOneColorBackground == botTwoColorBackground) &&
//                    !(topOneSymbol == botThreeSymbol && topOneColorBackground == botThreeColorBackground) &&
//                    !(topOneSymbol == botFourSymbol && topOneColorBackground == botFourColorBackground) &&
//                    !(topOneSymbol == botFiveSymbol && topOneColorBackground == botFiveColorBackground) &&
//                    !(topOneSymbol == botSixSymbol && topOneColorBackground == botSixColorBackground) &&
//                    !(topOneSymbol == botSevenSymbol && topOneColorBackground == botSevenColorBackground) &&
//                    !(topOneSymbol == botEightSymbol && topOneColorBackground == botEightColorBackground) &&
//                    !(topOneSymbol == botNineSymbol && topOneColorBackground == botNineColorBackground)
//            )
//        {trueOrNot = false}
//    }
//    
//    func numberTwoNoMatchCheck(){
//        if
//            (
//                    !(topTwoSymbol == botOneSymbol && topTwoColorBackground == botOneColorBackground) &&
//                    !(topTwoSymbol == botTwoSymbol && topTwoColorBackground == botTwoColorBackground) &&
//                    !(topTwoSymbol == botThreeSymbol && topTwoColorBackground == botThreeColorBackground) &&
//                    !(topTwoSymbol == botFourSymbol && topTwoColorBackground == botFourColorBackground) &&
//                    !(topTwoSymbol == botFiveSymbol && topTwoColorBackground == botFiveColorBackground) &&
//                    !(topTwoSymbol == botSixSymbol && topTwoColorBackground == botSixColorBackground) &&
//                    !(topTwoSymbol == botSevenSymbol && topTwoColorBackground == botSevenColorBackground) &&
//                    !(topTwoSymbol == botEightSymbol && topTwoColorBackground == botEightColorBackground) &&
//                    !(topTwoSymbol == botNineSymbol && topTwoColorBackground == botNineColorBackground)
//            )
//        {trueOrNot = false}
//    }
//
//    func numberThreeNoMatchCheck(){
//        if
//            (
//                    !(topThreeSymbol == botOneSymbol && topThreeColorBackground == botOneColorBackground) &&
//                    !(topThreeSymbol == botTwoSymbol && topThreeColorBackground == botTwoColorBackground) &&
//                    !(topThreeSymbol == botThreeSymbol && topThreeColorBackground == botThreeColorBackground) &&
//                    !(topThreeSymbol == botFourSymbol && topThreeColorBackground == botFourColorBackground) &&
//                    !(topThreeSymbol == botFiveSymbol && topThreeColorBackground == botFiveColorBackground) &&
//                    !(topThreeSymbol == botSixSymbol && topThreeColorBackground == botSixColorBackground) &&
//                    !(topThreeSymbol == botSevenSymbol && topThreeColorBackground == botSevenColorBackground) &&
//                    !(topThreeSymbol == botEightSymbol && topThreeColorBackground == botEightColorBackground) &&
//                    !(topThreeSymbol == botNineSymbol && topThreeColorBackground == botNineColorBackground)
//            )
//        {trueOrNot = false}
//    }
//    
//    func numberFourNoMatchCheck(){
//        if
//            (
//                    !(topFourSymbol == botOneSymbol && topFourColorBackground == botOneColorBackground) &&
//                    !(topFourSymbol == botTwoSymbol && topFourColorBackground == botTwoColorBackground) &&
//                    !(topFourSymbol == botThreeSymbol && topFourColorBackground == botThreeColorBackground) &&
//                    !(topFourSymbol == botFourSymbol && topFourColorBackground == botFourColorBackground) &&
//                    !(topFourSymbol == botFiveSymbol && topFourColorBackground == botFiveColorBackground) &&
//                    !(topFourSymbol == botSixSymbol && topFourColorBackground == botSixColorBackground) &&
//                    !(topFourSymbol == botSevenSymbol && topFourColorBackground == botSevenColorBackground) &&
//                    !(topFourSymbol == botEightSymbol && topFourColorBackground == botEightColorBackground) &&
//                    !(topFourSymbol == botNineSymbol && topFourColorBackground == botNineColorBackground)
//            )
//        {trueOrNot = false}
//    }
//    
//    
//    
//    func check3(){
//        
//        if
//        (
//        topOneColorBackground == topTwoColorBackground ||
//        topOneColorBackground == topThreeColorBackground ||
//        topOneColorBackground == topFourColorBackground ||
//        topTwoColorBackground == topThreeColorBackground ||
//        topTwoColorBackground == topFourColorBackground ||
//        topThreeColorBackground == topFourColorBackground
//        
//        )
//        {trueOrNot = false
//        }else {trueOrNot = true}
//        
//        
//    }

    
    
    
    
}