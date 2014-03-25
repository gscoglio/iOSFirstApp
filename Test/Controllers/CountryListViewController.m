//
//  CountryListViewController.m
//  Test
//
//  Created by OLX - German on 3/25/14.
//  Copyright (c) 2014 OLX. All rights reserved.
//

#import "CountryListViewController.h"
#import "MockPaises.h"
#import "WebBrowserViewController.h"

@interface CountryListViewController ()

@end

@implementation CountryListViewController

- (void) viewDidLoad {
    self.title = @"Countries";
    list = [MockPaises getCountries];
}

- (IBAction) botonBackTapped:(id)sender {
    [self.navigationController popViewControllerAnimated:YES];
}

- (UITableViewCell *)tableView:(UITableView *)tableVista cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [[UITableViewCell alloc] init];
    cell.textLabel.text = [list objectAtIndex:indexPath.row];
    return cell;
}

- (NSInteger) numberOfSectionsInTableView:(UITableView *)tableVista {
    return 1;
}

- (NSInteger) tableView:(UITableView *)tableVista numberOfRowsInSection:(NSInteger)section {
    return list.count;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    NSMutableArray *webSites = [MockPaises getWebSiteAddresses];
    NSString *url = [webSites objectAtIndex:indexPath.row];
    
    WebBrowserViewController *webController = [[WebBrowserViewController alloc] initWithAddress:url];
    [self.navigationController pushViewController:webController animated:YES];
}


@end
