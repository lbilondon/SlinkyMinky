/*
    Application Name : SlinkyMinkyApp
    Class : MainCarouselViewController.m
    Author : Kaushalya Kularatnam
    Description : This class enables scrolling through different views. 
 */

#import <UIKit/UIKit.h>
#import "CarouselViewController.h"
#import "SettingsScreenViewController.h"
#import "DownLoadScreenViewController.h"
 
@interface MainCarouselViewController: UIViewController <UIScrollViewDelegate>

@property (nonatomic, retain) IBOutlet UIScrollView *scrollView;
@property (nonatomic, retain) IBOutlet UIButton *backButton;
@property (nonatomic, retain) IBOutlet UIButton *downLoadButton;
@property (nonatomic, assign) int currentPage;

- (IBAction)downLoadButtonAction;
- (int) returnCurrentPageIndex;
@end
