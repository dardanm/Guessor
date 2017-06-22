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
        generateTopButtons()
        
        // bottom buttons
        generateBottomButtons()
        
    }
    
    
    func generateTopButtons(){
        
        // top buttons
//        topButton1.randomImage(self.caneN1, candy: self.candyN1, pop: self.popN1)
//        topButton2.randomImage(self.caneN2, candy: self.candyN2, pop: self.popN2)
//        topButton3.randomImage(self.caneN3, candy: self.candyN3, pop: self.popN3)
//        topButton4.randomImage(self.caneN4, candy: self.candyN4, pop: self.popN4)
//        topButton1.randomColor(self.topOneLabelColor)
//        topButton2.randomColor(self.topTwoLabelColor)
//        topButton3.randomColor(self.topThreeLabelColor)
//        topButton4.randomColor(self.topFourLabelColor)
        
        
//        while
//            ( (topButton1.symb == topButton2.symb) || (topButton2.symb == topButton3.symb) ||
//                (topButton3.symb == topButton4.symb))
//        {
//            topButton1.randomImage(self.caneN1, candy: self.candyN1, pop: self.popN1)
//            topButton2.randomImage(self.caneN2, candy: self.candyN2, pop: self.popN2)
//            topButton3.randomImage(self.caneN3, candy: self.candyN3, pop: self.popN3)
//            topButton4.randomImage(self.caneN4, candy: self.candyN4, pop: self.popN4)
//            topButton1.randomColor(self.topOneLabelColor)
//            topButton2.randomColor(self.topTwoLabelColor)
//            topButton3.randomColor(self.topThreeLabelColor)
//            topButton4.randomColor(self.topFourLabelColor)
//        }
        
    }
    
    
    func generateBottomButtons(){
        
        botButtonUno = Button(buttonBackground: botOneButtonColor, buttonCane: caneB1, buttonCandy: candyB1, buttonPop: popB1)
        botButtonDos = Button(buttonBackground: botTwoButtonColor, buttonCane: caneB2, buttonCandy: candyB2, buttonPop: popB2)
        botButtonTres = Button(buttonBackground: botThreeButtonColor, buttonCane: caneB3, buttonCandy: candyB3, buttonPop: popB3)

        
        
        
    }
    
}
