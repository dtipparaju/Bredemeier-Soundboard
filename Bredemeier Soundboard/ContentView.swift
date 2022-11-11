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
                
                ForEach(0..<10) { index in
                    ZStack{
                        Image("Bredemier")
                            .resizable()
                            .frame(width: 100, height: 100)
                            .onTapGesture { //for now it will add numbers but later make it play audio when pressed
                                count += 1
                            }
                    }
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
