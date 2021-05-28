//
//  homePage.swift
//  RadioApp
//
//  Created by Lok Tin Ching on 5/27/21.
//

import SwiftUI

struct homePage: View {
    @Binding var rootIsActive : Bool
    
    var body: some View {
        NavigationView {
            HStack {
                VStack {
                    NavigationLink(destination: EmptyView(), isActive: self.$rootIsActive) {
                        Text("Radio")
                                .font(.largeTitle)
                                .foregroundColor(Color.blue)
                                .padding()
                    }.isDetailLink(false)
                    NavigationLink(destination: EmptyView(), isActive: self.$rootIsActive) {
                        Text("Random")
                                .font(.largeTitle)
                                .foregroundColor(Color.blue)
                                .padding()
                    }.isDetailLink(false)
                }
                VStack {
                    NavigationLink(destination: EmptyView(), isActive: self.$rootIsActive) {
                        Text("Game")
                                .font(.largeTitle)
                                .foregroundColor(Color.blue)
                                .padding()
                    }.isDetailLink(false)
                    NavigationLink(destination: EmptyView(), isActive: self.$rootIsActive) {
                        Text("Timeline")
                                .font(.largeTitle)
                                .foregroundColor(Color.blue)
                                .padding()
                    }.isDetailLink(false)
                }
            }//.frame(minHeight: 0, maxHeight: .infinity)
        }
    }
}

//struct homePage_Previews: PreviewProvider {
//    static var previews: some View {
//        homePage( rootIsActive: constant "true")
//    }
//}
