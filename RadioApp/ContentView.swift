//
//  ContentView.swift
//  RadioApp
//
//  Created by Lok Tin Ching on 5/17/21.
//

import SwiftUI

struct ContentView: View {
    // Enumeration containing the different main views
    enum MainView {
        case Home
        case Message
        case Profile
    }
    
    // isActive is used to return to one of the main view
    @State var isActive: Bool = false
    // view cotains the current view
    @State var view: MainView = MainView.Home

    var body: some View {
        VStack {
            // Main navigational view
            NavigationView {
                switch view {
                case MainView.Home:
                    HomeView(rootIsActive: self.$isActive)
                case MainView.Message:
                    MessageView()
                case MainView.Profile:
                    ProfileView()
                }
            }
            // Toolbar consisting of home, messages, and profile
            HStack {
                Spacer()
                Button (action: { self.isActive = false; self.view = MainView.Home }, label: {Text("Home")}).padding()
                Spacer()
                Button (action: { self.isActive = false; self.view = MainView.Message }, label: {Text("Messages")}).padding()
                Spacer()
                Button (action: { self.isActive = false; self.view = MainView.Profile }, label: {Text("Profile")}).padding()
                Spacer()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
