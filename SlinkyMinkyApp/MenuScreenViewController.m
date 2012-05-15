/*
    Application Name : SlinkyMinkyApp
    Class : MenuScreenViewController.m
    Author : Kaushalya Kularatnam
    Description : This class is the Main Menu. 
*/

#import "MenuScreenViewController.h"


@implementation MenuScreenViewController

@synthesize setting = _setting;
- (void)viewDidLoad
{
    [super viewDidLoad];
    self.view.backgroundColor = [[UIColor alloc] initWithPatternImage:[UIImage imageNamed:@"MenuScreenViewControllerBackGround.png"]];
    self.setting.adjustsImageWhenHighlighted = YES;
}

- (void)viewDidUnload
{
    [super viewDidUnload];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return ((interfaceOrientation == UIInterfaceOrientationLandscapeLeft) || (interfaceOrientation == UIInterfaceOrientationLandscapeRight));
}


- (IBAction)settingsButton;
{
    SettingsScreenViewController *settingsScreenViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"SettingsScreenViewController"];
    [self presentModalViewController:settingsScreenViewController animated:YES];
}

- (IBAction)infoButton;
{
    AboutScreen *infoScreenViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"AboutScreen"];
    infoScreenViewController.modalTransitionStyle = UIModalTransitionStyleFlipHorizontal;
    [self presentModalViewController:infoScreenViewController animated:YES];
}



@end
