//
//  FirstViewController.m
//  LoadWebPages
//
//  Created by Ernest Cunningham on 2/02/15.
//  Copyright (c) 2015 Icy. All rights reserved.
//

#import "FirstViewController.h"

@interface FirstViewController ()

@end

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Load the website
    [self loadWebView];
    
    //Create a GDC queue and have the other views loaded asynchonously.
    dispatch_queue_t vcQueue = dispatch_queue_create("VC Load Queue",NULL);
    
    // Preload the subsquent tabs
    for (UIViewController *aVC in self.tabBarController.viewControllers)
        dispatch_async(vcQueue, ^{
            if ([aVC respondsToSelector:@selector(view)] && aVC != self)
                aVC.view;
            
            dispatch_async(dispatch_get_main_queue(), ^{
                // Update the UI / Remove Activity Indicator / enable tabs
                
            });
        });
}

-(void)loadWebView
{
    // Create Request
    NSURL *url = [NSURL URLWithString:@"http://anandTech.com"];
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    [webView loadRequest:request];
}

- (void)webViewDidFinishLoad:(UIWebView *)webview
{
    if (webview.isLoading)
        return;
    else
        webView.hidden = false;
}

@end