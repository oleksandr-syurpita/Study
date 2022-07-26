//
//  RedCoordinator.swift
//  CoordinatorPast2_1
//
//  Created by admin on 20.07.2022.
//

import Foundation

class RedCoordinator: ObservableObject {
    
    enum Result {
        case navigationBack
    }
    enum Route {
        case blueView
    }
    @Published var route: Route?
    var onResult: ((Result) -> Void)?
    var viewModel: RedViewModel
    
    init(viewModel: RedViewModel) {
        self.viewModel = viewModel
        viewModel.onResult = {[weak self] result in
            switch result {
                
            case .navigatioNext:
                self?.route = .blueView
            case .navigationBack:
                self?.onResult?(.navigationBack)
            }
            
        }
    }
    
}
