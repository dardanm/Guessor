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

    
//    func realRandomGeneratorFirst(){
//        generateTopAndBottomButtons()
//        check3()
//        numberCheck()
//        
//        while trueOrNot == false {
//            generateTopAndBottomButtons()
//            check3()
//            numberCheck()
//        }
//    }
//    
//    func numberCheck(){
//        button1.numberCheckTop(button1)
//        button2.numberCheckTop(button2)
//        button3.numberCheckTop(button3)
//        button4.numberCheckTop(button4)
//    }
//    
//    
//    func check3(){
//        
//        if(
//            button1.back == button2.back ||
//            button1.back == button3.back ||
//            button1.back == button4.back ||
//            button2.back == button3.back ||
//            button2.back == button4.back ||
//            button3.back == button4.back
//        )
//        {trueOrNot = false
//        }else {trueOrNot = true}
//        
//        
//    }

    // new system
    
    ///// generate
    func generateTopAndBottomButtons(){
        
        // top buttons
        button1.randomImage(self.caneN1, candy: self.candyN1, pop: self.popN1)
        button2.randomImage(self.caneN2, candy: self.candyN2, pop: self.popN2)
        button3.randomImage(self.caneN3, candy: self.candyN3, pop: self.popN3)
        button4.randomImage(self.caneN4, candy: self.candyN4, pop: self.popN4)
        button1.randomColor(self.topOneLabelColor)
        button2.randomColor(self.topTwoLabelColor)
        button3.randomColor(self.topThreeLabelColor)
        button4.randomColor(self.topFourLabelColor)
        
        // bottom buttons
        botButton1.randomImage(self.caneB1, candy: self.candyB1, pop: self.popB1)
        botButton1.randomColorBottom(self.botOneButtonColor)
        botButton2.randomImage(self.caneB2, candy: self.candyB2, pop: self.popB2)
        botButton2.randomColorBottom(self.botTwoButtonColor)
        botButton3.randomImage(self.caneB3, candy: self.candyB3, pop: self.popB3)
        botButton3.randomColorBottom(self.botThreeButtonColor)
        botButton4.randomImage(self.caneB4, candy: self.candyB4, pop: self.popB4)
        botButton4.randomColorBottom(self.botFourButtonColor)
        botButton5.randomImage(self.caneB5, candy: self.candyB5, pop: self.popB5)
        botButton5.randomColorBottom(self.botFiveButtonColor)
        botButton6.randomImage(self.caneB6, candy: self.candyB6, pop: self.popB6)
        botButton6.randomColorBottom(self.botSixButtonColor)
        botButton7.randomImage(self.caneB7, candy: self.candyB7, pop: self.popB7)
        botButton7.randomColorBottom(self.botSevenButtonColor)
        botButton8.randomImage(self.caneB8, candy: self.candyB8, pop: self.popB8)
        botButton8.randomColorBottom(self.botEightButtonColor)
        botButton9.randomImage(self.caneB9, candy: self.candyB9, pop: self.popB9)
        botButton9.randomColorBottom(self.botNineButtonColor)
        
    }
    
    func generateTopButtons(){
        
        // top buttons
        button1.randomImage(self.caneN1, candy: self.candyN1, pop: self.popN1)
        button2.randomImage(self.caneN2, candy: self.candyN2, pop: self.popN2)
        button3.randomImage(self.caneN3, candy: self.candyN3, pop: self.popN3)
        button4.randomImage(self.caneN4, candy: self.candyN4, pop: self.popN4)
        button1.randomColor(self.topOneLabelColor)
        button2.randomColor(self.topTwoLabelColor)
        button3.randomColor(self.topThreeLabelColor)
        button4.randomColor(self.topFourLabelColor)
        
    }
    
    func generateBottomButtons(){
        // bottom buttons
        botButton1.randomImage(self.caneB1, candy: self.candyB1, pop: self.popB1)
        botButton1.randomColorBottom(self.botOneButtonColor)
        botButton2.randomImage(self.caneB2, candy: self.candyB2, pop: self.popB2)
        botButton2.randomColorBottom(self.botTwoButtonColor)
        botButton3.randomImage(self.caneB3, candy: self.candyB3, pop: self.popB3)
        botButton3.randomColorBottom(self.botThreeButtonColor)
        botButton4.randomImage(self.caneB4, candy: self.candyB4, pop: self.popB4)
        botButton4.randomColorBottom(self.botFourButtonColor)
        botButton5.randomImage(self.caneB5, candy: self.candyB5, pop: self.popB5)
        botButton5.randomColorBottom(self.botFiveButtonColor)
        botButton6.randomImage(self.caneB6, candy: self.candyB6, pop: self.popB6)
        botButton6.randomColorBottom(self.botSixButtonColor)
        botButton7.randomImage(self.caneB7, candy: self.candyB7, pop: self.popB7)
        botButton7.randomColorBottom(self.botSevenButtonColor)
        botButton8.randomImage(self.caneB8, candy: self.candyB8, pop: self.popB8)
        botButton8.randomColorBottom(self.botEightButtonColor)
        botButton9.randomImage(self.caneB9, candy: self.candyB9, pop: self.popB9)
        botButton9.randomColorBottom(self.botNineButtonColor)
    }

    

    
    
    
}