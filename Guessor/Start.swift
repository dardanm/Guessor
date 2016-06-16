//
//  Start.swift
//  Guessor
//
//  Created by Dardan on 3/1/16.
//  Copyright © 2016 Meha. All rights reserved.
//

import Foundation
import UIKit
import AVFoundation
import QuartzCore

var backgroundMusicPlayer = AVAudioPlayer()
var musicTracker:Int = 0

class Start: UIViewController {

    @IBOutlet var block: UIImageView!
    
    @IBAction func musicButton(sender: AnyObject) {
        playBackgroundMusic("background.mp3")
        backgroundMusicPlayer.volume = 0.3
        
        backgroundMusicPlayer.stop()
        
        musicTracker += 1
        switch musicTracker {
        case 1: playBackgroundMusic("background.mp3")
                block.hidden = true
        case 2: backgroundMusicPlayer.stop()
                block.hidden = false
                musicTracker = 0
        default: backgroundMusicPlayer.stop()
        }

    }
    
    @IBAction func musicButtonRelease(sender: AnyObject) {

    }
    

    
    override func viewDidLoad() {

        if musicTracker == 0 {
            block.hidden = false
        }
        
//        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "background2.jpg")!)
        
    }
    
    override func prefersStatusBarHidden() -> Bool {
        return true
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

}