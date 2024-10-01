import UIKit
import WebKit
import swift_ads_package

class AdsWebViewController: UIViewController {

    var scriptId: Int
    var webViewWidth: CGFloat
    var webViewHeight: CGFloat

    init(scriptId: Int, width: CGFloat, height: CGFloat) {
        self.scriptId = scriptId
        self.webViewWidth = width
        self.webViewHeight = height
        super.init(nibName: nil, bundle: nil)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        let webView = SwiftAdsPackage(frame: .zero, configuration: WKWebViewConfiguration(), scriptId: scriptId)

        // Adjusting the frame to the specified dimensions
        webView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(webView)

        // Configuring constraints for the WebView layout
        NSLayoutConstraint.activate([
            webView.widthAnchor.constraint(equalToConstant: webViewWidth),
            webView.heightAnchor.constraint(equalToConstant: webViewHeight),
            webView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            webView.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
    }
}
