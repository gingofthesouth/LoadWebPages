//
//  ThirdViewController.m
//  LoadWebPages
//
//  Created by Ernest Cunningham on 2/02/15.
//  Copyright (c) 2015 Icy. All rights reserved.
//

#import "ThirdViewController.h"

@interface ThirdViewController ()

@end

@implementation ThirdViewController
- (void)viewDidLoad {
    [super viewDidLoad];
    [self loadWebView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)loadWebView
{
    // Create Request
    NSURL *url = [NSURL URLWithString:@"http://stuff.co.nz"];
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

