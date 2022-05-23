//
//  ContentView.swift
//  Task_2_1
//
//  Created by admin on 23.05.2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack {
                ScrollView(showsIndicators:false) {
                    story
                    post
                    Spacer()
                }
                
            }
        }
        .navigationTitle("What's New?")
        .font(.system(size: 34, weight: .bold))
        Spacer()
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice("iPhone 13")

        PostView()
            .previewDevice("iPhone 13")

    }
}
