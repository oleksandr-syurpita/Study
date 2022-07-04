//
//  ContentView.swift
//  Biding_2
//
//  Created by admin on 04.07.2022.
//

import SwiftUI

struct ContentView: View {
    @State var MoveToSecondScreen = false
    var body: some View {
        NavigationView {
            VStack {
                Button(action: {self.MoveToSecondScreen = true}) {
                    Text("GO to next screen")
                }
                NavigationLink(
                    destination:
                        TwoScreen(MoveToSecondScreen: $MoveToSecondScreen)
                            .navigationBarBackButtonHidden(true),
                    isActive: $MoveToSecondScreen
                ) {}

            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
