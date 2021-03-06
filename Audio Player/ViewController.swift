//
//  ViewController.swift
//  Audio Player
//
//  Created by Сергей Голенко on 26.12.2020.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    
    @IBAction func stop(_ sender: UIButton) {
        player.pause()
    }
    
    @IBAction func play(_ sender: UIButton) {
        player.play()
    }
    
    @IBOutlet weak var volumeOutlet: UISlider!
    @IBAction func volume(_ sender: UISlider) {
        player.volume = volumeOutlet.value
    }
    
    
    var player = AVAudioPlayer()

    override func viewDidLoad() {
        super.viewDidLoad()
        playSound()
    }
    
    
    
    
    
    func playSound() {
        guard let path = Bundle.main.path(forResource: "izza", ofType: "mp3") else {return}
        let url = URL(fileURLWithPath: path)

        do {
           
            player = try AVAudioPlayer(contentsOf: url)
            player.play()

        } catch let error {
            print("ERROR!!!! - \(error.localizedDescription)")
        }
}

}
