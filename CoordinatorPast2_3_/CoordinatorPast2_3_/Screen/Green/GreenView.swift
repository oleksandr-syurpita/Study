//
//  GreenView.swift
//  CoordinatorPast2_3_
//
//  Created by admin on 21.07.2022.
//

import SwiftUI

struct GreenView: View {
    @ObservedObject var viewModel: GreenViewModel
    var body: some View {
        ZStack {
            Color.green
                .ignoresSafeArea()
                VStack {
                    Button(action: {viewModel.navigationMain()}) {
                        Text("navigation to main")
                    }
                    Button(action: {viewModel.navigationBack()}) {
                        Text("Back page")
                    }
            }
        }
    }
}

struct GreenView_Previews: PreviewProvider {
    static var previews: some View {
        GreenView(viewModel: .init())
    }
}
