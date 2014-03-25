//
//  CountryListViewController.h
//  Test
//
//  Created by OLX - German on 3/25/14.
//  Copyright (c) 2014 OLX. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CountryListViewController : UIViewController <UITableViewDelegate> {
    IBOutlet UITableView *tableView;
    NSMutableArray *list;
}

@end
