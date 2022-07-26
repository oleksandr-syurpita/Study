//
//  RedViewModel.swift
//  CoordinatorPast2_3_
//
//  Created by admin on 21.07.2022.
//

import Foundation

class RedVIewModel: ObservableObject {
    
    enum Result {
        case navigationBack
        case navgiationBlue
        case nabigationGreen
    }
    
    var onResult:((Result) -> Void)?
    
    func  onTapActionButton() {
        onResult?(.navgiationBlue)
    }
    func onTapButtonBack() {
        onResult?(.navigationBack)
    }
    
    func onTapActionButtonGreen() {
        onResult?(.nabigationGreen)
    }
}
