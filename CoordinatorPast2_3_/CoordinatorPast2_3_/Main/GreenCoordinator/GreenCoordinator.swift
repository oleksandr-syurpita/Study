//
//  GreenCoordinator.swift
//  CoordinatorPast2_3_
//
//  Created by admin on 22.07.2022.
//

import Foundation

class GreenCoordinator: ObservableObject {
    
    enum Result {
        case navigationBack
        case navigationStart
        
    }
    enum Route {
        case navigationBack
        case navigationMain(mainCoordinator:Coordinator)
    }
    var onResult:((Result) -> Void)?
    var route:Route?
    
    var viewModel: GreenViewModel
    init(viewModel: GreenViewModel) {
        self.viewModel = viewModel
        viewModel.onResult = { [weak self] result in
            switch result {
                
            case .navigationBack:
                self?.onResult?(.navigationBack)
            case .navigationMain:
                self?.onResult?(.navigationStart)
            }
        }
    }
}
