//
//  Login.swift
//  SideMenuSwiftTutorial
//
//  Created by ALBERTO on 30/05/22.
//

import SwiftUI

struct Login: View {
    
    @State private var user = ""
    @State private var pass = ""
    @State private var wrongUsername = 0
    @State private var wrongPassword = 0
    @State private var showingLoginScreen = false
    
    
    
    
    var body: some View {
        NavigationView{
            ZStack{
                Color.blue
                    .ignoresSafeArea()
                
                Circle()
                    .scale(1.7)
                    .foregroundColor(.white.opacity(0.15))
                
                Circle()
                    .scale(1.35)
                    .foregroundColor(.white)
                
                
                VStack{
                    Text("Login")
                        .font(.largeTitle)
                        .bold()
                        .padding()
                    
                    TextField("Usuario", text: $user)
                        .padding()
                        .frame(width:300, height: 50)
                        .background(Color.black.opacity(0.05))
                        .cornerRadius(10)
                        .border(.red, width: CGFloat(wrongUsername))
                    
                    
                    SecureField("Contraseña", text: $pass)
                        .padding()
                        .frame(width:300, height: 50)
                        .background(Color.black.opacity(0.05))
                        .cornerRadius(10)
                        .border(.red, width: CGFloat(wrongPassword))
                    
                    
                    Button("Login"){
                        
                        authenticateUser(username: user, password: pass)
                    }
                    .foregroundColor(.white)
                    .frame(width:300, height: 50)
                    .background(Color.blue)
                    .cornerRadius(10)
                    
                    
                    NavigationLink(destination: PrincipalView(), isActive: $showingLoginScreen){
                        
                        EmptyView()
                        
                    }
                }
                
            }
            .navigationBarHidden(true)
        }
    }
    
    func authenticateUser(username: String, password: String){
        
        if(username.uppercased() == "ALB"){
            wrongUsername = 0
            
            if(password.uppercased() == "123"){
                wrongPassword = 0
                showingLoginScreen = true
            }else{
                wrongPassword = 2
            }
        }else{
            wrongUsername = 2
        }
        
    }
}

struct Login_Previews: PreviewProvider {
    static var previews: some View {
        Login()
    }
}
