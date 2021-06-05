//
//  Messaging.swift
//  RadioApp
//
//  Created by Lok Tin Ching on 6/5/21.
//

import Foundation

public protocol Messagable: Identifiable {
    
    associatedtype ChatUser: User
    
    //The user who sent the message
    var user: ChatUser { get }
    
    //The message is sent by current user of the chat message
    var isSender: Bool { get }
    
    // The date and time of the message was sent
    var date: Date { get }
}
