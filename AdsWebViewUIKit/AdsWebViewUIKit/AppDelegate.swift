import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
       
        window = UIWindow(frame: UIScreen.main.bounds)
        
        // Creating AdsWebViewController manually
        let adsWebViewController = AdsWebViewController(scriptId: 123, width: 320, height: 50)
        window?.rootViewController = adsWebViewController
        window?.makeKeyAndVisible()
        
        return true
    }
}
