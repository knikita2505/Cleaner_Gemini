//
//  Cleaner_GeminiApp.swift
//  Cleaner_Gemini
//
//  Created by Nikita on 28.11.2025.
//

import SwiftUI

@main
struct Cleaner_GeminiApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
