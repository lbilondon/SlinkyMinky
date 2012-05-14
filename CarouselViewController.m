/*
    Application Name : SlinkyMinkyApp
    Class : CarouselViewController.m
    Author : Kaushalya Kularatnam
    Description : This class populates data onto views when called from the MainCarouselView. 
*/

#import "CarouselViewController.h"

@implementation CarouselViewController

@synthesize minkyShapeImage = _minkyShapeImage;
@synthesize minkyTitleLabel = _minkyTitleLabel;
@synthesize minkyList = _minkyList;
@synthesize pageIndex = _pageIndex;
@synthesize skinTone = _skinTone;
@synthesize hairColor = _hairColor;

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self getMinkyList:self.pageIndex];
}

- (void)viewDidUnload
{
    [super viewDidUnload];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return ((interfaceOrientation == UIInterfaceOrientationLandscapeLeft) || (interfaceOrientation == UIInterfaceOrientationLandscapeRight));
}

/* This method takes in a plist file and then arranges its components based on the ID of the item */
- (void)getMinkyList:(int)pageNumber
{
    
    NSString *plistPath = [[NSBundle mainBundle] pathForResource:@"SlinkyMinkyDataSource" ofType:@"plist"];
    if ([[NSFileManager defaultManager] fileExistsAtPath:plistPath]) 
    {
        NSDictionary *dictionary = [[NSDictionary alloc] initWithContentsOfFile:plistPath];
        NSArray *minkyResults = [dictionary valueForKey:@"SlinkyMinkyData"];
        NSMutableArray *minky = [NSMutableArray array];
        
        for (NSDictionary *minkyResult in minkyResults) 
        {
            MinkyDictionary *minkyDictionary = [[MinkyDictionary alloc] initWithDictionary:minkyResult];
            
            NSString *imageString = [[NSString alloc ] init];
            imageString = minkyDictionary.MinkyImage;
            
            NSString *titleLableString = [[NSString alloc ] init];
            titleLableString = minkyDictionary.MinkyName;
            
            NSNumberFormatter * formatNumber = [[NSNumberFormatter alloc] init];
            [formatNumber setNumberStyle:NSNumberFormatterDecimalStyle];
           
            NSString *myMinkyID = minkyDictionary.MinkyID;
            int minkyID = [myMinkyID intValue];
            
            // This ensures the right images and names for images are displayed for the right page
            if ((self.hairColor == 1 && self.pageIndex+1 == minkyID) || (self.hairColor == 2 && (self.pageIndex+9) == minkyID) || (self.hairColor == 3 && (self.pageIndex+17) == minkyID) || (self.hairColor == 4 && self.pageIndex+25 == minkyID) || (self.hairColor == 5 && self.pageIndex+33 == minkyID) )
            {
                
                self.minkyTitleLabel.image = [UIImage imageNamed:[NSString stringWithFormat:@"%@",titleLableString]];
                self.minkyShapeImage.image = [UIImage imageNamed:[NSString stringWithFormat:@"%@",imageString]];
            }
            self.view.backgroundColor = [[UIColor alloc] initWithPatternImage:self.skinTone];
            [minky addObject:minkyDictionary];
        }
        
        NSSortDescriptor *sortDescriptor = [[NSSortDescriptor alloc] initWithKey:@"MinkyID" ascending:YES];
        NSArray *sortedArray = [minky sortedArrayUsingDescriptors:[NSArray arrayWithObject:sortDescriptor]];
        self.minkyList = sortedArray;
    }
}

- (void)setMyPageIndex:(int)pageIndex
{
    self.pageIndex = pageIndex;
}

- (void)setMySkinTone:(UIImage *)skinTone
{
    self.skinTone = skinTone;
}

- (void)setMyHairColorNumber:(int)hairColor
{
    self.hairColor = hairColor;
}

@end
