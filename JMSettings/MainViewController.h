//
//  MainViewController.h
//  JMSettings
//
//  Created by Javier Moreno Lozano on 16/11/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import "FlipsideViewController.h"

#import <CoreData/CoreData.h>

@interface MainViewController : UIViewController <FlipsideViewControllerDelegate>

@property (strong, nonatomic) NSManagedObjectContext *managedObjectContext;

@property (retain, strong) NSMutableArray *arrayButtons;

- (IBAction)showInfo:(id)sender;
- (IBAction)openURL:(id)sender;

@end
