import SwiftUI

enum AppRoute: Hashable {
    case onboarding
    case paywall
    case dashboard
    case photoCleaner
    case videoCleaner
    case contactsCleaner
    case emailCleaner
    case secretFolder
    case battery
    case settings
}

class Router: ObservableObject {
    @Published var path = NavigationPath()
    
    func navigate(to route: AppRoute) {
        path.append(route)
    }
    
    func navigateBack() {
        path.removeLast()
    }
    
    func popToRoot() {
        path.removeLast(path.count)
    }
}
