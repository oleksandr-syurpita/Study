//
//  ContentView.swift
//  CoordinatorPast2_4
//
//  Created by admin on 22.07.2022.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var viewModel: ContenViewModel
    var body: some View {
        ZStack {
            Button(action: {viewModel.buttonMoveNext()}) {
                Text("**Next**")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(viewModel: .init())
    }
}
