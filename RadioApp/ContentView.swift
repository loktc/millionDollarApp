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
            homePage()
            HStack {
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
