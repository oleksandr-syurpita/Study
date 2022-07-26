//
//  CoordinatorView.swift
//  CoordinatorPast2_3_
//
//  Created by admin on 21.07.2022.
//

import SwiftUI
import SwiftUINavigation

struct CoordinatorView: View {
    @ObservedObject var coordinator: Coordinator
    var body: some View {
        NavigationView {
            ZStack {
                ContentView(viewModel: coordinator.viewModel)
                
                NavigationLink(
                    unwrapping: $coordinator.route,
                    case: /Coordinator.Route.redScreen,
                    destination: {(coordinator: Binding<RedCoordinator>) in
                        RedCoordinatorView(redCoordinator: coordinator.wrappedValue) .navigationBarHidden(true)
                    },
                    onNavigate: { _ in}) {}
            }
        }
    }
}

