//
//  TheerScreen.swift
//  Binding_1
//
//  Created by admin on 04.07.2022.
//

import SwiftUI

struct TheerScreen: View {
    @Binding var ToSecondScreen: Bool
    var body: some View {
        Button(action: {ToSecondScreen = false}) {
            Text("Back")
        }
    }
}

struct TheerScreen_Previews: PreviewProvider {
    static var previews: some View {
        TheerScreen(ToSecondScreen: .constant(false))
    }
}
