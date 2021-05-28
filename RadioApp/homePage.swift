//
//  homePage.swift
//  RadioApp
//
//  Created by Lok Tin Ching on 5/27/21.
//

import SwiftUI

struct homePage: View {
    var body: some View {
        NavigationView {
            HStack {
                VStack {
                    NavigationLink(destination: TestUIView()) {
                        Text("Radio")
                                .font(.largeTitle)
                                .foregroundColor(Color.blue)
                                .padding()
                    }
                    NavigationLink(destination: TestUIView()) {
                        Text("Random")
                                .font(.largeTitle)
                                .foregroundColor(Color.blue)
                                .padding()
                    }
                }
                VStack {
                    NavigationLink(destination: TestUIView()) {
                        Text("Game")
                                .font(.largeTitle)
                                .foregroundColor(Color.blue)
                                .padding()
                    }
                    NavigationLink(destination: TestUIView()) {
                        Text("Timeline")
                                .font(.largeTitle)
                                .foregroundColor(Color.blue)
                                .padding()
                    }
                }
            }.frame(minHeight: 0, maxHeight: . infinity)
        }
    }
}

struct homePage_Previews: PreviewProvider {
    static var previews: some View {
        homePage()
    }
}
