//
//  SideHeaderView.swift
//  SideMenuSwiftUI
//
//  Created by Alexis Jimenez on 29/01/21.
//

import SwiftUI

struct SideHeaderView: View {
    @Binding var isShowing: Bool
    
    var body: some View {
        ZStack(alignment: .topTrailing) {
            Button(action: {
                withAnimation(.spring()) {
                    isShowing.toggle()
                }
            }, label: {
                Image(systemName: "xmark")
                    .frame(width: 32, height: 32)
                    .foregroundColor(.white)
                    .padding()
            })
            
            VStack(alignment: .leading) {
                Image("coolImage")
                    .resizable()
                    .scaledToFill()
                    .clipped()
                    .frame(width: 64, height: 64)
                    .clipShape(Circle())
                    .padding(.bottom, 16)
                
                Text("Ivan Jimenez")
                    .font(.system(size: 24, weight: .semibold))
                
                Text("@fuckme")
                    .font(.system(size: 14))
                    .padding(.bottom, 24)
                
                HStack(spacing: 12) {
                    HStack(spacing: 4) {
                        Text("1254").bold()
                        Text("Following")
                    }
                    
                    HStack(spacing: 4) {
                        Text("607").bold()
                        Text("Followers")
                    }
                    Spacer()
                }
                
                Spacer()
            }
            .padding()
        }
    }
}

struct SideHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        SideHeaderView(isShowing: .constant(true))
    }
}
