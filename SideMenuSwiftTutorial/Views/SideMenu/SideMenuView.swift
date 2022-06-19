//
//  SideMenuView.swift
//  SideMenuSwiftTutorial
//
//  Created by ALBERTO on 19/06/22.
//

import SwiftUI

struct SideMenuView: View {
    var body: some View {
        
        ZStack{
        
            LinearGradient(gradient: Gradient(colors: [Color.blue, Color.purple]), startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea()
            
            VStack{
                    SideMenuHeaderView()
                    .foregroundColor(.white)
            }
        }
    }
}

struct SideMenuView_Previews: PreviewProvider {
    static var previews: some View {
        SideMenuView()
    }
}
