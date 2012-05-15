/*
    Application Name : SlinkyMinkyApp
    Class : SettingsScreenViewController.h
    Author : Kaushalya Kularatnam
    Description : This class sets the skin tone colour. 
*/

#import <UIKit/UIKit.h>
#import "MainCarouselViewController.h"

@interface SettingsScreenViewController : UIViewController

@property (nonatomic,retain) IBOutlet UIButton *skinTone1Button;
@property (nonatomic,retain) IBOutlet UIButton *skinTone2Button;
@property (nonatomic,retain) IBOutlet UIButton *skinTone3Button;
@property (nonatomic,retain) IBOutlet UIButton *skinTone4Button;
@property (nonatomic,retain) IBOutlet UIButton *skinTone5Button;
@property (nonatomic,retain) IBOutlet UIButton *skinTone6Button;
@property (nonatomic,retain) IBOutlet UIButton *hairColorBlackButton;
@property (nonatomic,retain) IBOutlet UIButton *hairColorBlondeButton;
@property (nonatomic,retain) IBOutlet UIButton *hairColorBrownButton;
@property (nonatomic,retain) IBOutlet UIButton *hairColorBleachBlondeButton;
@property (nonatomic,retain) IBOutlet UIButton *hairColorGingerButton;
@property (nonatomic,retain) UIColor * skinTone;
@property (nonatomic,retain) IBOutlet UILabel *skin;
@property (nonatomic,retain) IBOutlet UILabel *hair;
@property (nonatomic,retain) IBOutlet UILabel *choseYourHue;

- (IBAction) skinTone1;
- (IBAction) skinTone2;
- (IBAction) skinTone3;
- (IBAction) skinTone4;
- (IBAction) skinTone5;
- (IBAction) skinTone6;
- (IBAction) hairColorBlack;
- (IBAction) hairColorBrown;
- (IBAction) hairColorBlonde;
- (IBAction) hairColorBleachBlonde;
- (IBAction) hairColorGinger;
- (IBAction) showMeTheMinkyButton;
- (UIImage *) returnSkinToneColor;
- (int) returnHairColorNumber;

@end
