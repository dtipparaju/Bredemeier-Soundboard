//
//  ContentView.swift
//  Bredemeier Soundboard
//
//  Created by Dhanush Tipparaju on 11/11/22.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
            VStack {
                //add image of mr. b for the app icon(preferably funny)
                Text("Bredemeier Soundboard")
                    .font(.system(size: 60))
                    .padding()
                LazyVGrid(columns: Array(repeating: GridItem(.fixed(120), spacing: 15), count: 2), spacing: 15) {
                    Text("x")
                    Text("x")
                    Text("x")
                    Text("x")
                    Text("x")
                    Text("x")
                    Text("x")
                    Text("x")
                    Text("x")
                    Text("x")
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
