//
//  ViewThree.swift
//  BindingTask
//
//  Created by admin on 04.07.2022.
//

import SwiftUI
struct ViewThree: View {
    @Binding var navigationToSecondScreen: Bool
    var body: some View {
            Text("Hello, World!")
        
            .onTapGesture {
                navigationToSecondScreen  = false
            }
    }
}

struct ViewThree_Previews: PreviewProvider {
    static var previews: some View {
        ViewThree(navigationToSecondScreen: .constant(false))
    }
}
