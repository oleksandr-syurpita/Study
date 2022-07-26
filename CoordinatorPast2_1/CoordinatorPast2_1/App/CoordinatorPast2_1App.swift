//
//  CoordinatorPast2_1App.swift
//  CoordinatorPast2_1
//
//  Created by admin on 20.07.2022.
//

import SwiftUI

@main
struct CoordinatorPast2_1App: App {
    var body: some Scene {
        WindowGroup {
            MainCoordinatorView(coordinator: MainCoordinator(viewModel: ContenViewModel()))
        }
    }
}
