//
//  Coordinator.swift
//  CoordinatorPast2_3_
//
//  Created by admin on 21.07.2022.
//

import Foundation

class Coordinator:ObservableObject {
    
    enum Route {
        case redScreen(redCoordinator:RedCoordinator)
    }
    
    @Published var route: Route?
    
    var viewModel: ContentViewModel
    init(viewModel:ContentViewModel) {
        self.viewModel = viewModel
        viewModel.onResult = { [weak self ] result in
            switch result {
            case .navigationNext:
                self?.routeRedScreen()
            }
        }
    }
    func routeRedScreen() {
        let redCoordinator = RedCoordinator(viewModel: RedVIewModel())
        redCoordinator.onResulte = { [weak self] result in
            switch result {
                
            case .navigationBack:
                self?.route = nil
            case .navigationStart:
                self?.route = nil
            }
            
        }
        route = .redScreen(redCoordinator: redCoordinator)
    }
}
