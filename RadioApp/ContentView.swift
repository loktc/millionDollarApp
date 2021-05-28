//
//  ContentView.swift
//  RadioApp
//
//  Created by Lok Tin Ching on 5/17/21.
//

import SwiftUI

struct ContentView: View {
    @State var isActive: Bool = true
    
    var body: some View {
        VStack{
            homePage(rootIsActive: self.$isActive)
            HStack {
                Button (action: { self.isActive = false }){
                    Text("Home")
                        .font(.subheadline)
                        .foregroundColor(Color.blue)
                        .padding()
                }
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
