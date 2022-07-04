//
//  TwoScreen.swift
//  Binding_1
//
//  Created by admin on 04.07.2022.
//

import SwiftUI

struct TwoScreen: View {
    @Binding var ToSecondScreen: Bool
    @State var ToLastScreen = false
    var body: some View {
        VStack {
            Text("Two Screen")
                .font(.system(size: 48))
                .bold()
            Button(action:{self.ToLastScreen = true}) {
                Text("GO to next screen")
            }
            NavigationLink(
                destination:
                    TheerScreen(ToSecondScreen: $ToSecondScreen)
                        .navigationBarBackButtonHidden(true),
                isActive: $ToLastScreen
            ) {}
        }
    }
}

struct TwoScreen_Previews: PreviewProvider {
    static var previews: some View {
        TwoScreen(ToSecondScreen: .constant(false))
    }
}
