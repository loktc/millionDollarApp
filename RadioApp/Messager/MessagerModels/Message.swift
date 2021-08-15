//
//  Message.swift
//  RadioApp
//
//  Created by Lok Tin Ching on 6/28/21.
//

import Foundation

enum MessageType: String{
    case sent
    case received
}

struct Message{
    let text: String
    let type: MessageType
    let created: String // Date
}
