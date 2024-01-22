//
//  SideMenuHeaderView.swift
//  SideMenu
//
//  Created by Kambiz on 2024-01-21.
//

import SwiftUI

struct SideMenuHeaderView: View {
    var body: some View {
        HStack{
            Image("Logo")
                .resizable()
                .scaledToFit()
                .foregroundStyle(.white)
                .frame(width: 200)
                .clipShape(RoundedRectangle(cornerRadius: 10))
                .padding(.vertical)
        }
    }
}

#Preview {
    SideMenuHeaderView()
}
