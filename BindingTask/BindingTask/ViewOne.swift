//
//  ContentView.swift
//  BindingTask
//
//  Created by admin on 04.07.2022.
//

import SwiftUI

struct ViewOne: View {
    @State var navigationToSecondScreen: Bool = false
    var body: some View {
    
        NavigationView {
            
            VStack {
                Text("Screen One")
                    .bold()
                    .font(.system(size: 48))
                Spacer()
                Button(action: {self.navigationToSecondScreen = true}) {
                    Text("Move to second")
                }
                Spacer()
                NavigationLink(
                    destination:
                        ViewTwo(navigationToSecondScreen: $navigationToSecondScreen)
                            .navigationBarBackButtonHidden(true),
                    isActive: $navigationToSecondScreen
                ) {}

            }
            
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ViewOne()
    }
}
