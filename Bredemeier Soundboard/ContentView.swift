//
//  ContentView.swift
//  Bredemeier Soundboard
//
//  Created by Dhanush Tipparaju on 11/11/22.
//

// Hi - Daksh

import SwiftUI

struct ContentView: View {
    @State private var name = ""
    @State private var soundboardViewButton = false
    var body: some View {
        NavigationView{
            VStack{
                Text("Welcome to the soundboard!")
                    .font(.title2).bold()
                    .padding()
                Text("What is your name?")
                TextField("Enter name here", text: $name)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .font(.title).bold()
                    .padding()
                    .autocapitalization(.none)
                    .autocorrectionDisabled()
                    .onSubmit {
                        soundboardViewButton = true
                    }
                Image("Bredemeier")
                    .resizable()
                    .frame(width: 350, height: 350)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                    .padding()
                Spacer()
                if soundboardViewButton == true {
                    if name !=  "" {
                        NavigationLink("Lets me see the soundboard!", destination: Soundboard())
                            .opacity(1.0)
                            .font(.title).bold()
                    }
                        
                }
            }
            .preferredColorScheme(.dark)
        }
    }
}
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
    
 
