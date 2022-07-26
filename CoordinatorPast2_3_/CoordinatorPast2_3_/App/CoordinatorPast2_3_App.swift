//
//  CoordinatorPast2_3_App.swift
//  CoordinatorPast2_3_
//
//  Created by admin on 21.07.2022.
//

import SwiftUI

@main
struct CoordinatorPast2_3_App: App {
    var body: some Scene {
        WindowGroup {
            CoordinatorView(
                coordinator: Coordinator(
                    viewModel: ContentViewModel()
                ))}
    }
}
