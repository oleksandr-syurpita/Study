//
//  BlueView.swift
//  CoordinatorPast2_1
//
//  Created by admin on 20.07.2022.
//

import SwiftUI

struct BlueView: View {
    @ObservedObject var viewModel: BlueViewModel
    var body: some View {
        ZStack{
            Color.blue.opacity(0.5)
            VStack{
                Button(action: {viewModel.onTapButtonBlueBack()}) {
                    Text("")
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
