//
//  ContentView.swift
//  Binding_1
//
//  Created by admin on 04.07.2022.
//

import SwiftUI

struct ContentView: View {
    @State var ToSecondScreen = false
    var body: some View {
        NavigationView {
            VStack {
                Text("First Screen")
                    .font(.system(size: 48))
                    .bold()
                Button(action:{self.ToSecondScreen = true}) {
                    Text("GO to next screen")
                }
                NavigationLink(
                    destination:
                        TwoScreen(ToSecondScreen: $ToSecondScreen)
                            .navigationBarBackButtonHidden(true),
                    isActive: $ToSecondScreen
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
