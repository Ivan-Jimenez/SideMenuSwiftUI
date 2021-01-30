//
//  SideMenuView.swift
//  SideMenuSwiftUI
//
//  Created by Alexis Jimenez on 29/01/21.
//

import SwiftUI

struct SideMenuView: View {
    @Binding var isShowing: Bool
    
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [Color.blue, Color.purple]),
                           startPoint: .top,
                           endPoint: .bottom)
                .ignoresSafeArea()
            
            VStack {
                SideHeaderView(isShowing: $isShowing)
                    .foregroundColor(.white)
                    .frame(height: 240)
                
                ForEach(SideMenuViewModel.allCases, id: \.self) { option in
                    SideMenuOptionView(title: option.title, icon: option.icon)
                        .foregroundColor(.white)
                }
                
                Spacer()
            }
        }
        .navigationBarHidden(true)
    }
}

struct SideMenuView_Previews: PreviewProvider {
    static var previews: some View {
        SideMenuView(isShowing: .constant(true))
    }
}
