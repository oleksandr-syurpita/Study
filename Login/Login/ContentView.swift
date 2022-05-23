//
//  ContentView.swift
//  Login
//
//  Created by admin on 16.05.2022.
//

import SwiftUI

struct ContentView: View {
    let colorBlue =  Color("#00A3FF")
    @State private var email = ""
    @State private var password = ""
    
    var body: some View {
        
            
        ZStack {
            Color.init(red: 255, green: 204, blue: 0)
                .ignoresSafeArea(.all)


            VStack{
                        Text("Login")
                            .bold()
                            .font(.system(size: 50))
                            .font(.headline)
                            .padding()
                        TextField("Email", text: $email)
                            .padding()
                            .frame(width: UIScreen.main.bounds.width * 0.8, height: 50)
                            .background(Color.init(red: 0, green: 163, blue: 255))
                            .cornerRadius(50)
                        TextField("Password", text: $password)
                            .padding()
                            .frame(width: UIScreen.main.bounds.width * 0.8, height: 50)
                            .background(Color.init(red: 0, green: 163, blue: 255))
                            .cornerRadius(50)
                            .padding()
                        Button("Forgot your password?"){
                            
                        }
                        .foregroundColor(.black)
                            .padding()
                            .labelStyle(.titleOnly)
                            .font(.headline)
                    
                        Button("Continue"){
                            
                        }
                            .frame(width: 150, height: 50, alignment: .center)
                            .background(Color.init(red: 0, green: 162, blue: 255))
                            .foregroundColor(.white)
                            .cornerRadius(50)
                            .padding(.bottom,10)
               
                    }.background(Color.white)
                .cornerRadius(50)
               
        }
        VStack{
        Button("Don’t have an account? "){
            
        }
        .foregroundColor(.black)
            .padding()
            .labelStyle(.titleOnly)
            .font(.headline)
        Button("Create a new one"){
            
        }
        .foregroundColor(.black)
            .padding()
            .labelStyle(.titleOnly)
            .font(.headline)
        
        }
            
   
    }
            
            
        
        
    }
    


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
