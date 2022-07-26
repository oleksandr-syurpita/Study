//
//  ContentViewModel.swift
//  CoordinatorPast2_1
//
//  Created by admin on 20.07.2022.
//

import Foundation

class ContenViewModel: ObservableObject {
    enum Result {
        case navigationNext
    }
    var onResult: ((Result) -> Void)?
    
    func onTapButtonAction() {
        
        onResult?(.navigationNext)
    }
}
