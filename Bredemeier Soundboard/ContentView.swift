//
//  ContentView.swift
//  Bredemeier Soundboard
//
//  Created by Dhanush Tipparaju on 11/11/22.
//

import SwiftUI

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
                    soundboardButton(imageName: "Bredemeier", text: "oh dear sweet barbra")
                    .onTapGesture {
                        count += 1
                    }
                    soundboardButton(imageName: "Bredemeier", text: "talk to the duck")
                    .onTapGesture {
                        count += 1
                    }
                    soundboardButton(imageName: "Bredemeier", text: "amogus")
                    .onTapGesture {
                        count += 1
                    }
                    soundboardButton(imageName: "Bredemeier", text: "that's sus")
                    .onTapGesture {
                        count += 1
                    }
                    soundboardButton(imageName: "Bredemeier", text: "Slay!")
                    .onTapGesture {
                        count += 1
                    }
                    soundboardButton(imageName: "Bredemeier", text: "Period")
                    .onTapGesture {
                        count += 1
                    }
                    soundboardButton(imageName: "Bredemeier", text: "*boom sound effect*")
                    .onTapGesture {
                        count += 1
                    }
                    soundboardButton(imageName: "Bredemeier", text: "Boom goes the dynamite")
                    .onTapGesture {
                        count += 1
                    }
                    soundboardButton(imageName: "Bredemeier", text: "My name is Saul Goodman")
                    .onTapGesture {
                        count += 1
                    }
                    soundboardButton(imageName: "Bredemeier", text: "Did you know you have rights")
                    .onTapGesture {
                        count += 1
                    }
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
                .frame(width: 75, height: 75)
            Text(text)
        }
    }
}
