//
//  RedCoordinatorView.swift
//  CoordinatorPast2_1
//
//  Created by admin on 20.07.2022.
//

import SwiftUI
import SwiftUINavigation

struct RedCoordinatorView: View {
    @ObservedObject var redCoordinator:RedCoordinator
    var body: some View {
        NavigationView {
            ZStack {
                RedView(viewModel: redCoordinator.viewModel)
                    .navigationBarHidden(true)
//                NavigationLink(
//                    unwrapping: redCoordinator.route,
//                    case: /RedCoordinator.Route.blueView,
//                    destination: Blue, onNavigate: <#T##(Bool) -> Void#>, label: <#T##() -> _#>)
            }

        }
    }
}

