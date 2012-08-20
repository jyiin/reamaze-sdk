//
//  ViewController.m
//  ReamazeSample
//
//  Created by Jason Yiin on 8/4/12.
//  Copyright (c) 2012 Reamaze. All rights reserved.
//

#import "ViewController.h"
#import "ReamazeSettings.h"
#import "UsersConnection.h"
#import "EventsConnection.h"
#import "ReamazeUserData.h"
#import "ReamazeEventData.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    [ReamazeSettings configure:@"example" with:@"apikey"];
    
    UsersConnection *connection = [[UsersConnection alloc] init];
    ReamazeUserData *user = [[ReamazeUserData alloc] init];
    user.identifier = @"123";
    user.name = @"test name";
    [connection sendRequest:user];
    
    EventsConnection *eventConnection = [[EventsConnection alloc] init];
    ReamazeEventData *event = [[ReamazeEventData alloc] init];
    event.identifier = @"123";
    event.name = @"pro upgrade";
    event.value = @"100";
    [eventConnection sendRequest:event];
    
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) {
        return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
    } else {
        return YES;
    }
}

@end
