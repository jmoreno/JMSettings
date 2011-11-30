//
//  MainViewController.m
//  JMSettings
//
//  Created by Javier Moreno Lozano on 16/11/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import "MainViewController.h"
#import "ArraySetting.h"

@implementation MainViewController

@synthesize managedObjectContext = _managedObjectContext;
@synthesize arrayButtons = _arrayButtons;

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.    
}

- (void)viewDidUnload
{
    [self setArrayButtons:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];
    _arrayButtons = [[NSMutableArray alloc] initWithArray:[userDefaults objectForKey:@"arrayButtons"]];

    for (int i = 0; i < [_arrayButtons count]; i++) {

        UIButton *theButton = (UIButton *)[self.view viewWithTag:i+1];
        UILabel *theLabel = (UILabel *)[self.view viewWithTag:i+20];
        if ([[_arrayButtons objectAtIndex:i] isEqualToString:@""]) {
            [theButton setEnabled:NO];
            [theButton setHidden:YES];
            [theLabel setHidden:YES];
        } else {
            NSDictionary *dictionary = [ArraySetting getDictionaryFromName:[_arrayButtons objectAtIndex:i]];
            [theButton setEnabled:YES];
            [theButton setHidden:NO];
            [theLabel setHidden:NO];
            NSLog(@"Imagen: %@", [dictionary objectForKey:@"imagen"]);
            UIImage *theButtonImage = [UIImage imageNamed:[dictionary objectForKey:@"imagen"]];
            NSLog(@"Imagen desc : %@", [theButtonImage description]);
            [theButton setImage:theButtonImage forState:UIControlStateNormal];
            theLabel.text = [dictionary objectForKey:@"titulo"];
        }
        
    }
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
	[super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
	[super viewDidDisappear:animated];
}

#pragma mark - Flipside View

- (void)flipsideViewControllerDidFinish:(FlipsideViewController *)controller
{
    [self dismissModalViewControllerAnimated:YES];
}

- (void)dealloc
{
    [_managedObjectContext release];
    [super dealloc];
}

- (IBAction)showInfo:(id)sender
{    
    FlipsideViewController *controller = [[[FlipsideViewController alloc] initWithNibName:@"FlipsideViewController" bundle:nil] autorelease];
    controller.delegate = self;
    controller.modalTransitionStyle = UIModalTransitionStyleFlipHorizontal;
    [self presentModalViewController:controller animated:YES];
}

- (IBAction)openURL:(id)sender {
    NSDictionary *dictionary = [ArraySetting getDictionaryFromName:[_arrayButtons objectAtIndex:[sender tag] - 1]];
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:[dictionary objectForKey:@"URL"]]];
}

@end
