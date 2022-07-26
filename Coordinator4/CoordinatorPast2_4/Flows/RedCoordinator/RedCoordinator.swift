//
//  RedCoordinator.swift
//  CoordinatorPast2_4
//
//  Created by admin on 22.07.2022.
//

import Foundation

class RedCoordinator:ObservableObject {
    enum Route {
        case navigationBack
    }
    @Published var route: Route?
    var viewModel: RedViewModel
    init(viewModel:RedViewModel) {
        self.viewModel = viewModel
        viewModel.onResult = { [weak self] result in
            switch result {
                
            case .navigationNext:
                self?.route = nil
            case .navigationBack:
                self?.route = nil
            }
            
        }
    }
}
