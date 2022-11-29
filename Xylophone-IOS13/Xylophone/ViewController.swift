//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 28/06/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import AVFoundation
import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    var player: AVAudioPlayer?

    func playSound(key: String){
        
        guard let url = Bundle.main.url(forResource: key, withExtension: "wav") else{
            return
        }
        do{
            try AVAudioSession.sharedInstance().setCategory(.playback, mode: .default)
            
            try AVAudioSession.sharedInstance().setActive(true)
            player = try AVAudioPlayer(contentsOf: url, fileTypeHint: AVFileType.mp3.rawValue)
            guard let player =  player else{return}
            player.play()
        }catch let error{
            print("hello")
            print(error)
        }
    }
    
    @IBAction func CButton(_ sender: UIButton) {
          playSound(key: "C")
    }
    
    @IBAction func DButton(_ sender: UIButton) {
        playSound(key: "D")
    }
    
    @IBAction func EButton(_ sender: UIButton) {
        playSound(key: "E")
    }
    
    @IBAction func FButton(_ sender: UIButton) {
        playSound(key: "F")
    }
    @IBAction func GButton(_ sender: UIButton) {
        playSound(key: "G")
    }

    @IBAction func ButtonPress(_ sender: UIButton) {
        playSound(key: sender.currentTitle.unsafelyUnwrapped)
    }
}

