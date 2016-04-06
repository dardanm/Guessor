//
//  Audio.swift
//  Guessor
//
//  Created by Dardan on 3/19/16.
//  Copyright © 2016 Meha. All rights reserved.
//

import UIKit
import AVFoundation
import QuartzCore

extension BaseLevel {
    
    // BUTTON PRESS - CORRECT
    func pressButtonCorrectSound() {
        
        do {
            self.buttonPressCorrectSound =  try AVAudioPlayer(contentsOfURL: NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("buttonCorrect", ofType: "mp3")!))
            self.buttonPressCorrectSound.play()

            
        } catch {
            print("Error")
        }
        buttonPressCorrectSound.volume = 0.5
    }
    
    // BUTTON PRESS - INCORRECT
    func pressButtonWrongSound() {
        
        do {
            self.buttonPressCorrectSound =  try AVAudioPlayer(contentsOfURL: NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("buttonIncorrect", ofType: "mp3")!))
            self.buttonPressCorrectSound.play()
            count -= 1
            progressTimer.progress = progressTimer.progress - 0.1
            countDownLabel.text = String(count)
            
        } catch {
            print("Error")
        }
        buttonPressCorrectSound.volume = 0.05
        
    }
    
    // Score 4 Correct
    func pressCorrectFour() {
        
        do {
            self.finalCorrect =  try AVAudioPlayer(contentsOfURL: NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("correct", ofType: "mp3")!))
            self.finalCorrect.play()
        } catch {
            print("Error")
        }
        finalCorrect.volume = 0.5
        
    }
    
    // BACKGROUND MUSIC
    func playBackgroundMusic(filename: String) {
        let url = NSBundle.mainBundle().URLForResource(filename, withExtension: nil)
        guard let newURL = url else {
            print("Could not find file: \(filename)")
            return
        }
        do {
            backgroundMusicPlayer = try AVAudioPlayer(contentsOfURL: newURL)
            backgroundMusicPlayer.numberOfLoops = -1
            backgroundMusicPlayer.prepareToPlay()
            backgroundMusicPlayer.play()
        } catch let error as NSError {
            print(error.description)
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // Sound for just pressing a button
    func pressButtonSound() {
        if (count == 0){
            buttonPressSound.enableRate = false
        }
        
        do {
            self.buttonPressSound =  try AVAudioPlayer(contentsOfURL: NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("button-46", ofType: "mp3")!))
            self.buttonPressSound.play()
            
        } catch {
            print("Error")
        }
        buttonPressSound.volume = 0.05
    }

}