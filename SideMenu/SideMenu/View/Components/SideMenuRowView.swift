//
//  SideMenuRowView.swift
//  SideMenu
//
//  Created by Kambiz on 2024-01-21.
//

import SwiftUI

struct SideMenuRowView: View {
    let option: SideMenuOptionModel
    @Binding var selectedOption: SideMenuOptionModel?
    
    private var isSelectedOption: Bool {
        return selectedOption == option
    }
    
    var body: some View {
        HStack{
            Image(systemName: option.systemImageName)
                .imageScale(.large)
            
            Text(option.title)
                .font(.subheadline)
            
            Spacer()
        }
        .padding(.leading)
        .foregroundStyle(isSelectedOption ? .primary : .primary)
        .frame(width: 216, height: 44)
        .background(isSelectedOption ? .menuSelection : .clear)
        .clipShape(RoundedRectangle(cornerRadius: 10))
    }
}

#Preview {
    SideMenuRowView(option: .home, selectedOption: .constant(.home))
}
