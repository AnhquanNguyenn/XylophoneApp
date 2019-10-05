//
//  ViewController.swift
//  Xylophone
//
//  Created by Anhquan Nguyen on 10/2/2019.
//


import UIKit
import AVFoundation

class ViewController: UIViewController{
    // Delegate player of type AV Audio player
    var audioPlayer: AVAudioPlayer!
    let soundArray = ["note1", "note2", "note3", "note4", "note5", "note6", "note7"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }



    @IBAction func notePressed(_ sender: UIButton) {
        /*
        print(sender.tag)
        if (sender.tag == 1){
            print("Play Middle C")
        }
        else if(sender.tag == 2){
            print("Play D")
        }
        */
        
        /*
        // Creating a link to where sound file is located
        let url = Bundle.main.url(forResource: "note1", withExtension: "wav")!
        
        do {
            player = try AVAudioPlayer(contentsOf: url)
            guard let player = player else { return }

            player.prepareToPlay()
            player.play()
        } catch let error as NSError {
            print(error.description)
        }
        */
        
        // You can force a try statement, with a manual override with try! AVAudioPlayer(contentsOf: soundURL!)
        
        playSound(soundFileName: soundArray[sender.tag - 1])
        
    }
    
    func playSound(soundFileName: String){
        let soundURL = Bundle.main.url(forResource: soundFileName, withExtension: "wav")
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: soundURL!)
        }
        catch{
            print(error)
        }
        audioPlayer.play()
    }
    
  

}

