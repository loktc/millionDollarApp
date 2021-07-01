//
//  SendButton.swift
//  RadioApp
//
//  Created by Lok Tin Ching on 6/28/21.
//

import SwiftUI

struct SendButton: View {
    @Binding var text: String
    var body: some View {
        Button(action: {
            self.sendMessage()
        }, label: {
                Image(systemName: "paperplane")
                    
                    .font(.system(size: 33))
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 55, height: 55)
                    .foregroundColor(Color(.secondarySystemBackground))
                    .background(Color.yellow)
                    .clipShape(Circle())
        })
    }
    
    func sendMessage(){
        guard !text.isEmpty else{
            return
        }
    }
}

//struct SendButton_Previews: PreviewProvider {
//    static var previews: some View {
//        SendButton()
//    }
//}
