//
//  ContentView.swift
//  Bredemeier Soundboard
//
//  Created by Dhanush Tipparaju on 11/11/22.
//


import SwiftUI
import AVKit // for the programing stuff related to audio i used this tutorial https://www.youtube.com/watch?v=iBLZ1C4L5Mw

class SoundManager {
    static let instance = SoundManager()
    var player: AVAudioPlayer?
    func playsound() {
        guard let url = Bundle.main.url(forResource: "", withExtension: "") else { return }
    
        do {
            player = try AVAudioPlayer(contentsOf: url)
            player?.play()
        } catch let error {
            print("Error playing sound. \(error.localizedDescription)")
        }
    }
}

struct ContentView: View {
    @State private var pressed = ""
    @State private var count = 0 //using this to test to see if the pressing of images work
    var body: some View {
        VStack {
            //add image of mr. b for the app icon(preferably funny) using pig image for sake of seeing if my stuff works right now
            Text("Bredemeier Soundboard")
                .font(.title)
                .padding()
            Text("\(count)")
            LazyVGrid(columns: Array(repeating: GridItem(.fixed(120), spacing: 15), count: 2), spacing: 15) {
                soundboardButton(imageName: "Bredemeier", text: "who's joe") // never gonna give you up never gonna let you down
                    .onTapGesture {
                        count += 1
                    }
                soundboardButton(imageName: "Bredemeier", text: "talk to the duck")
                    .onTapGesture {
                        count += 1
                    }
                soundboardButton(imageName: "Bredemeier", text: "yes.")
                    .onTapGesture {
                        count += 1
                    }
                soundboardButton(imageName: "Bredemeier", text: "no.")
                    .onTapGesture {
                        count += 1
                    }
                soundboardButton(imageName: "Bredemeier", text: "Slay!")
                    .onTapGesture {
                        count += 1
                    }
                soundboardButton(imageName: "Bredemeier", text: "Period.")
                    .onTapGesture {
                        count += 1
                    }
                soundboardButton(imageName: "Bredemeier", text: "sheeeeeeesh")
                    .onTapGesture {
                        count += 1
                    }
                soundboardButton(imageName: "Bredemeier", text: "dynamite") // "say boom goes the dynamite"
                    .onTapGesture {
                        count += 1
                    }
            }
            soundboardButton(imageName: "Bredemeier", text: "AAAAHHHHHHHHHHHHHHHHHHHH")
                .onTapGesture {
                    count += 1
                }
        }
        .preferredColorScheme(.dark)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct soundboardButton: View {
    let imageName: String
    let text: String
    var body: some View {
        VStack {
            Image("\(imageName)")
                .resizable()
                .frame(width: 80, height: 80)
                .clipShape(RoundedRectangle(cornerRadius: 10))
            Text(text)
        }
    }
}

