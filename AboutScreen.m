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

@synthesize aboutLabel;

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
	self.aboutLabel.textColor = [UIColor blackColor];
    [self.aboutLabel setFont:[UIFont fontWithName:@"King Cool KC" size:22]];
    
    self.aboutLabel.backgroundColor=[UIColor clearColor];
    self.view.backgroundColor = [[UIColor alloc] initWithPatternImage:[UIImage imageNamed:@"AboutScreenBackGround.png"]];
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return ((interfaceOrientation == UIInterfaceOrientationLandscapeLeft) || (interfaceOrientation == UIInterfaceOrientationLandscapeRight));
}

@end
