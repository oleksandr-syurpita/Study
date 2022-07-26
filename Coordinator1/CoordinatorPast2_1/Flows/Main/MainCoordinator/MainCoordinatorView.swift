//
//  MainCoordinatorView.swift
//  CoordinatorPast2_1
//
//  Created by admin on 20.07.2022.
//

import SwiftUI
import SwiftUINavigation

struct MainCoordinatorView: View {
    @ObservedObject var coordinator: MainCoordinator
    var body: some View {
        NavigationView {
        
            ZStack {
                ContentView(viewModel: coordinator.viewModel)
                NavigationLink(
                    unwrapping: $coordinator.route,
                    case: /MainCoordinator.Route.redScreen,
                    destination: {(redCoordinator: Binding<RedCoordinator>) in
                        RedCoordinatorView(redCoordinator: redCoordinator.wrappedValue)
                            .navigationBarHidden(true)
                    }, onNavigate: { _ in
                    }) {}
            }
        }
    }
}

