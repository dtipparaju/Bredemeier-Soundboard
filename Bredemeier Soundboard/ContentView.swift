//
//  ContentView.swift
//  Bredemeier Soundboard
//
//  Created by Dhanush Tipparaju on 11/11/22.
//


import SwiftUI

struct ContentView: View {
    @State private var name = ""
    var body: some View {
        NavigationView{
            VStack{
                Text("Welcome to the magical soundboard!")
                    .font(.title).bold()
                    .padding()
                Text("What is your name?")
                TextField("Enter name here", text: $name)
                    
            }
        }
    }
}
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
    
 
