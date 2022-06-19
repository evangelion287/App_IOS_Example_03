//
//  ContentView.swift
//  SideMenuSwiftTutorial
//
//  Created by Mac on 26/02/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        NavigationView{
            ZStack{
                Color(.white)
                
                Text("Hello World")
                    .padding()
            }
            
            .navigationBarItems(leading: Button(action:{
                print("DBUG: Show menu here...")
                
            },label: {
                Image(systemName: "list.bullet")
                    .foregroundColor(.black)
            }))
            .navigationTitle("Home")
        }
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
