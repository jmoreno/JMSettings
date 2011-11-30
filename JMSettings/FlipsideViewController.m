//
//  FlipsideViewController.m
//  JMSettings
//
//  Created by Javier Moreno Lozano on 16/11/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import "FlipsideViewController.h"
#import "SettingsViewController.h"
#import "ArraySetting.h"


@implementation FlipsideViewController

@synthesize delegate = _delegate;
@synthesize arrayButtons = _arrayButtons;
@synthesize tableView = _tableView;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
    }
    return self;
}
							
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{

    NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];
    if ([userDefaults objectForKey:@"arrayButtons"]) {
        _arrayButtons = [[NSMutableArray alloc] initWithArray:[userDefaults objectForKey:@"arrayButtons"]];
    } else {
        _arrayButtons = [[NSMutableArray alloc] initWithObjects:
                         @"", 
                         @"", 
                         @"", 
                         @"", 
                         @"", 
                         @"", 
                         @"", 
                         @"", 
                         @"", 
                         @"", 
                         @"", 
                         @"", nil];
    }

    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [self setTableView:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
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

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // Return the number of rows in the section.
    NSLog(@"%i", [_arrayButtons count]);
    return [_arrayButtons count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:CellIdentifier] autorelease];
    }
    
    // Configure the cell...
    NSDictionary *theRow = nil;
    if (![[_arrayButtons objectAtIndex:indexPath.row] isEqualToString:@""]) {
        theRow = [ArraySetting getDictionaryFromName:[_arrayButtons objectAtIndex:indexPath.row]];
    }

    cell.textLabel.text = [NSString stringWithFormat:@"Button %i", (indexPath.row + 1)];
    if (![theRow isEqual:[NSNull null]]) {
        cell.detailTextLabel.text = [theRow objectForKey:@"titulo"];
    } else {
        cell.detailTextLabel.text = @"";
    }
    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    
    return cell;
}

#pragma mark - Table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
     SettingsViewController *settingsViewController = [[SettingsViewController alloc] initWithStyle:UITableViewStyleGrouped];
    settingsViewController.delegate = self;
    UINavigationController *navigationController = [[UINavigationController alloc] initWithRootViewController:settingsViewController];
    [self presentModalViewController:navigationController animated:YES];
    
    [navigationController release];
    [settingsViewController release];
}

#pragma mark - Actions

- (IBAction)done:(id)sender
{
    NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];
    [userDefaults setObject:_arrayButtons forKey:@"arrayButtons"];
    [userDefaults synchronize];
    [self.delegate flipsideViewControllerDidFinish:self];
}

- (void)settingsViewControllerDidFinishWithSelection:(NSDictionary *)selection {
    if (selection != nil) {
        [_arrayButtons replaceObjectAtIndex:[_tableView.indexPathForSelectedRow row] withObject:[selection objectForKey:@"nombre"]];            
    }
    [_tableView reloadData];
    [self dismissModalViewControllerAnimated:YES];
}

- (void)dealloc {
    [_tableView release];
    [super dealloc];
}
@end
