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

extension ViewController {
    
    // BUTTON PRESS - CORRECT
    func pressButtonCorrectSound() {
        
        do {
            self.buttonPressCorrectSound =  try AVAudioPlayer(contentsOfURL: NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("buttonCorrect", ofType: "mp3")!))
            self.buttonPressCorrectSound.play()
            // TIMER COUNT
            count++
            // PROGRESS BAR
            progressTimer.progress = progressTimer.progress + 0.1
            countDownLabel.text = String(count)
            // EXP
            
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
            count--
            progressTimer.progress = progressTimer.progress - 0.1
            countDownLabel.text = String(count)
            
        } catch {
            print("Error")
        }
        buttonPressCorrectSound.volume = 0.05
        
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