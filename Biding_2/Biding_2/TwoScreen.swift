//
//  TwoScreen.swift
//  Biding_2
//
//  Created by admin on 04.07.2022.
//

import SwiftUI

struct TwoScreen: View {
    @Binding var MoveToSecondScreen: Bool
    @State var MoveToLastScreen = false
    var body: some View {
        VStack {
            Text("Welcome to newx screen")
            Button(action: {self.MoveToLastScreen = true}) {
                Text("go next")
            }
            NavigationLink(destination: ThreeScreen(MoveToSecondScreen: $MoveToSecondScreen), isActive: $MoveToLastScreen){}
        }
    }
}

struct TwoScreen_Previews: PreviewProvider {
    static var previews: some View {
        TwoScreen(MoveToSecondScreen: .constant(true))
    }
}
