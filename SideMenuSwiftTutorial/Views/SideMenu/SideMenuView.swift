//
//  SideMenuView.swift
//  SideMenuSwiftTutorial
//
//  Created by ALBERTO on 19/06/22.
//

import SwiftUI

struct SideMenuView: View {
    @Binding var isShowing: Bool
    
    var body: some View {
        
        ZStack{
        
            LinearGradient(gradient: Gradient(colors: [Color.blue, Color.purple]), startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea()
            
            VStack{
               
                //Text("HOLA")
                
                SideMenuHeaderView(isShowing: $isShowing)
                    .foregroundColor(.white)
                    //.frame(width: 240)
                
                ForEach(0..<9){ _ in
                    SideMenuOptionView()
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
