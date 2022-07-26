//
//  ContentViewModel.swift
//  CoordinatorPast2_3_
//
//  Created by admin on 21.07.2022.
//

import Foundation

class ContentViewModel: ObservableObject {
    
    enum Result {
        case navigationNext
    }
    var onResult:((Result) -> Void)?
    
    func onTapMainButton() {
        onResult?(.navigationNext)
    }
}
