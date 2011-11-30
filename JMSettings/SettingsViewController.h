//
//  SettingsViewController.h
//  JMSettings
//
//  Created by Javier Moreno Lozano on 16/11/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol SettingsViewControllerDelegate

- (void)settingsViewControllerDidFinishWithSelection:(NSDictionary *)selection;

@end

@interface SettingsViewController : UITableViewController

@property (nonatomic, assign) IBOutlet id <SettingsViewControllerDelegate> delegate;
@property (nonatomic, strong) NSMutableArray *arraySettings;

@end
