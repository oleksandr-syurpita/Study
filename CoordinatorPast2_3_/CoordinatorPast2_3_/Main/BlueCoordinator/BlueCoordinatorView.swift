//
//  BlueCoordinatorView.swift
//  CoordinatorPast2_3_
//
//  Created by admin on 22.07.2022.
//

import SwiftUI
import SwiftUINavigation
struct BlueCoordinatorView: View {
    @ObservedObject var blueCoordinator: BlueCoordinator
    var body: some View {
        NavigationView {
            ZStack {
                BlueView(viewModel: blueCoordinator.viewModel)
                NavigationLink(
                    unwrapping: $blueCoordinator.route,
                    case: /BlueCoordinator.Route.navigationGreen,
                    destination: {(blueCoordinator: Binding<GreenCoordinator>) in
                        GreenCoordinatorView(coordinator: blueCoordinator.wrappedValue) .navigationBarHidden(true)
                    },
                    onNavigate: { _ in}) {}
            }
        }
    }
}

