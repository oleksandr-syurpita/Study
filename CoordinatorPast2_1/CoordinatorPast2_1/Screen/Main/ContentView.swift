//
//  ContentView.swift
//  CoordinatorPast2_1
//
//  Created by admin on 20.07.2022.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var viewModel: ContenViewModel
    var body: some View {
        ZStack {
            VStack {
                Text("**Main**  **PAGE**")
                Button(action: {viewModel.onTapButtonAction()}) {
                    Text("GO **TO** RED PAGE")
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
