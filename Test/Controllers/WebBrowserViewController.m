//
//  WebBrowserViewController.m
//  Test
//
//  Created by OLX - German on 3/25/14.
//  Copyright (c) 2014 OLX. All rights reserved.
//

#import "WebBrowserViewController.h"

@interface WebBrowserViewController ()
    - (void) setVisibility:(BOOL) show;
    - (void) navigate:(NSString *)_url;
@end

@implementation WebBrowserViewController

- (id) initWithAddress:(NSString *) address {
    self = [super init];
    url = address;
    return self;
}

- (void) viewDidLoad {
    [self setVisibility:NO];
    [self navigate:url];
}

- (void)webViewDidFinishLoad:(UIWebView *)webView {
    [self setVisibility:YES];
}

- (void) setVisibility:(BOOL) show {
    [browser setHidden:!show];
    [spinning setHidden:show];
    if (show) {
        [spinning stopAnimating];
    } else {
        [spinning startAnimating];
    }
    
}

- (void) navigate:(NSString *)_url {
    NSURL* nsUrl = [NSURL URLWithString:_url];
    NSURLRequest* request = [NSURLRequest requestWithURL:nsUrl
                                             cachePolicy:NSURLRequestReloadIgnoringLocalAndRemoteCacheData
                                         timeoutInterval:30];
    [browser loadRequest:request];
}

@end
