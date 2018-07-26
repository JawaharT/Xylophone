//
//  ViewController.swift
//  Xylophone
//
//  Created by Jawahar Tunuguntla on 27/01/2016.

import UIKit
import AVFoundation

class ViewController:  UIViewController, AVAudioPlayerDelegate{
    
    var audioPlayer: AVAudioPlayer!
    let soundArray = ["note1","note2","note3","note4","note5","note6","note7"]

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func notePressed(_ sender: UIButton) {
        playSound(soundToBePlayed:soundArray[sender.tag-1])
    }
    
    func playSound(soundToBePlayed:String){
        let soundUrl = Bundle.main.url(forResource:soundToBePlayed, withExtension:"wav")
        
        //try! AVAudioPlayer(contentsOf: soundUrl!)
        
        do{
            audioPlayer = try AVAudioPlayer(contentsOf: soundUrl!)
        } catch {
            print(error.localizedDescription)
        }
        audioPlayer.play()
    }
}

