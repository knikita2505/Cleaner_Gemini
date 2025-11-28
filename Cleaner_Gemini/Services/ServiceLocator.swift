import Foundation

class ServiceLocator: ObservableObject {
    static let shared = ServiceLocator()
    
    // Core Services
    let photoService: PhotoService
    let videoService: VideoService
    let contactsService: ContactsService
    let storageService: StorageService
    let batteryService: BatteryService
    let secretFolderService: SecretFolderService
    let subscriptionService: SubscriptionService
    let logService: LogService
    
    private init() {
        self.photoService = PhotoService()
        self.videoService = VideoService()
        self.contactsService = ContactsService()
        self.storageService = StorageService()
        self.batteryService = BatteryService()
        self.secretFolderService = SecretFolderService()
        self.subscriptionService = SubscriptionService()
        self.logService = LogService()
    }
}
