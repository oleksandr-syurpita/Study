//
//  GreenCoordinatorView.swift
//  CoordinatorPast2_3_
//
//  Created by admin on 22.07.2022.
//

import SwiftUI
import SwiftUINavigation
struct GreenCoordinatorView: View {
    @ObservedObject var coordinator: GreenCoordinator
    var body: some View {
        NavigationView {
            ZStack {
                GreenView(viewModel: coordinator.viewModel)
            }
        }
    }
}

