//
//  HomeViewController.m
//  Test
//
//  Created by OLX - German on 3/25/14.
//  Copyright (c) 2014 OLX. All rights reserved.
//

#import "HomeViewController.h"
#import "CountryListViewController.h"

@interface HomeViewController ()

@end

@implementation HomeViewController

- (void) viewDidLoad {
    [self setTitle:@"Home"];
}

- (void) viewWillAppear:(BOOL)animated {
    self.navigationController.navigationBar.hidden = NO;
}

- (IBAction)botonTapped:(id)sender {
    CountryListViewController *controller = [[CountryListViewController alloc] init];
    [self.navigationController pushViewController:controller animated:YES];
}

@end
