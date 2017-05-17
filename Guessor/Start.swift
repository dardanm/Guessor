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
    
    @IBAction func musicButton(_ sender: AnyObject) {
        playBackgroundMusic("background.mp3")
        backgroundMusicPlayer.volume = 0.3
        
        backgroundMusicPlayer.stop()
        
        musicTracker += 1
        switch musicTracker {
        case 1: playBackgroundMusic("background.mp3")
                block.isHidden = true
        case 2: backgroundMusicPlayer.stop()
                block.isHidden = false
                musicTracker = 0
        default: backgroundMusicPlayer.stop()
        }

    }
    
    @IBAction func musicButtonRelease(_ sender: AnyObject) {

    }
    

    
    override func viewDidLoad() {

        if musicTracker == 0 {
            block.isHidden = false
        }
        
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "background2.jpg")!)
        
    }
    
    override var prefersStatusBarHidden : Bool {
        return true
    }
    
    // BACKGROUND MUSIC
    func playBackgroundMusic(_ filename: String) {
        let url = Bundle.main.url(forResource: filename, withExtension: nil)
        guard let newURL = url else {
            print("Could not find file: \(filename)")
            return
        }
        do {
            backgroundMusicPlayer = try AVAudioPlayer(contentsOf: newURL)
            backgroundMusicPlayer.numberOfLoops = -1
            backgroundMusicPlayer.prepareToPlay()
            backgroundMusicPlayer.play()
        } catch let error as NSError {
            print(error.description)
        }
    }

}
