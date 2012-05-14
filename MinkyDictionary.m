/*
    Application Name : SlinkyMinkyApp
    Class : MinkyDictionary.h
    Author : Kaushalya Kularatnam
    Description : This class has a method to initialise with dictionary
*/

#import "MinkyDictionary.h"

@implementation MinkyDictionary

@synthesize MinkyName = _MinkyName;
@synthesize MinkyImage = _MinkyImage;
@synthesize MinkyID = _MinkyID;

-(id)initWithDictionary:(NSDictionary*) dictionary 
{
    self = [super init];
    if (self) 
    {
        self.MinkyID = [dictionary valueForKey:@"MinkyID"];
        self.MinkyName = [dictionary valueForKey:@"MinkyName"];
        self.MinkyImage = [dictionary valueForKey:@"MinkyImage"];
    }
    
    return self;
}


@end
