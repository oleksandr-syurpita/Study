//
//  Plank_63_AlarmApp.swift
//  Plank-63_Alarm
//
//  Created by admin on 31.05.2022.
//
import SwiftUI

@main
struct DatePickerApp: App {
    var body: some Scene {
        WindowGroup {
            AlarmView(viewModel: AlarmViewModel())
        }
    }
}
