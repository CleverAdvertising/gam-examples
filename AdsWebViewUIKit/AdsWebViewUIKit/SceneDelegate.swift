import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = (scene as? UIWindowScene) else { return }

        // Manually initialize the UIViewController
        let window = UIWindow(windowScene: windowScene)
        window.frame = UIScreen.main.bounds
        let adsWebViewController = AdsWebViewController(scriptId: 123, width: 320, height: 50)
        window.rootViewController = adsWebViewController
        window.frame = UIScreen.main.bounds
        window.makeKeyAndVisible()

        self.window = window
    }
}
