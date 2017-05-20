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

    ///// generate
    func generateTopAndBottomButtons(){
        
        // top buttons
        topButton1.randomImage(self.caneN1, candy: self.candyN1, pop: self.popN1)
        topButton2.randomImage(self.caneN2, candy: self.candyN2, pop: self.popN2)
        topButton3.randomImage(self.caneN3, candy: self.candyN3, pop: self.popN3)
        topButton4.randomImage(self.caneN4, candy: self.candyN4, pop: self.popN4)
        topButton1.randomColor(self.topOneLabelColor)
        topButton2.randomColor(self.topTwoLabelColor)
        topButton3.randomColor(self.topThreeLabelColor)
        topButton4.randomColor(self.topFourLabelColor)
        
        while
        ( (topButton1.symb == topButton2.symb) || (topButton2.symb == topButton3.symb) ||
          (topButton3.symb == topButton4.symb))
        {
        topButton1.randomImage(self.caneN1, candy: self.candyN1, pop: self.popN1)
        topButton2.randomImage(self.caneN2, candy: self.candyN2, pop: self.popN2)
        topButton3.randomImage(self.caneN3, candy: self.candyN3, pop: self.popN3)
        topButton4.randomImage(self.caneN4, candy: self.candyN4, pop: self.popN4)
        topButton1.randomColor(self.topOneLabelColor)
        topButton2.randomColor(self.topTwoLabelColor)
        topButton3.randomColor(self.topThreeLabelColor)
        topButton4.randomColor(self.topFourLabelColor)
        }
        
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
        topButton1.randomImage(self.caneN1, candy: self.candyN1, pop: self.popN1)
        topButton2.randomImage(self.caneN2, candy: self.candyN2, pop: self.popN2)
        topButton3.randomImage(self.caneN3, candy: self.candyN3, pop: self.popN3)
        topButton4.randomImage(self.caneN4, candy: self.candyN4, pop: self.popN4)
        topButton1.randomColor(self.topOneLabelColor)
        topButton2.randomColor(self.topTwoLabelColor)
        topButton3.randomColor(self.topThreeLabelColor)
        topButton4.randomColor(self.topFourLabelColor)
        
        
        while
            ( (topButton1.symb == topButton2.symb) || (topButton2.symb == topButton3.symb) ||
                (topButton3.symb == topButton4.symb))
        {
            topButton1.randomImage(self.caneN1, candy: self.candyN1, pop: self.popN1)
            topButton2.randomImage(self.caneN2, candy: self.candyN2, pop: self.popN2)
            topButton3.randomImage(self.caneN3, candy: self.candyN3, pop: self.popN3)
            topButton4.randomImage(self.caneN4, candy: self.candyN4, pop: self.popN4)
            topButton1.randomColor(self.topOneLabelColor)
            topButton2.randomColor(self.topTwoLabelColor)
            topButton3.randomColor(self.topThreeLabelColor)
            topButton4.randomColor(self.topFourLabelColor)
        }
        
    }
    
    func generateBottomButtons(){
        // bottom buttons
        
        // MAKE IT SO THAT ONLY ONE OF THE BOTTOM BUTTONS WILL MATCH TOP BUTTON,
        // STARTING WITH BUTTON #1
//        while(
//        (botButton1.symb == topButton2.symb) && (topButton2.symb == topButton3.symb) ||
//        (topButton3.symb == topButton4.symb)
//        )
//        {
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
