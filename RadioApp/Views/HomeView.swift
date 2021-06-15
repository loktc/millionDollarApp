//
//  HomeView.swift
//  RadioApp
//
//  Created by Kevin Cheang on 6/14/21.
//

import SwiftUI

// Enumeration containing the different main views
enum Views {
    case Home
    case Message
    case Profile
}

struct HomeView: View {
    // isActive is used to return to one of the main view
    @State var isActive: Bool = false
    // view cotains the current view
    @State var view: Views = Views.Home

    var body: some View {
        VStack {
            MainNavigationView(rootIsActive: self.$isActive, rootView: self.$view)
            MainToolBar(rootIsActive: self.$isActive, rootView: self.$view)
        }
    }
}


/*  Main navigational view for home, messages, and profile.
 */
struct MainNavigationView: View {
    @Binding var rootIsActive : Bool
    @Binding var rootView: Views
    
    var body: some View {
        NavigationView {
            switch self.rootView {
            case Views.Home:
                SelectionView(rootIsActive: self.$rootIsActive)
            case Views.Message:
                MessageView()
            case Views.Profile:
                ProfileView()
            }
        }
//        EmptyView()
    }
}

/*  Toolbar consisting of buttons for home, messages, and profile
    used for navigating the main page.
 */
struct MainToolBar: View {
    @Binding var rootIsActive : Bool
    @Binding var rootView: Views

    var body: some View {
        HStack {
            Spacer()
            Button (action: { self.rootIsActive = false; self.rootView = Views.Home }, label: {Text("Home")}).padding()
            Spacer()
            Button (action: { self.rootIsActive = false; self.rootView = Views.Message }, label: {Text("Messages")}).padding()
            Spacer()
            Button (action: { self.rootIsActive = false; self.rootView = Views.Profile }, label: {Text("Profile")}).padding()
            Spacer()
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView(isActive: false, view: Views.Home)
    }
}
