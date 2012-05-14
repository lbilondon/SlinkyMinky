/*
    Application Name : SlinkyMinkyApp
    Class : MainCarouselViewController.m
    Author : Kaushalya Kularatnam
    Description : This class enables scrolling through different views. 
*/

#import "MainCarouselViewController.h"

NSInteger const ScrollViewControllerNumberOfPages = 8;
static int currentPageIndex;

@implementation MainCarouselViewController

@synthesize scrollView = _scrollView;
@synthesize backButton = _backButton;
@synthesize downLoadButton = _downLoadButton;
@synthesize currentPage = _currentPage;


#pragma mark View lifecycle
- (void)viewDidLoad
{
    [super viewDidLoad];
    
    // Set the size of the content to be displayed
    self.scrollView.contentSize = CGSizeMake(self.scrollView.bounds.size.height * ScrollViewControllerNumberOfPages, self.scrollView.bounds.size.width);
    self.scrollView.delegate = self;
    
    // Set page scrollView properties
    self.scrollView.pagingEnabled = YES;
    self.scrollView.userInteractionEnabled=YES;
    self.scrollView.scrollsToTop = NO;
    self.scrollView.showsVerticalScrollIndicator = NO;
    self.scrollView.showsVerticalScrollIndicator = NO;
    self.scrollView.alwaysBounceVertical = NO;
    self.scrollView.alwaysBounceHorizontal = NO;
    self.scrollView.bounces = NO;
    self.scrollView.hidden = NO;
    
    CGFloat pageWidth = self.view.bounds.size.width;
    CGFloat pageHeight = self.view.bounds.size.height;
    
    SettingsScreenViewController *settings = [self.storyboard instantiateViewControllerWithIdentifier:@"SettingsScreenViewController"];
    UIImage * skinToneColor = [settings returnSkinToneColor];
    int hairColorNumber = [settings returnHairColorNumber];
    
    // Loop around and create subviews in the scroll view
    for (int i=0; i<ScrollViewControllerNumberOfPages; i++)
    {
        CGFloat xOrigin = i * self.view.frame.size.height;
        CGRect subViewFrame = CGRectMake(xOrigin, 0, pageHeight, pageWidth);
       
        UIView *subView;
        
        if (i == 0)
        {
            CarouselViewController *view1 = [self.storyboard instantiateViewControllerWithIdentifier:@"CarouselViewController"];
            [view1 setMyPageIndex:i];
            [view1 setHairColor:hairColorNumber];
            [view1 setMySkinTone:skinToneColor];
            subView = view1.view;
        }
        else if (i == 1)
        {
            CarouselViewController *view2 = [self.storyboard instantiateViewControllerWithIdentifier:@"CarouselViewController"];
            [view2 setMyPageIndex:i];
            [view2 setHairColor:hairColorNumber];
            [view2 setSkinTone:skinToneColor];
            subView = view2.view;
        
        }
        else if (i == 2)
        {
            CarouselViewController *view3 = [self.storyboard instantiateViewControllerWithIdentifier:@"CarouselViewController"];
            [view3 setMyPageIndex:i];
            [view3 setHairColor:hairColorNumber];
            [view3 setSkinTone:skinToneColor];
            subView = view3.view;
        }
        else if (i == 3)
        {
            CarouselViewController *view4 = [self.storyboard instantiateViewControllerWithIdentifier:@"CarouselViewController"];
            [view4 setMyPageIndex:i];
            [view4 setHairColor:hairColorNumber];
            [view4 setSkinTone:skinToneColor];
            subView = view4.view;
        }
        else if (i == 4)
        {
            CarouselViewController *view5 = [self.storyboard instantiateViewControllerWithIdentifier:@"CarouselViewController"];
            [view5 setMyPageIndex:i];
            [view5 setHairColor:hairColorNumber];
            [view5 setSkinTone:skinToneColor];
            subView = view5.view;
        }
        else if (i == 5)
        {
            CarouselViewController *view6 = [self.storyboard instantiateViewControllerWithIdentifier:@"CarouselViewController"];
            [view6 setMyPageIndex:i];
            [view6 setHairColor:hairColorNumber];
            [view6 setSkinTone:skinToneColor];
            subView = view6.view;
        }
        else if (i == 6)
        {
            CarouselViewController *view7 = [self.storyboard instantiateViewControllerWithIdentifier:@"CarouselViewController"];
            [view7 setMyPageIndex:i];
            [view7 setHairColor:hairColorNumber];
            [view7 setSkinTone:skinToneColor];
            subView = view7.view;
        }
        else if (i == 7)
        {
            CarouselViewController *view8 = [self.storyboard instantiateViewControllerWithIdentifier:@"CarouselViewController"];
            [view8 setMyPageIndex:i];
            [view8 setHairColor:hairColorNumber];
            [view8 setSkinTone:skinToneColor];
            subView = view8.view;
        }
                
        subView.frame = subViewFrame;
        
        [self.scrollView addSubview:subView];
        [self.view addSubview:self.scrollView];
        [self.view addSubview:self.downLoadButton];
        [self.view addSubview:self.backButton];
    }
}

- (void)viewDidUnload
{
    self.scrollView = nil;
    [super viewDidUnload];
}

#pragma mark Scroll view delegate
- (void)scrollViewDidScroll:(UIScrollView *)scrollView
{
    CGFloat pageWidth = scrollView.frame.size.width;
    int page = floor((scrollView.contentOffset.x - pageWidth / 2) / pageWidth) + 1;
    self.currentPage = page;
    currentPageIndex = self.currentPage;
}


- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return ((interfaceOrientation == UIInterfaceOrientationLandscapeLeft) || (interfaceOrientation == UIInterfaceOrientationLandscapeRight));
}

- (IBAction)downLoadButtonAction
{
    DownLoadScreenViewController *downLoadScreen = [self.storyboard instantiateViewControllerWithIdentifier:@"DownLoadScreenViewController"];
    [self presentModalViewController:downLoadScreen animated:YES];
}

- (int) returnCurrentPageIndex
{
    return currentPageIndex;
}

@end


