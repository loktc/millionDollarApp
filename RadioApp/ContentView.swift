//
//  ContentView.swift
//  RadioApp
//
//  Created by Lok Tin Ching on 5/17/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack{
            HStack {
                VStack {
                    Text("Radio")
                        .font(.largeTitle)
                        .foregroundColor(Color.blue)
                        .padding()
                    Text("Random")
                        .font(.largeTitle)
                        .foregroundColor(Color.blue)
                        .padding()
                }
                VStack {
                    Text("Games")
                        .font(.largeTitle)
                        .foregroundColor(Color.blue)
                        .padding()
                    
                    Text("Timeline")
                        .font(.largeTitle)
                        .foregroundColor(Color.blue)
                        .padding()
                }
            }.frame(minHeight: 0, maxHeight: . infinity)
            HStack{
                Text("Home")
                    .font(.subheadline)
                    .foregroundColor(Color.blue)
                    .padding()
                
                Text("Message")
                    .font(.subheadline)
                    .foregroundColor(Color.blue)
                    .padding()
                
                Text("Profile")
                    .font(.subheadline)
                    .foregroundColor(Color.blue)
                    .padding()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
