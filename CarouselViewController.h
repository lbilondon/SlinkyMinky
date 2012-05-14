/*
    Application Name : SlinkyMinkyApp
    Class : CarouselViewController.h
    Author : Kaushalya Kularatnam
    Description : This class populates data onto views when called from the MainCarouselView. 
*/

#import <UIKit/UIKit.h>
#import "MinkyDictionary.h"

@interface CarouselViewController : UIViewController

@property (nonatomic,retain) IBOutlet UIImageView * minkyTitleLabel;
@property (nonatomic,retain) IBOutlet UIImageView * minkyShapeImage;
@property (nonatomic,retain) NSArray * minkyList;
@property (nonatomic, assign) int pageIndex;
@property (nonatomic, assign) UIImage * skinTone;
@property (nonatomic,assign) int hairColor;

- (void)getMinkyList:(int)pageNumber;
- (void)setMyPageIndex:(int)pageIndex;
- (void)setMySkinTone:(UIImage *)skinTone;

@end
