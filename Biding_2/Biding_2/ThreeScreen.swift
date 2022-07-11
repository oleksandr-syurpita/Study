//
//  ThreeScreen.swift
//  Biding_2
//
//  Created by admin on 04.07.2022.
//

import SwiftUI

struct ThreeScreen: View {
    @Binding var MoveToSecondScreen: Bool
//    @Binding var moveToFirstScreen: Bool
    var body: some View {
        Button(action: {MoveToSecondScreen = false}) {
            Text("back")
        }
    }
}

struct ThreeScreen_Previews: PreviewProvider {
    static var previews: some View {
        ThreeScreen(MoveToSecondScreen: .constant(false))
    }
}
