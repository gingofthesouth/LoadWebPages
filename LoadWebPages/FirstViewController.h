//
//  FirstViewController.h
//  LoadWebPages
//
//  Created by Ernest Cunningham on 2/02/15.
//  Copyright (c) 2015 Icy. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FirstViewController : UIViewController <UIWebViewDelegate>
{
    IBOutlet UIWebView *webView;
}

-(void)loadWebView;
@end

