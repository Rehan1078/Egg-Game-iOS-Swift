//
//  ViewController.swift
//  Egg Game
//
//  Created by Muhammad Rehan Yousaf on 20/04/2026.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    @IBOutlet weak var Progress: UIProgressView!
    var player: AVAudioPlayer!
    let eggTimes = [
        "Soft":3,
        "Medium":4,
        "Hard":7,
    ]
    var timer = Timer()
    var totaltime = 0
    var timepasssed = 0

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func ButtonPressed(_ sender: UIButton) {
        
        timepasssed = 0
        Progress.progress = 0.0
        timer.invalidate()
        
        switch sender.tag {
        case 0:
            playSound(soundName: "A")
            totaltime = 3
        case 1:
            playSound(soundName: "B")
            totaltime = 4
        case 2:
            playSound(soundName: "C")
            totaltime = 7
        default:
            return
        }

        timer = Timer.scheduledTimer(timeInterval: 1.0,
                                     target: self,
                                     selector: #selector(updateTimer),
                                     userInfo: nil,
                                     repeats: true)
    }
    
    
    
    func playSound(soundName: String) {
        let url = Bundle.main.url(forResource: soundName, withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
        
    }
    
    
    @objc func updateTimer() {
        if timepasssed < totaltime {
            timepasssed += 1
            
            let progress = Float(timepasssed) / Float(totaltime)
            Progress.progress = progress
            
            print("Progress: \(progress)")
            
        } else {
            timer.invalidate()
            Progress.progress = 1.0
            print("DONE!")
        }
    }
    
}

