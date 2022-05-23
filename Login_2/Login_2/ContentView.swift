//
//  ContentView.swift
//  Login_2
//
//  Created by admin on 17.05.2022.
//

import SwiftUI

struct ContentView: View {
    @State private var email: String = ""
    @State private var password: String = ""
    var body: some View {
        ZStack {
            
            Color.yellowColor
                .ignoresSafeArea(.all)
            
            VStack {
                VStack(spacing: 15) {
                    Text("Login")
                    
                        .font(.system(size: 34))
                        .italic()
                        .bold()
                        .padding(.top,38)
                    
                    TextField("Email",text: $email)
                        .padding()
                        .frame(height: 50)
                        .background(Color.blueColor.opacity(0.1))
                        .cornerRadius(.infinity)
                        .padding([.leading,.trailing],13)
                        .font(.system(size: 14, weight: .bold))
                        .foregroundColor(.blueColor)
                    
                    TextField("Password",text: $password)
                        .padding()
                        .frame(height: 50)
                        .background(Color.blueColor.opacity(0.1))
                        .cornerRadius(.infinity)
                        .padding([.leading,.trailing],13)
                        .font(.system(size: 14, weight: .bold))
                        .foregroundColor(.blueColor)
                        
                    Button {
                        
                    }label: {
                        Text("Forgot your password?")
                            .font(.system(size: 12))
                            .lineLimit(1)
                            .foregroundColor(Color.black)
                            .padding([.leading,.trailing],85)
                    }
                    
                    Button {
                        
                    }label: {
                        Text("Continue")
                            .bold()
                            .frame(height: 50)
                            .padding([.leading,.trailing],75)
                            .background(Color.blueColor)
                            .cornerRadius(.infinity)
                            .foregroundColor(Color.white)
                            .padding(.bottom,15)

                    }
                    
                }.background(Color.white)
                    .cornerRadius(25)
                    .padding([.leading,.trailing],45)
                    
                Button {
                    
                }label: {
                    Text("Don’t have an account?")
                        .padding(.top,35)
                        .font(.system(size: 14,weight: .bold))
                        .padding([.leading,.trailing],110)
                }
                
                Button {
                    
                }label: {
                    Text("Create a new one")
                        .padding(.top,0)
                        .font(.system(size: 14))
                    
                    
                }
            }
        }
    }
}

extension Color {
    static var yellowColor: Color {
        Color("Yellow")
    }
    
    static var blueColor: Color {
        Color("Blue")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice("iPhone 13")
    }
}
