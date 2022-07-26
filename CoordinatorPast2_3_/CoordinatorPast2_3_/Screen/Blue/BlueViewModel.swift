//
//  BlueViewModel.swift
//  CoordinatorPast2_3_
//
//  Created by admin on 21.07.2022.
//

import Foundation

class BlueViewModel: ObservableObject {
    enum Result {
        case navigationBack
        case navigationGreen
    }
    
    var onResult:((Result) -> Void)?
    
    func navigationBack() {
        onResult?(.navigationBack)
    }
    
    func navigationGreen() {
        onResult?(.navigationGreen)
    }
}
