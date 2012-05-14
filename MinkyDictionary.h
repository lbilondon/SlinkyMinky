/*
    Application Name : SlinkyMinkyApp
    Class : MinkyDictionary.h
    Author : Kaushalya Kularatnam
    Description : This class has a method to initialise with dictionary
*/

#import <Foundation/Foundation.h>

@interface MinkyDictionary : NSObject {}

@property (nonatomic, retain) NSString *MinkyName;
@property (nonatomic, retain) NSString *MinkyImage;
@property (nonatomic, retain) NSString *MinkyID; 

-(id)initWithDictionary:(NSDictionary*) dictionary;

@end
