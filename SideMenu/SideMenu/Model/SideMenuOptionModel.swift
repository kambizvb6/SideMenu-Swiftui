//
//  SideMenuOptionModel.swift
//  SideMenu
//
//  Created by Kambiz on 2024-01-21.
//

import Foundation

enum SideMenuOptionModel: Int, CaseIterable {
    case dashborad
    case performance
    case profile
    case search
    case notifications
    
    var title: String{
        switch self {
        case .dashborad:
            return "Dashborad"
        case .performance:
            return "Performance"
        case .profile:
            return "Profile"
        case .search:
            return "Search"
        case .notifications:
            return "Notifications"
        }
    }
    
    var systemImageName: String {
        switch self {
        case .dashborad:
            return "filemenu.and.cursorarrow"
        case .performance:
            return "chart.bar"
        case .profile:
            return "person"
        case .search:
            return "magnifyingglass"
        case .notifications:
            return "bell"
        }
    }
}

extension SideMenuOptionModel: Identifiable {
    var id: Int { return self.rawValue }
}
