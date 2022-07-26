//
//  RedCoordinatorView.swift
//  CoordinatorPast2_3_
//
//  Created by admin on 22.07.2022.
//

import SwiftUI
import SwiftUINavigation

struct RedCoordinatorView: View {
    @ObservedObject var redCoordinator:RedCoordinator
    var body: some View {
        NavigationView {
            ZStack {
                RedVIew(viewModel: redCoordinator.viewModel)
                NavigationLink(
                    unwrapping: $redCoordinator.route,
                    case: /RedCoordinator.Route.blueScreen,
                    destination: {(redCoordinator: Binding<BlueCoordinator>) in
                        BlueCoordinatorView(blueCoordinator: redCoordinator.wrappedValue) .navigationBarHidden(true)
                    }, onNavigate: { _ in}) {}
                NavigationLink(
                    unwrapping: $redCoordinator.route,
                    case: /RedCoordinator.Route.greenScreen,
                    destination: {(redCoordinator: Binding<GreenCoordinator>) in
                        GreenCoordinatorView(coordinator: redCoordinator.wrappedValue) .navigationBarHidden(true)
                    },
                    onNavigate: { _ in}) {}
            }
        }
    }
}
