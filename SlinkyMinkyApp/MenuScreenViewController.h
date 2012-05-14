/*
    Application Name : SlinkyMinkyApp
    Class : MenuScreenViewController.m
    Author : Kaushalya Kularatnam
    Description : This is the main Menu. 
 */

#import <UIKit/UIKit.h>
#import "SettingsScreenViewController.h"
#import "AboutScreen.h"
#import "MainCarouselViewController.h"

@interface MenuScreenViewController : UIViewController

@property (nonatomic,retain) IBOutlet UIButton * setting;
- (IBAction)settingsButton;
- (IBAction)infoButton;

@end
