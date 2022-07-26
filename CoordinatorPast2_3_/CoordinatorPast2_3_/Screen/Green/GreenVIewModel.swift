//
//  GreenVIew.swift
//  CoordinatorPast2_3_
//
//  Created by admin on 21.07.2022.
//

import Foundation

class GreenViewModel: ObservableObject {
    enum Result {
        case navigationBack
        case navigationMain
    }
    var onResult:((Result) -> Void)?
    
    func navigationBack() {
        onResult?(.navigationBack)
    }
    func navigationMain() {
        onResult?(.navigationMain)
    }
}
