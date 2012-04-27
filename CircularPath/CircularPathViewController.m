//
//  CircularPathViewController.m
//  CircularPath
//
//  Created by Kiattisak Anoochitarom on 4/25/55 BE.
//  Copyright (c) 2555 __MyCompanyName__. All rights reserved.
//

#import "CircularPathViewController.h"
#import "CircularPathCustomize.h"
#import "CircularView.h"

@interface CircularPathViewController() {
    CircularPathCustomize *circularCustomize;
}
@end

@implementation CircularPathViewController

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}


- (void)circularViewAnimated{
    if (circularCustomize.progress < 0.75) {
        circularCustomize.progress += 0.01;
        [circularCustomize setNeedsDisplay];
        NSLog(@"%.2f",circularCustomize.progress);
    }
    
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    circularCustomize = [CircularPathCustomize initCircularWithRect:CGRectMake(0, 0, 200, 200) progress:0.5 strokeColor:[UIColor whiteColor]]; 
    
    //[NSTimer scheduledTimerWithTimeInterval:1/2 target:self selector:@selector(circularViewAnimated) userInfo:nil repeats:YES];
    
    [self.view addSubview:circularCustomize];
}

- (void)viewDidUnload
{
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

@end
