//
//  AppStateModel.swift
//  RadioApp
//
//  Created by Lok Tin Ching on 6/28/21.
//

import Foundation
import SwiftUI

class AppStateModel: ObservableObject{
    @AppStorage("currentUsername") var currentUsername: String = ""
    @AppStorage("currentEmail") var currentEmail: String = ""
    
    @Published var showingSignIn: Bool = true
    @Published var conversations: [String] = []
    @Published var messages: [Message] = []
    
    var otherUsername = ""
    
    //Current user being chatted with
    //Messgae, Conversarions
}

// Search

extension AppStateModel{
    func searchUsers(queryText: String, completion: @escaping ([String]) -> Void){
        
    }
}

// Conversations

extension AppStateModel{
    func getConversation() {
        // Listen for conversations
    }
}

// Get Chat / Send Message

extension AppStateModel{
    func observeChat() {
        
    }
    
    func sendMessage(text: String){
        
    }
    
    func createConversationIfNeeded() {
        
    }
}

// Sign In & Sign Up

extension AppStateModel{
    func signIn(username: String, password: String){
        // Try to sign in 
    }
    func signUp(username: String, password: String, email: String){

    }
    
    func signOut(){

    }
}
