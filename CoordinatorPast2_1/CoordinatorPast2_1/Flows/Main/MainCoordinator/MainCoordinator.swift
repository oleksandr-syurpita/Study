//
//  MainCoordinator.swift
//  CoordinatorPast2_1
//
//  Created by admin on 20.07.2022.
//

import Foundation

class MainCoordinator: ObservableObject {
    enum Route {
        case redScreen(redCoordinator:RedCoordinator)
    }
    var viewModel: ContenViewModel
    
   @Published var route: Route?
    
    init(viewModel:ContenViewModel) {
        self.viewModel = viewModel
        viewModel.onResult = {[weak self] result in
            switch result {
            case .navigationNext:
                self?.moveToRedView()
            }
        }
    }
    private func moveToRedView() {
        let redCoordinator = RedCoordinator(viewModel: RedViewModel())
        redCoordinator.onResult = {[weak self] result in
            switch result {
                
            case .navigationBack:
                self?.route = nil
            }
        }
        route = .redScreen(redCoordinator: redCoordinator)
    }
}
