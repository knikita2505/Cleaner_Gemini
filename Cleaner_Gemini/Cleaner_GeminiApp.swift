//
//  Cleaner_GeminiApp.swift
//  Cleaner_Gemini
//
//  Created by Nikita on 28.11.2025.
//

import SwiftUI

@main
struct Cleaner_GeminiApp: App {
    @StateObject private var serviceLocator = ServiceLocator.shared
    @StateObject private var router = Router()
    
    var body: some Scene {
        WindowGroup {
            NavigationStack(path: $router.path) {
                ContentView()
                    .environmentObject(serviceLocator)
                    .environmentObject(router)
                    .navigationDestination(for: AppRoute.self) { route in
                        switch route {
                        case .onboarding:
                            Text("Onboarding") // Placeholder
                        case .paywall:
                            Text("Paywall") // Placeholder
                        case .dashboard:
                            Text("Dashboard") // Placeholder
                        case .photoCleaner:
                            Text("Photo Cleaner") // Placeholder
                        case .videoCleaner:
                            Text("Video Cleaner") // Placeholder
                        case .contactsCleaner:
                            Text("Contacts Cleaner") // Placeholder
                        case .emailCleaner:
                            Text("Email Cleaner") // Placeholder
                        case .secretFolder:
                            Text("Secret Folder") // Placeholder
                        case .battery:
                            Text("Battery") // Placeholder
                        case .settings:
                            Text("Settings") // Placeholder
                        }
                    }
            }
        }
    }
}
