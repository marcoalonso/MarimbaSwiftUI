//
//  PlaySound.swift
//  MarimbaSwiftUI
//
//  Created by Marco Alonso Rodriguez on 22/04/23.
//

import Foundation
import AVFoundation

var player : AVAudioPlayer!

func playSound(nota: String) {
    if let url = Bundle.main.url(forResource: nota, withExtension: "wav")  {
        print("Debug: url \(url)")

        do {
            player = try AVAudioPlayer(contentsOf: url)
            player?.play()
        } catch {
            print("Error al reproducir sonido")
        }
    }
}
