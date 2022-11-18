//
//  ContentView.swift
//  Bredemeier Soundboard
//
//  Created by Dhanush Tipparaju on 11/11/22.
//


import SwiftUI

struct ContentView: View {
    @State private var name = ""
    @State private var age = ""
    @State private var okAge = false
    @State private var soundboardViewButton = false
    var body: some View {
        NavigationView{
            VStack{
                Text("Welcome to the soundboard!")
                    .font(.title2).bold()
                    .padding()
                Text("What is your name and age?")
                TextField("Enter name here", text: $name)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .font(.title).bold()
                    .padding()
                    .autocapitalization(.none)
                    .autocorrectionDisabled()
                    .onSubmit {
                        soundboardViewButton = true
                    }
                TextField("Enter age here", text: $age)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .font(.title).bold()
                    .padding()
                    .autocapitalization(.none)
                    .autocorrectionDisabled()
                    .onChange(of: age, perform: { newValue in
                        if let value = Int(age) {
                            if value >= 13 {
                                okAge = true
                            }
                            else {
                                okAge = false
                            }
                        }
                        else {
                            age = ""
                            okAge = false
                        }
                    })
                Image("Bredemeier")
                    .resizable()
                    .frame(width: 300, height: 300)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                    .padding()

                if soundboardViewButton && okAge == true {
                            NavigationLink("Lets me see the soundboard!", destination: Soundboard())
                                .font(.title).bold()
                }
                if soundboardViewButton == true {
                    if okAge == false {
                        Text("Sorry \(name), you are too young to use this soundboard.")
                            .font(.title3)
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


