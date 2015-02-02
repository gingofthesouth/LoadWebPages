//
//  ThirdViewController.h
//  LoadWebPages
//
//  Created by Ernest Cunningham on 3/02/15.
//  Copyright (c) 2015 Icy. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ThirdViewController : UIViewController <UIWebViewDelegate>
{
    IBOutlet UIWebView *webView;
}
-(void)loadWebView;
@end
