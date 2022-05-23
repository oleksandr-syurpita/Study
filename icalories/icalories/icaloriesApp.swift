//
//  icaloriesApp.swift
//  icalories
//
//  Created by admin on 21.05.2022.
//

import SwiftUI

@main
struct icaloriesApp: App {
    
    @StateObject private var dataController = DataController()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext,dataController.container.viewContext)
        }
    }
}
