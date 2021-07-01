//
//  ConversationListView.swift
//  RadioApp
//
//  Created by Lok Tin Ching on 6/13/21.
//

import SwiftUI

struct ConversationListView: View {
    let usernames = ["James", "Kevin", "Meow"]
    
    var body: some View {
        NavigationView {
            ScrollView(.vertical) {
                ForEach(usernames, id: \.self) { name in
                    NavigationLink(
                        destination: ChatView(otherUsername: name),
                        label: {
                            HStack{
                                Circle()
                                    .frame(width: 65, height: 65)
                                    .foregroundColor(Color.yellow)
                                
                                Text(name)
                                    .bold()
                                    .foregroundColor(Color(.label))
                                    .font(.system(size: 32))
                                Spacer()
                            }
                            .padding()
                        })
                }
            }
            .navigationTitle("Conversations")
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button("Sign Out"){
                        self.signOut()
                    }
                }
                
                ToolbarItem(placement: .navigationBarTrailing) {
                    NavigationLink(
                        destination: SearchView(),
                        label: {
                        Image(systemName: "magnifyingglass")
                    })
                }
            }
        }
    }
    
    func signOut(){
        
    }
}


struct ConversationListView_Previews: PreviewProvider {
    static var previews: some View {
        ConversationListView()
    }
}
