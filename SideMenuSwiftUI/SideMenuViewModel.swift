//
//  SideMenuViewModel.swift
//  SideMenuSwiftUI
//
//  Created by Alexis Jimenez on 29/01/21.
//

import Foundation

enum SideMenuViewModel: Int, CaseIterable {
    case profile
    case lists
    case bookmarks
    case messages
    case notifications
    case logout
    
    var title: String {
        switch self {
        case .profile: return "Profile"
        case .lists: return "List"
        case .bookmarks: return "Bookmarks"
        case .messages: return "Messages"
        case .notifications: return "Notitications"
        case .logout: return "Logout"
        }
    }
    
    var icon: String {
        switch self {
        case .profile: return "person"
        case .lists: return "list.bullet"
        case .bookmarks: return "bookmark"
        case .messages: return "bubble.left"
        case .notifications: return "bell"
        case .logout: return "arrow.left.square"
        }
    }
}
