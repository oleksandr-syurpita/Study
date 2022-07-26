//
//  RedViewModel.swift
//  CoordinatorPast2_1
//
//  Created by admin on 20.07.2022.
//

import Foundation

class RedViewModel: ObservableObject {
    
    enum Result {
        case navigatioNext
        case navigationBack
    }
    
    var onResult: ((Result) -> Void)?
    
    func onTapButtonNext() {
        onResult?(.navigatioNext)
    }
    
    func onTapButtonBack() {
        onResult?(.navigationBack)
    }
}
