//
//  SideMenuHeaderView.swift
//  SideMenuSwiftTutorial
//
//  Created by ALBERTO on 19/06/22.
//

import SwiftUI

struct SideMenuHeaderView: View {
    @Binding var isShowing : Bool
    
    var body: some View {
        
        ZStack(alignment: .topTrailing){
            
            Button(action: {
                
                withAnimation(.spring()){
                
                    isShowing.toggle()
                }
                
            }, label: {
                /*Image("pexels_yang")
                    .frame(width: 32, height: 32)
                    .foregroundColor(.black)
                    padding()*/
                
                Image(systemName: "xmark")
                    .foregroundColor(.black)
                    .font(Font.system(size: 30, weight: .bold))
                    //.frame(width: 32, height: 32)
                    .padding(.horizontal, 15)
                    .padding(.top, 20)
            })
            
        
        
        
            VStack(alignment: .leading){
                Image("pexels_yang")
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
}

struct SideMenuHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        SideMenuHeaderView(isShowing: .constant(true))
    }
}
