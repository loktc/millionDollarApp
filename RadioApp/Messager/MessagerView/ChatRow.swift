//
//  ChatRow.swift
//  RadioApp
//
//  Created by Lok Tin Ching on 6/28/21.
//

import SwiftUI

struct ChatRow: View {
    let type: MessageType
    
    var isSender: Bool{
        return type == .sent
    }
    
    let text: String
    init(text: String, type: MessageType){
        self.text = text
        self.type = type
    }
    
    var body: some View {
        HStack{
            if isSender { Spacer() }
            
            if !isSender {
                VStack {
                    Spacer()
                    Circle()
                        .frame(width: 45, height: 45)
                        .foregroundColor(Color.orange)
                }
            }
            HStack {
                Text(text)
                    .foregroundColor(isSender ? Color.black : Color(.label))
                    .padding()
            }
            .background(isSender ? Color.yellow : Color(.systemGray4))
            .padding(isSender ? .leading: .trailing,
                     isSender ? UIScreen.main.bounds.width/3 :
                        UIScreen.main.bounds.width/5)
            .cornerRadius(6)
            
            if !isSender{ Spacer() }
        }
    }
}

struct ChatRow_Previews: PreviewProvider {
    static var previews: some View {
        Group{
            ChatRow(text: "test", type: .sent)
                .preferredColorScheme(.light)
            ChatRow(text: "test", type: .received)
                .preferredColorScheme(.light)
        }
    }
}
