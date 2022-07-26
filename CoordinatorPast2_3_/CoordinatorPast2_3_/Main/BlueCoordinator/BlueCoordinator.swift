//
//  BlueCoordinator.swift
//  CoordinatorPast2_3_
//
//  Created by admin on 22.07.2022.
//

import Foundation

class BlueCoordinator: ObservableObject {
    enum Result {
        case navigationBack
        case navigationStart
    }
    enum Route {
        case navigationBack
        case navigationGreen(coordinator:GreenCoordinator)
    }
    
  @Published  var route: Route?
    var onResult:((Result) -> Void)?
    
    var viewModel: BlueViewModel
    init(viewModel:BlueViewModel) {
        self.viewModel = viewModel
        viewModel.onResult = { [weak self ] result in
            switch result {
            case .navigationBack:
                self?.onResult?(.navigationBack)
            case .navigationGreen:
                self?.moveToGreenScreen()
            }
        }
    }
    
    func moveToGreenScreen() {
        let greenCoordinator = GreenCoordinator(viewModel: GreenViewModel())
        greenCoordinator.onResult = { [weak self] result in
            switch result {
            case .navigationBack:
                self?.route = nil
            case .navigationStart:
                self?.onResult?(.navigationStart)
            }
        }
        route = .navigationGreen(coordinator: greenCoordinator)
    }
}
