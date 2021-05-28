//
//  ContentView.swift
//  RadioApp
//
//  Created by Lok Tin Ching on 5/17/21.
//

import SwiftUI

struct ContentView: View {
    enum MainView {
        case Home
        case Message
        case Profile
    }
    
    @State var isActive: Bool = false
    @State var view: MainView = MainView.Home
    
    var body: some View {
        VStack{
            
            switch view {
            case MainView.Home:
                homePage(rootIsActive: self.$isActive)
            case MainView.Message:
                message()
            case MainView.Profile:
                profile()
            }
            HStack {
                Button (action: { self.isActive = false; self.view = MainView.Home }){
                    Text("Home")
                        .font(.subheadline)
                        .foregroundColor(Color.blue)
                        .padding()
                }
                Button (action: { self.isActive = false; self.view = MainView.Message }){
                    Text("Message")
                        .font(.subheadline)
                        .foregroundColor(Color.blue)
                        .padding()
                }
                Button (action: { self.isActive = false; self.view = MainView.Profile }){
                    Text("Profile")
                        .font(.subheadline)
                        .foregroundColor(Color.blue)
                        .padding()
                }
            }.frame(maxHeight: .infinity, alignment: .bottom)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
