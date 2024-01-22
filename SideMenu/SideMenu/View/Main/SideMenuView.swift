//
//  SideMenuView.swift
//  SideMenu
//
//  Created by Kambiz on 2024-01-21.
//

import SwiftUI

struct SideMenuView: View {
    @Binding var isShowing: Bool
    @Binding var selectedOption: SideMenuOptionModel?
    
    var body: some View {
        ZStack{
            if isShowing {
                Rectangle()
                    .opacity(0.3)
                    .ignoresSafeArea()
                    .onTapGesture { isShowing.toggle() }
                
                HStack{
                    VStack(alignment: .leading, spacing: 12){
                        SideMenuHeaderView()
                        
                        VStack{
                            ForEach(SideMenuSections.allCases) { secation in
                                SideMenuSectionView(section: secation,
                                                    isShowing: $isShowing,
                                                    selectedOption: $selectedOption)
                            }
                        }
                        
                        Spacer()
                        
                        SideMenuFooterView()
                            .padding(.horizontal, -16)
                    }
                    .padding()
                    .frame(width: 270, alignment: .leading)
                    .background(.menuBackground)
                    
                    Spacer()
                }
                .transition(.move(edge: .leading))
            }
        }
        .animation(.easeIn, value: isShowing)
    }
    
    private func onOtionTapped(_ option: SideMenuOptionModel) {
        selectedOption = option
        isShowing = false
    }
}

#Preview {
    SideMenuView(isShowing: .constant(true), selectedOption: .constant(.home))
}
