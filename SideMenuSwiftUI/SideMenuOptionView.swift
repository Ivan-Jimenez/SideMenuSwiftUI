//
//  SideMenuOptionView.swift
//  SideMenuSwiftUI
//
//  Created by Alexis Jimenez on 29/01/21.
//

import SwiftUI

struct SideMenuOptionView: View {
    var title: String
    var icon: String
    
    var body: some View {
        HStack(spacing: 16) {
            Image(systemName: icon)
                .frame(width: 24, height: 24)
            
            Text(title)
                .font(.system(size: 15, weight: .semibold))
            Spacer()
        }
        .padding()
    }
}

struct SideMenuOptionView_Previews: PreviewProvider {
    static var previews: some View {
        SideMenuOptionView(title: "Profile", icon: "profile")
    }
}
