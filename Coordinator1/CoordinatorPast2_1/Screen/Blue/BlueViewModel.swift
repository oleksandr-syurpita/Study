//
//  BlueVIewModel.swift
//  CoordinatorPast2_1
//
//  Created by admin on 20.07.2022.
//

import Foundation
class BlueViewModel: ObservableObject {
    enum Result {
        case navigationBack
    }
    var onResult:((Result) -> Void)?
    
    func onTapButtonBlueBack() {
        
        onResult?(.navigationBack)
    }
}
