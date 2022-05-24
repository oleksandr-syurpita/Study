//
//  USDefauld.swift
//  UserDefault_2
//
//  Created by admin on 24.05.2022.
//

import SwiftUI

class UserDefauldSettings: ObservableObject {
    @Published var isOn:Bool = UserDefaults.standard.bool(forKey: "Ison") {
        didSet {
            UserDefaults.standard.set(self.isOn, forKey: "Ison")
        }
    }
    
}
