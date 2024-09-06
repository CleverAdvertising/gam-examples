//
//  ViewController.m
//  CleverAdsTesting3
//
//  Created by Admin on 05/09/2024.
//

#import "ViewController.h"
#import "CleverAdsTesting3-Swift.h"
#import <WebKit/WebKit.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    // Initialize the Swift class
    CGRect frame = CGRectMake(20, 50, 320, 480); // Set desired size
    AdsWebViewWrapper *adsWebViewWrapper = [[AdsWebViewWrapper alloc] initWithScriptId:81331 frame: frame];

    // Use the webView property to access the WKWebView
    WKWebView *webView = adsWebViewWrapper.webView;

    // Add the webView to your view hierarchy
    UIColor *colour = [[UIColor alloc]initWithRed:57.0/255.0 green:156.0/255.0 blue:52.0/255.0 alpha:1.0];
    self.view.backgroundColor = colour;
    [self.view addSubview:webView];
}


@end
