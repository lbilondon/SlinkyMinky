//
//  MinkyScreenSwapViewController.m
//  SlinkyMinkyApp
//
//  Created by Kaushalya Kularatnam on 13/03/2012.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "MinkyScreenSwapViewController.h"

@interface MinkyScreenSwapViewController ()

@end

@implementation MinkyScreenSwapViewController

NSInteger const ScrollViewControllerNumberOfPages = 10;


@synthesize scrollView = _scrollView;
@synthesize pageControl = _pageControl;

#pragma mark View lifecycle
- (void)viewDidLoad
{
    [super viewDidLoad];
    
    // Set the size of the content to be displayed
    self.scrollView.contentSize = CGSizeMake(self.scrollView.bounds.size.width * ScrollViewControllerNumberOfPages, self.scrollView.bounds.size.height);
    
    // Turn on paging in the scroll view (can also be done in Interface Builder)
    self.scrollView.pagingEnabled = YES;
    
    // Loop around and create some subviews in the scroll view
    CGFloat pageWidth = self.scrollView.bounds.size.width;
    CGFloat pageHeight = self.scrollView.bounds.size.height;
    for (NSInteger i=0; i<ScrollViewControllerNumberOfPages; i++) {
        CGRect subViewFrame = CGRectMake(i * pageWidth, 0, pageWidth, pageHeight);
        UIView *subView = [[UIView alloc] initWithFrame:subViewFrame];
        
        // Pick a random colour for the view
        CGFloat randomRed = ((CGFloat)(arc4random() % 1000))/1000;
        CGFloat randomGreen = ((CGFloat)(arc4random() % 1000))/1000;
        CGFloat randomBlue = ((CGFloat)(arc4random() % 1000))/1000;
        subView.backgroundColor = [UIColor colorWithRed:randomRed green:randomGreen blue:randomBlue alpha:1];
        
        // Insert the view into the scroller
        [self.scrollView addSubview:subView];
    }
}

- (void)viewDidUnload
{
    self.scrollView = nil;
    self.pageControl = nil;
    [super viewDidUnload];
}

#pragma mark Scroll view delegate
- (void)scrollViewDidScroll:(UIScrollView *)scrollView
{
    CGFloat contentWidth = scrollView.bounds.size.width;
    CGFloat halfContentWidth = contentWidth / 2;
    NSInteger currentPage = (scrollView.contentOffset.x + halfContentWidth) / contentWidth;
    self.pageControl.currentPage = currentPage;
}


@end


