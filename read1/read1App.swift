//
//  read1App.swift
//  read1
//
//  Created by وعد عياد الرويلي on 12/06/1444 AH.
//

import SwiftUI

@main
struct read1App: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
