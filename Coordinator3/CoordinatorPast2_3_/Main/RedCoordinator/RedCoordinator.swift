//
//  RedCoordinator.swift
//  CoordinatorPast2_3_
//
//  Created by admin on 22.07.2022.
//

import Foundation
import SwiftUI

class RedCoordinator: ObservableObject {
    
    enum Route {
        case  blueScreen(blueCoordinator:BlueCoordinator)
        case greenScreen(greenCoordinator:GreenCoordinator)
        case backScreen
    }
    enum Result {
        case navigationBack
        case navigationStart
    }
  @Published  var route: Route?
    var onResulte:((Result) -> Void)?
    
    var viewModel:RedVIewModel
    
    init(viewModel:RedVIewModel) {
        self.viewModel = viewModel
        viewModel.onResult = {[weak self] result in
            
            switch result {
                
            case .navigationBack:
                withAnimation {
                    self?.onResulte?(.navigationBack)
                }
            case .navgiationBlue:
                self?.navigationToBlue()
            case .nabigationGreen:
                self?.moveToGreenScreen()

            }
        }
    }
    func navigationToBlue() {
        let blueCoordinator = BlueCoordinator(viewModel: BlueViewModel())
        blueCoordinator.onResult = { [weak self] result in
            switch result {
            case .navigationBack:
                self?.route = nil
            case .navigationStart:
                self?.onResulte?(.navigationStart)
            }
        }
        route = .blueScreen(blueCoordinator: blueCoordinator)
    }
    
    func moveToGreenScreen() {
        let greenCoordinator = GreenCoordinator(viewModel: GreenViewModel())
        greenCoordinator.onResult = { [weak self] result in
            switch result {
            case .navigationBack:
                self?.route = nil
            case .navigationStart:
                self?.onResulte?(.navigationStart)
            }
            
        }
        route = .greenScreen(greenCoordinator: greenCoordinator)
    }
    
}
