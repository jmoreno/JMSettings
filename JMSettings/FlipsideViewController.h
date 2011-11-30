//
//  FlipsideViewController.h
//  JMSettings
//
//  Created by Javier Moreno Lozano on 16/11/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SettingsViewController.h"

@class FlipsideViewController;

@protocol FlipsideViewControllerDelegate
- (void)flipsideViewControllerDidFinish:(FlipsideViewController *)controller;
@end

@interface FlipsideViewController : UIViewController <UITableViewDelegate, UITableViewDataSource, SettingsViewControllerDelegate>

@property (assign, nonatomic) IBOutlet id <FlipsideViewControllerDelegate> delegate;
@property (nonatomic, strong) NSMutableArray *arrayButtons;
@property (retain, nonatomic) IBOutlet UITableView *tableView;

- (IBAction)done:(id)sender;

@end
