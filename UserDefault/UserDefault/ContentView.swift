//
//  ContentView.swift
//  UserDefault
//
//  Created by admin on 24.05.2022.
//

import SwiftUI

struct ContentView: View {
    @State var massege = ""
    @State var get = ""
    var body: some View {
        VStack{
            Text(get)
                .padding()
            TextField("Input text",text: $massege)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
            Button(action: {
                UserDefaults.standard.set(self.massege, forKey: "messege")
                self.get = self.massege
                self.massege = ""
            }) {
                Text("Save")
            }
            .background(Color.red)
            .foregroundColor(.black)
            .cornerRadius(.infinity)
        }
        .onAppear() {
            guard let getMessege = UserDefaults.standard.value(forKey: "messege") else{return}
            
            self.get = getMessege as!  String
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
