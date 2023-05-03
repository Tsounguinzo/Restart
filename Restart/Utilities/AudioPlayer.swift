//
//  AudioPlayer.swift
//  Restart
//
//  Created by Beaudelaire on 2023-05-02.
//

import Foundation
import AVFoundation

var audioPlayer: AVAudioPlayer?

func playsound(sound: String, type: String){
    if let path = Bundle.main.path(forResource: sound, ofType: type) {
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: path))
            audioPlayer?.play()
        } catch {
            print("Could not play the sound file")
        }
    }
}
