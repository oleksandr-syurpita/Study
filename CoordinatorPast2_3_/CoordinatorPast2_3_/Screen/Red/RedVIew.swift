//
//  RedVIew.swift
//  CoordinatorPast2_3_
//
//  Created by admin on 21.07.2022.
//

import SwiftUI

struct RedVIew: View {
    @ObservedObject var  viewModel: RedVIewModel
    var body: some View {
        ZStack {
            Color.red.opacity(0.4)
                .ignoresSafeArea()

            VStack {
                Button(action: {viewModel.onTapActionButton()}) {
                    Text("Navigation to Blue")
                }
                
                Button(action: {viewModel.onTapButtonBack()}) {
                    Text("Back")
                }
                
                Button(action: {viewModel.onTapActionButtonGreen()}) {
                    Text("Navigation to Green")
                }
            }
        }
    }
}

struct RedVIew_Previews: PreviewProvider {
    static var previews: some View {
        RedVIew(viewModel: .init())
    }
}
