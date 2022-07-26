//
//  MainCoordinator.swift
//  CoordinatorPast2_4
//
//  Created by admin on 22.07.2022.
//

import Foundation

class MainCoordinator:ObservableObject {
    
    enum Route{
        case redScreen
    }
    @Published var route:Route?
    
    var viewModel: ContenViewModel
    init(viewModel:ContenViewModel) {
        self.viewModel = viewModel
        viewModel.onResult = {[weak self] result in
            switch result {
                
            case .navigationNext:
                self?.route = nil
            }
        }
    }
}
