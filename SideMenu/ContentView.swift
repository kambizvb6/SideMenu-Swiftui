//
//  ContentView.swift
//  SideMenu
//
//  Created by Kambiz on 2024-01-21.
//

import SwiftUI

struct ContentView: View {
    @State private var showMenu = false
    @State private var selectedTab = 0
    @State private var selectedOption: SideMenuOptionModel? = .home
    
    var body: some View {
        NavigationStack{
            ZStack {
                TabView(selection: $selectedTab){
                    ForEach(SideMenuOptionModel.allCases) { option in
//<<<<<<< Updated upstream
                        //Here we don't need to use switch
                        Text(option.title)
                            .tag(option.rawValue)

                        switch option {
                        case .home:
                            Text("Home")
                                .tag(option.rawValue)
                        case .visitors:
                            Text("Visitors")
                                .tag(option.rawValue)
                        case .summary:
                            Text("Summary")
                                .tag(option.rawValue)
                        case .searchEngin:
                            Text("Search Engin")
                                .tag(option.rawValue)
                        case .aboutus:
                            Text("About US")
                                .tag(option.rawValue)
                        }

                    }
                }
                
                SideMenuView(isShowing: $showMenu, selectedOption: $selectedOption)
                // A simple transition and animation make it more attractive 
                    .transition(.move(edge: .leading))
                    .animation(.spring(), value: showMenu)
                
            
            }
            .toolbar(showMenu ? .hidden : .visible, for: .navigationBar)
            .navigationTitle(selectedOption?.title ?? "Dashborad")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar{
                ToolbarItem(placement: .topBarLeading) {
                    Button {
                        showMenu.toggle()
                    } label: {
                        Image(systemName: "line.3.horizontal")
                    }

                }
            }
            .onChange(of: selectedOption) { oldValue, newValue in
                guard let newValue else { return }
                selectedTab = newValue.rawValue
            }
        }
    }
}

#Preview {
    ContentView()
}
