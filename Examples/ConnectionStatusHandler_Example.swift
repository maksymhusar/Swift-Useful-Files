// ConnectionStatusHandler.swift used

class AppDelegate: UIResponder, UIApplicationDelegate {
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        ...
        ConnectionStatusHandler.instance.start()
        return true
    }
