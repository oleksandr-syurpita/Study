//
//  ContentViewModel.swift
//  CoordinatorPast2_4
//
//  Created by admin on 22.07.2022.
//

import Foundation

class ContenViewModel: ObservableObject {
    enum Result {
        case navigationNext
    }
    var onResult:((Result) -> Void)?
    func buttonMoveNext() {
        onResult?(.navigationNext)
    }
}
