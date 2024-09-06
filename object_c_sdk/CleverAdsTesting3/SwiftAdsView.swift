import Foundation
import WebKit
import swift_ads_package
import Combine

@objc public class AdsWebViewWrapper: NSObject {
    @objc public let webView: WKWebView

    @objc public init(scriptId: Int, frame: CGRect) {
        self.webView = SwiftAdsPackage(frame: frame, configuration: WKWebViewConfiguration(), scriptId: scriptId)
        super.init()
    }

    // Optionally, you can provide methods to interact with the webView
    @objc public func loadRequest(url: URL) {
        let request = URLRequest(url: url)
        self.webView.load(request)
    }
}
