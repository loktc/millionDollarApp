//
//  ChatView.swift
//  RadioApp
//
//  Created by Lok Tin Ching on 6/28/21.
//

import SwiftUI

struct ChatView: View {
    @State var message: String = ""
    let otherUsername: String
    init(otherUsername: String){
        self.otherUsername = otherUsername
    }
    
    var body: some View {
        VStack{
            ScrollView(.vertical) {
                ChatRow(text: "Hello!", type: .sent)
                    .padding(3)
                ChatRow(text: "Hi!", type: .received)
                    .padding(3)
            }
            
            // Field, send button
            HStack{
                TextField("Message...", text: $message)
                    .padding()
                    .background(Color(.secondarySystemBackground))
                    .cornerRadius(7.0)
                
                SendButton(text: $message)
            }
            .padding()
        }
        .navigationTitle(otherUsername)
    }
}

struct ChatView_Previews: PreviewProvider {
    static var previews: some View {
        ChatView(otherUsername: "Kbear")
            .preferredColorScheme(.light)
    }
}
