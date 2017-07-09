//
//  Levels.swift
//  Guessor
//
//  Created by Dardan Meha on 7/1/17.
//  Copyright © 2017 Meha. All rights reserved.
//

import UIKit
import AVFoundation
import QuartzCore
import UIColor_Hex_Swift
import SpriteKit

extension BaseLevel {

    func worldOneLevels(){
        
        switch level {
            
        case 1:
            pointsTarget = 100
            
            colorPickArray = ["#857AFF","#F7B220","#F77C2C","#A7CFFF"]
            iconPickArray = ["cane.png","candy.png","candy.png"]
            
            topButtons = [tbn1,tbn2,tbn3,tbn4]
            topSmallNumbers = [snt1,snt2,snt3,snt4]
            setSmallNumbers(arr: [1,2,3,4])
            print(topSmallNumbers.count)
        
        case 0:
            pointsTarget = 100

            aer = [1,2,3,3]
            aer.shuffle()

            topButtons = [topButtons[aer[0]-1],topButtons[aer[1]-1],topButtons[aer[2]-1],topButtons[aer[3]-1]]
            
            setSmallNumbers(arr: aer)
            
            topSmallNumbers = [topSmallNumbers[aer[0]-1],topSmallNumbers[aer[1]-1],topSmallNumbers[aer[2]-1],topSmallNumbers[aer[3]-1]]
            
            
        default:
            pointsTarget = 50
            
        }

    }
    
    func setSmallNumbers(arr: [Int]){
        for i in 0..<arr.count{
            print("\(i+1) is \(arr[i])")
            topSmallNumbers[i].text = "\(arr[i])"
        }
        
    }

}

extension MutableCollection where Indices.Iterator.Element == Index {
    /// Shuffles the contents of this collection.
    mutating func shuffle() {
        let c = count
        guard c > 1 else { return }
        
        for (firstUnshuffled , unshuffledCount) in zip(indices, stride(from: c, to: 1, by: -1)) {
            let d: IndexDistance = numericCast(arc4random_uniform(numericCast(unshuffledCount)))
            guard d != 0 else { continue }
            let i = index(firstUnshuffled, offsetBy: d)
            swap(&self[firstUnshuffled], &self[i])
        }
    }
}

extension Sequence {
    /// Returns an array with the contents of this sequence, shuffled.
    func shuffled() -> [Iterator.Element] {
        var result = Array(self)
        result.shuffle()
        return result
    }
}
