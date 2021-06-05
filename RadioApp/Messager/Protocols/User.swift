//
//  UserProtocl.swift
//  RadioApp
//
//  Created by Lok Tin Ching on 6/4/21.
//

import UIKit

public protocol User: Identifiable {
    
    // User namer of the user
    var userName: String { get }

    // The user profile picture
    var avatar: UIImage? { get }

    // User profile picture URL link
    var avatarURL: URL? { get }
        
}
