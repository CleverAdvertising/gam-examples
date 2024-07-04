//
//  ViewController.swift
//  swift_ui_kit_test
//
//  Created by Jonathas Rangel on 20/06/2024.
//

import UIKit
import GoogleMobileAds
class ViewController: UIViewController,GADBannerViewDelegate {
    var bannerView: GAMBannerView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let viewWidth = view.frame.inset(by: view.safeAreaInsets).width
        
        // Here the current interface orientation is used. Use
        // GADLandscapeAnchoredAdaptiveBannerAdSizeWithWidth or
        // GADPortraitAnchoredAdaptiveBannerAdSizeWithWidth if you prefer to load an ad of a
        // particular orientation,
        var adSize = GADAdSizeFromCGSize(CGSize(width: 300, height: 250))
        bannerView = GAMBannerView(adSize: adSize)
        
        bannerView.adUnitID = "/21785617536/ios_test_app_ad_unit"
        bannerView.rootViewController = self
        bannerView.load(GAMRequest())
        bannerView.delegate = self
        addBannerViewToView(bannerView)
    }
    
    func addBannerViewToView(_ bannerView: GAMBannerView) {
       bannerView.translatesAutoresizingMaskIntoConstraints = false
       view.addSubview(bannerView)
       view.addConstraints(
         [NSLayoutConstraint(item: bannerView,
                             attribute: .bottom,
                             relatedBy: .equal,
                             toItem: view.safeAreaLayoutGuide,
                             attribute: .bottom,
                             multiplier: 1,
                             constant: 0),
          NSLayoutConstraint(item: bannerView,
                             attribute: .centerX,
                             relatedBy: .equal,
                             toItem: view,
                             attribute: .centerX,
                             multiplier: 1,
                             constant: 0)
         ])
      }
    func bannerViewDidReceiveAd(_ bannerView: GADBannerView) {
      print("bannerViewDidReceiveAd")
    }

    func bannerView(_ bannerView: GADBannerView, didFailToReceiveAdWithError error: Error) {
      print("bannerView:didFailToReceiveAdWithError: \(error.localizedDescription)")
    }

    func bannerViewDidRecordImpression(_ bannerView: GADBannerView) {
      print("bannerViewDidRecordImpression")
    }

    func bannerViewWillPresentScreen(_ bannerView: GADBannerView) {
      print("bannerViewWillPresentScreen")
    }

    func bannerViewWillDismissScreen(_ bannerView: GADBannerView) {
      print("bannerViewWillDIsmissScreen")
    }

    func bannerViewDidDismissScreen(_ bannerView: GADBannerView) {
      print("bannerViewDidDismissScreen")
    }}

