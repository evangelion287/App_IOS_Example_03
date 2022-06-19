//
//  SideMenuHeaderView.swift
//  SideMenuSwiftTutorial
//
//  Created by ALBERTO on 19/06/22.
//

import SwiftUI

struct SideMenuHeaderView: View {
    var body: some View {
        VStack(alignment: .leading){
            Image("tanjiro kemado")
                .resizable()
                .scaledToFill()
                .clipped()
                .frame(width: 64, height: 64)
                .clipShape(Circle())
                .padding(.bottom, 16)
            
            Text("ALB")
                .font(.system(size:24, weight: .semibold))
               
            
            Text("@albertomtzu")
                .font(.system(size:14))
                .padding(.bottom, 24)
            
            HStack(spacing:12){
                HStack(spacing:4){
                    Text("607")
                        .bold()
                    
                    Text("Followers")
                }
                
                HStack(spacing:4){
                    Text("1,254")
                        .bold()
                    
                    Text("Following")
                }

                Spacer()
            }
            
            Spacer()
        }
        .padding()
    }
}

struct SideMenuHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        SideMenuHeaderView()
    }
}
