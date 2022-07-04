//
//  ViewTwo.swift
//  BindingTask
//
//  Created by admin on 04.07.2022.
//

import SwiftUI

struct ViewTwo: View {
//    var viewOne = ViewOne(twoScreen: false, threenScreen: false)
    @Binding var navigationToSecondScreen: Bool
    @State var navigationToThirdScreen: Bool = false
    var body: some View {
        VStack {
            Text("Screen Two")
                .bold()
                .font(.system(size: 48))
            Spacer()
            
            Button(action: {self.navigationToThirdScreen = true}) {
                Text("Last Screen")
            }
            Spacer()
            NavigationLink(
                destination:
                    ViewThree(navigationToSecondScreen: $navigationToSecondScreen)
                        .navigationBarBackButtonHidden(true),
                isActive: $navigationToThirdScreen
            ) {}

        }    }
}

struct ViewTwo_Previews: PreviewProvider {
    static var previews: some View {
        ViewTwo(navigationToSecondScreen: .constant(false))
    }
}
