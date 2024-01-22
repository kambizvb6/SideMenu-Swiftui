//
//  DashboradView.swift
//  SideMenu
//
//  Created by Kambiz on 2024-01-21.
//

import SwiftUI

struct DashboradView: View {
    var body: some View {
        NavigationStack{
            ZStack{
                VStack{
                    Text("Home")
                        .font(.largeTitle)
                }
            }
            .navigationTitle("Home")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    DashboradView()
}
