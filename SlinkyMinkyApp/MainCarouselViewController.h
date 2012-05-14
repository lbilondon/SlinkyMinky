//
//  MinkyScreenSwapViewController.h
//  SlinkyMinkyApp
//
//  Created by Kaushalya Kularatnam on 13/03/2012.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

 
@interface MinkyScreenSwapViewController: UIViewController
<UIScrollViewDelegate>

@property (nonatomic, retain) IBOutlet UIScrollView *scrollView;
@property (nonatomic, retain) IBOutlet UIPageControl *pageControl;

@end
