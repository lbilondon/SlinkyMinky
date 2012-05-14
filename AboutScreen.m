//
//  AboutScreen.m
//  SlinkyMinkyApp
//
//  Created by Kaushalya Kularatnam on 14/05/2012.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "AboutScreen.h"

@interface AboutScreen ()

@end

@implementation AboutScreen

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end
