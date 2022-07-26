//
//  ContentView.swift
//  CoordinatorPast2_3_
//
//  Created by admin on 21.07.2022.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var viewModel:ContentViewModel
    var body: some View {
        ZStack {
            Color.gray.opacity(0.6)
                .ignoresSafeArea()
            VStack {
                Button(action: {viewModel.onTapMainButton()}) {
                    Text("next to Red View")
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(viewModel: .init())
    }
}
