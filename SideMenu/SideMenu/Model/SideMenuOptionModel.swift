//
//  SideMenuOptionModel.swift
//  SideMenu
//
//  Created by Kambiz on 2024-01-21.
//

import Foundation

enum SideMenuOptionModel: Int, CaseIterable {
    case home
    case visitors
    case summary
    case searchEngin
    case aboutus
    
    var title: String {
        switch self {
        case .home:
            return "Home"
        case .visitors:
            return "Visitors"
        case .summary:
            return "Summary"
        case .searchEngin:
            return "Search Engin"
        case .aboutus:
            return "About US"
        }
    }
    
    var systemImageName: String {
        switch self {
        case .home:
            return "house"
        case .visitors:
            return "person"
        case .summary:
            return "chart.pie"
        case .searchEngin:
            return "magnifyingglass.circle"
        case .aboutus:
            return "exclamationmark.circle"
        }
    }
}

extension SideMenuOptionModel: Identifiable, Hashable {
    var id: Int { return self.rawValue }
}
