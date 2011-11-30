//
//  ButtonListViewController.h
//  JMSettings
//
//  Created by Javier Moreno Lozano on 23/11/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "SettingsViewController.h"

@interface ButtonListViewController : UITableViewController <SettingsViewControllerDelegate>

@property (nonatomic, retain) NSMutableArray *arrayButtons;

@end
