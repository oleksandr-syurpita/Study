//
//  BlueView.swift
//  CoordinatorPast2_3_
//
//  Created by admin on 21.07.2022.
//

import SwiftUI

struct BlueView: View {
    @ObservedObject var viewModel: BlueViewModel
    var body: some View {
        ZStack {
            Color.blue.opacity(0.5)
                .ignoresSafeArea()

            VStack {
                Button(action: {viewModel.navigationBack()}) {
                    Text("Back")
                }
                
                Button(action: {viewModel.navigationGreen()}) {
                    Text("Navigation to green")
                }

            }
        }
    }
}

struct BlueView_Previews: PreviewProvider {
    static var previews: some View {
        BlueView(viewModel: .init())
    }
}
