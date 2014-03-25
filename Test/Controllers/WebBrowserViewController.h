//
//  WebBrowserViewController.h
//  Test
//
//  Created by OLX - German on 3/25/14.
//  Copyright (c) 2014 OLX. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface WebBrowserViewController : UIViewController <UIWebViewDelegate> {
    IBOutlet UIWebView *browser;
    IBOutlet UIActivityIndicatorView *spinning;
    NSString *url;
}

- (id) initWithAddress:(NSString *) address;

@end
