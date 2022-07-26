//
//  RedView.swift
//  CoordinatorPast2_1
//
//  Created by admin on 20.07.2022.
//

import SwiftUI

struct RedView: View {
    @ObservedObject var viewModel: RedViewModel
    var body: some View {
        ZStack {
            Color.red.opacity(0.5)
            VStack {
                Button(action: {
                    viewModel.onTapButtonNext()
                })
                {
                    Text("Navigation next page")
                }
                Button(action: {viewModel.onTapButtonBack()}) {
                    Text("Back")
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
