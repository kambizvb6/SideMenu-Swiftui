//
//  SideMenuSections.swift
//  SideMenu
//
//  Created by Kambiz on 2024-01-21.
//

import Foundation

enum SideMenuSections: Int, CaseIterable {
    case home
    case state
    
    var sectionTitle: String {
        switch self {
        case .home:
            return "Home"
        case .state:
            return "State"
        }
    }
    
    var option: [SideMenuOptionModel] {
        switch self {
        case .home:
            return [.home]
        case .state:
            return [.visitors, .summary, .searchEngin]
        }
    }
}

extension SideMenuSections: Identifiable {
    var id: Int { return self.rawValue }
}
