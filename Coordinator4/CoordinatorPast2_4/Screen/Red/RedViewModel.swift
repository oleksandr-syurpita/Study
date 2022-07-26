//
//  RedViewModel.swift
//  CoordinatorPast2_4
//
//  Created by admin on 22.07.2022.
//

import Foundation
class RedViewModel: ObservableObject {
    enum Result {
        case navigationNext
        case navigationBack
    }
    var onResult:((Result) -> Void)?
    func onTapButtonAction(){
        onResult?(.navigationNext)
    }
    func onTapButtonBack() {
        onResult?(.navigationBack)
    }
}
