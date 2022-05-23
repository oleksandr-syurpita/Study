//
//  ContentView.swift
//  ObservedObject
//
//  Created by admin on 09.05.2022.
//

import SwiftUI

struct User{
    var firstName = "Ivan"
    var lastName = "Penrov"
}
struct ContentView: View {
    @State private var user = User()
    var body: some View {
        VStack{
            Text("Your name is \(user.firstName) \(user.lastName)")
            TextField("First name", text: $user.firstName)
            TextField("Last name",text: $user.lastName)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
