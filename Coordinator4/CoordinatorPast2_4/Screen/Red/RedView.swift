//
//  RedView.swift
//  CoordinatorPast2_4
//
//  Created by admin on 22.07.2022.
//

import SwiftUI

struct RedView: View {
    @ObservedObject var viewModel: RedViewModel
    var body: some View {
        ZStack {
            Color.red.opacity(0.5).ignoresSafeArea()
            VStack {
                Button(action: {viewModel.onTapButtonAction()}) {
                    Text("Next")
                }
            }
        }
    }
}

struct RedView_Previews: PreviewProvider {
    static var previews: some View {
        RedView(viewModel: .init())
    }
}
