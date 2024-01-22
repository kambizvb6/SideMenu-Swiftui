//
//  SideMenuView.swift
//  SideMenu
//
//  Created by Kambiz on 2024-01-21.
//

import SwiftUI

struct SideMenuView: View {
    @Binding var isShowing: Bool
    @Binding var selectedTab: Int
    @State private var selectedOtion: SideMenuOptionModel?
    
    var body: some View {
        ZStack{
            if isShowing {
                Rectangle()
                    .opacity(0.3)
                    .ignoresSafeArea()
                    .onTapGesture { isShowing.toggle() }
                
                HStack{
                    VStack(alignment: .leading, spacing: 32){
                        SideMenuHeaderView()
                        
                        VStack{
                            ForEach(SideMenuOptionModel.allCases) { option in
                                Button {
                                    onOtionTapped(option)
                                } label: {
                                    SideMenuRowView(option: option, selectedOption: $selectedOtion)
                                }

                            }
                        }
                        
                        Spacer()
                    }
                    .padding()
                    .frame(width: 270, alignment: .leading)
                    .background(.white)
                    
                    Spacer()
                }
                .transition(.move(edge: .leading))
            }
        }
        .animation(.easeIn, value: isShowing)
    }
    
    private func onOtionTapped(_ option: SideMenuOptionModel) {
        selectedOtion = option
        selectedTab = option.rawValue
        isShowing = false
    }
}

#Preview {
    SideMenuView(isShowing: .constant(true), selectedTab: .constant(0))
}
