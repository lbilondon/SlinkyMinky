/*
    Application Name : SlinkyMinkyApp
    Class : SettingsScreenViewController.m
    Author : Kaushalya Kularatnam
    Description : This class sets the skin tone colour 
*/

#import "SettingsScreenViewController.h"

static UIImage *mySkinToneColor;
static int myHairColorNumber;

@interface SettingsScreenViewController ()

@end

@implementation SettingsScreenViewController

@synthesize skinTone1Button =_skinTone1Button;
@synthesize skinTone2Button = _skinTone2Button;
@synthesize skinTone3Button = _skinTone3Button;
@synthesize skinTone4Button = _skinTone4Button;
@synthesize skinTone5Button = _skinTone5Button;
@synthesize skinTone6Button = _skinTone6Button;
@synthesize hairColorBlackButton = _hairColorBlackButton;
@synthesize hairColorBleachBlondeButton = _hairColorBleachBlondeButton;
@synthesize hairColorBlondeButton = _hairColorBlondeButton;
@synthesize hairColorBrownButton = _hairColorBrownButton;
@synthesize hairColorGingerButton = _hairColorGingerButton;

@synthesize skinTone = _skinTone;
@synthesize skin = _skin;
@synthesize hair=_hair;
@synthesize choseYourHue = _choseYourHue;

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.skinTone1Button.backgroundColor = [[UIColor alloc] initWithPatternImage:[UIImage imageNamed:@"1.png"]];
    self.skinTone2Button.backgroundColor = [[UIColor alloc] initWithPatternImage:[UIImage imageNamed:@"2.png"]];
    self.skinTone3Button.backgroundColor = [[UIColor alloc] initWithPatternImage:[UIImage imageNamed:@"3.png"]];
    self.skinTone4Button.backgroundColor = [[UIColor alloc] initWithPatternImage:[UIImage imageNamed:@"4.png"]];
    self.skinTone5Button.backgroundColor = [[UIColor alloc] initWithPatternImage:[UIImage imageNamed:@"5.png"]];
    self.skinTone6Button.backgroundColor = [[UIColor alloc] initWithPatternImage:[UIImage imageNamed:@"6.png"]];
    
    self.hairColorGingerButton.backgroundColor = [[UIColor alloc] initWithPatternImage:[UIImage imageNamed:@"ginger.png"]];
    self.hairColorBlackButton.backgroundColor = [[UIColor alloc] initWithPatternImage:[UIImage imageNamed:@"black.png"]];
    self.hairColorBleachBlondeButton.backgroundColor = [[UIColor alloc] initWithPatternImage:[UIImage imageNamed:@"bleachblonde.png"]];
    self.hairColorBlondeButton.backgroundColor = [[UIColor alloc] initWithPatternImage:[UIImage imageNamed:@"blonde.png"]];
    self.hairColorBrownButton.backgroundColor = [[UIColor alloc] initWithPatternImage:[UIImage imageNamed:@"brown.png"]];
    //[self.skin setFont:[UIFont fontWithName:@"King Cool KC" size:35]];
    //self.skin.text = @"SKIN";
    self.skin.backgroundColor = [[UIColor alloc] initWithPatternImage:[UIImage imageNamed:@"ChoseYourHuesTextSkin.png"]];
    self.hair.backgroundColor = [[UIColor alloc] initWithPatternImage:[UIImage imageNamed:@"ChoseYourHuesTextHair.png"]];
    self.choseYourHue.backgroundColor = [[UIColor alloc] initWithPatternImage:[UIImage imageNamed:@"ChoseYourHuesText.png"]];
    self.view.backgroundColor = [[UIColor alloc] initWithPatternImage:[UIImage imageNamed:@"SkinTone1.png"]];
    //[self.hairColorBlackButton imageForState:UIControlStateNormal];
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return ((interfaceOrientation == UIInterfaceOrientationLandscapeLeft) || (interfaceOrientation == UIInterfaceOrientationLandscapeRight));
}

- (IBAction)skinTone1
{
    UIImage *backGroundImage = [UIImage imageNamed:@"SkinTone1.png"];
    self.view.backgroundColor = [[UIColor alloc] initWithPatternImage:[UIImage imageNamed:@"SkinTone1.png"]];
    
    [self.skinTone1Button setSelected:YES];
    [self.skinTone1Button setImage:[UIImage imageNamed:@"ChosenSkinColor.png"] forState:UIControlStateSelected];  
    
    [self.skinTone2Button setSelected:NO];
    [self.skinTone2Button setImage:[UIImage imageNamed:@"2.png"] forState:UIControlStateNormal];  
    
    [self.skinTone3Button setSelected:NO];
    [self.skinTone3Button setImage:[UIImage imageNamed:@"3.png"] forState:UIControlStateNormal];  
    
    [self.skinTone4Button setSelected:NO];
    [self.skinTone4Button setImage:[UIImage imageNamed:@"4.png"] forState:UIControlStateNormal];  
    
    [self.skinTone5Button setSelected:NO];
    [self.skinTone5Button setImage:[UIImage imageNamed:@"5.png"] forState:UIControlStateNormal]; 
    
    [self.skinTone6Button setSelected:NO];
    [self.skinTone6Button setImage:[UIImage imageNamed:@"6.png"] forState:UIControlStateNormal]; 
    mySkinToneColor = backGroundImage;
}
- (IBAction)skinTone2
{
    UIImage *backGroundImage = [UIImage imageNamed:@"SkinTone2"];
    self.view.backgroundColor = [[UIColor alloc] initWithPatternImage:[UIImage imageNamed:@"SkinTone2.png"]];
    [self.skinTone2Button setSelected:YES];
    [self.skinTone2Button setImage:[UIImage imageNamed:@"ChosenSkinColor.png"] forState:UIControlStateSelected];  
    
    [self.skinTone1Button setSelected:NO];
    [self.skinTone1Button setImage:[UIImage imageNamed:@"1.png"] forState:UIControlStateNormal];  
    
    [self.skinTone3Button setSelected:NO];
    [self.skinTone3Button setImage:[UIImage imageNamed:@"3.png"] forState:UIControlStateNormal];  
    
    [self.skinTone4Button setSelected:NO];
    [self.skinTone4Button setImage:[UIImage imageNamed:@"4.png"] forState:UIControlStateNormal];  
    
    [self.skinTone5Button setSelected:NO];
    [self.skinTone5Button setImage:[UIImage imageNamed:@"5.png"] forState:UIControlStateNormal]; 
    
    [self.skinTone6Button setSelected:NO];
    [self.skinTone6Button setImage:[UIImage imageNamed:@"6.png"] forState:UIControlStateNormal]; 
    mySkinToneColor = backGroundImage;
}
- (IBAction)skinTone3
{
    UIImage *backGroundImage = [UIImage imageNamed:@"SkinTone3"];
    self.view.backgroundColor = [[UIColor alloc] initWithPatternImage:[UIImage imageNamed:@"SkinTone3.png"]];
    [self.skinTone3Button setSelected:YES];
    [self.skinTone3Button setImage:[UIImage imageNamed:@"ChosenSkinColor.png"] forState:UIControlStateSelected];  
    
    [self.skinTone2Button setSelected:NO];
    [self.skinTone2Button setImage:[UIImage imageNamed:@"2.png"] forState:UIControlStateNormal];  
    
    [self.skinTone1Button setSelected:NO];
    [self.skinTone1Button setImage:[UIImage imageNamed:@"1.png"] forState:UIControlStateNormal];  
    
    [self.skinTone4Button setSelected:NO];
    [self.skinTone4Button setImage:[UIImage imageNamed:@"4.png"] forState:UIControlStateNormal];  
    
    [self.skinTone5Button setSelected:NO];
    [self.skinTone5Button setImage:[UIImage imageNamed:@"5.png"] forState:UIControlStateNormal]; 
    
    [self.skinTone6Button setSelected:NO];
    [self.skinTone6Button setImage:[UIImage imageNamed:@"6.png"] forState:UIControlStateNormal]; 
    mySkinToneColor = backGroundImage;
    
}
- (IBAction)skinTone4
{
    UIImage *backGroundImage = [UIImage imageNamed:@"SkinTone4"];
    self.view.backgroundColor = [[UIColor alloc] initWithPatternImage:[UIImage imageNamed:@"SkinTone4.png"]];
    [self.skinTone4Button setSelected:YES];
    [self.skinTone4Button setImage:[UIImage imageNamed:@"ChosenSkinColor.png"] forState:UIControlStateSelected];  
    
    [self.skinTone2Button setSelected:NO];
    [self.skinTone2Button setImage:[UIImage imageNamed:@"2.png"] forState:UIControlStateNormal];  
    
    [self.skinTone3Button setSelected:NO];
    [self.skinTone3Button setImage:[UIImage imageNamed:@"3.png"] forState:UIControlStateNormal];  
    
    [self.skinTone1Button setSelected:NO];
    [self.skinTone1Button setImage:[UIImage imageNamed:@"1.png"] forState:UIControlStateNormal];  
    
    [self.skinTone5Button setSelected:NO];
    [self.skinTone5Button setImage:[UIImage imageNamed:@"5.png"] forState:UIControlStateNormal]; 
    
    [self.skinTone6Button setSelected:NO];
    [self.skinTone6Button setImage:[UIImage imageNamed:@"6.png"] forState:UIControlStateNormal]; 
    mySkinToneColor = backGroundImage;
}
- (IBAction)skinTone5
{
    UIImage *backGroundImage = [UIImage imageNamed:@"SkinTone5"];
    self.view.backgroundColor = [[UIColor alloc] initWithPatternImage:[UIImage imageNamed:@"SkinTone5.png"]];
    [self.skinTone5Button setSelected:YES];
    [self.skinTone5Button setImage:[UIImage imageNamed:@"ChosenSkinColor.png"] forState:UIControlStateSelected];  
    
    [self.skinTone2Button setSelected:NO];
    [self.skinTone2Button setImage:[UIImage imageNamed:@"2.png"] forState:UIControlStateNormal];  
    
    [self.skinTone3Button setSelected:NO];
    [self.skinTone3Button setImage:[UIImage imageNamed:@"3.png"] forState:UIControlStateNormal];  
    
    [self.skinTone4Button setSelected:NO];
    [self.skinTone4Button setImage:[UIImage imageNamed:@"4.png"] forState:UIControlStateNormal];  
    
    [self.skinTone1Button setSelected:NO];
    [self.skinTone1Button setImage:[UIImage imageNamed:@"1.png"] forState:UIControlStateNormal]; 
    
    [self.skinTone6Button setSelected:NO];
    [self.skinTone6Button setImage:[UIImage imageNamed:@"6.png"] forState:UIControlStateNormal]; 
    mySkinToneColor = backGroundImage;
}
- (IBAction)skinTone6
{
    UIImage *backGroundImage = [UIImage imageNamed:@"SkinTone6"];
    self.view.backgroundColor = [[UIColor alloc] initWithPatternImage:[UIImage imageNamed:@"SkinTone6.png"]];
    [self.skinTone6Button setSelected:YES];
    [self.skinTone6Button setImage:[UIImage imageNamed:@"ChosenSkinColor.png"] forState:UIControlStateSelected];  
    
    [self.skinTone2Button setSelected:NO];
    [self.skinTone2Button setImage:[UIImage imageNamed:@"2.png"] forState:UIControlStateNormal];  
    
    [self.skinTone3Button setSelected:NO];
    [self.skinTone3Button setImage:[UIImage imageNamed:@"3.png"] forState:UIControlStateNormal];  
    
    [self.skinTone4Button setSelected:NO];
    [self.skinTone4Button setImage:[UIImage imageNamed:@"4.png"] forState:UIControlStateNormal];  
    
    [self.skinTone5Button setSelected:NO];
    [self.skinTone5Button setImage:[UIImage imageNamed:@"5.png"] forState:UIControlStateNormal]; 
    
    [self.skinTone1Button setSelected:NO];
    [self.skinTone1Button setImage:[UIImage imageNamed:@"1.png"] forState:UIControlStateNormal]; 
    mySkinToneColor = backGroundImage;
    
}

- (IBAction) hairColorBlack
{
    myHairColorNumber = 1;
    [self.hairColorBrownButton setSelected:NO];
    [self.hairColorBrownButton setImage:[UIImage imageNamed:@"brown.png"] forState:UIControlStateNormal];  
    
    [self.hairColorGingerButton setSelected:NO];
    [self.hairColorGingerButton setImage:[UIImage imageNamed:@"ginger.png"] forState:UIControlStateNormal];  
    
    [self.hairColorBleachBlondeButton setSelected:NO];
    [self.hairColorBleachBlondeButton setImage:[UIImage imageNamed:@"bleachblonde.png"] forState:UIControlStateNormal];  
    
    [self.hairColorBlondeButton setSelected:NO];
    [self.hairColorBlondeButton setImage:[UIImage imageNamed:@"blonde.png"] forState:UIControlStateNormal];  
    
    [self.hairColorBlackButton setSelected:YES];
    [self.hairColorBlackButton setImage:[UIImage imageNamed:@"ChosenHairColor.png"] forState:UIControlStateSelected]; 
}

- (IBAction) hairColorBrown
{
    myHairColorNumber = 4;
    
    [self.hairColorBrownButton setSelected:YES];
    [self.hairColorBrownButton setImage:[UIImage imageNamed:@"ChosenHairColor.png"] forState:UIControlStateSelected];  
    
    [self.hairColorGingerButton setSelected:NO];
    [self.hairColorGingerButton setImage:[UIImage imageNamed:@"ginger.png"] forState:UIControlStateNormal];  
    
    [self.hairColorBleachBlondeButton setSelected:NO];
    [self.hairColorBleachBlondeButton setImage:[UIImage imageNamed:@"bleachblonde.png"] forState:UIControlStateNormal];  
    
    [self.hairColorBlondeButton setSelected:NO];
    [self.hairColorBlondeButton setImage:[UIImage imageNamed:@"blonde.png"] forState:UIControlStateNormal];  
    
    [self.hairColorBlackButton setSelected:NO];
    [self.hairColorBlackButton setImage:[UIImage imageNamed:@"black.png"] forState:UIControlStateNormal];   
}

- (IBAction) hairColorBlonde
{
    myHairColorNumber = 3;
    [self.hairColorBrownButton setSelected:NO];
    [self.hairColorBrownButton setImage:[UIImage imageNamed:@"brown.png"] forState:UIControlStateNormal];  
    
    [self.hairColorGingerButton setSelected:NO];
    [self.hairColorGingerButton setImage:[UIImage imageNamed:@"ginger.png"] forState:UIControlStateNormal];  
    
    [self.hairColorBleachBlondeButton setSelected:NO];
    [self.hairColorBleachBlondeButton setImage:[UIImage imageNamed:@"bleachblonde.png"] forState:UIControlStateNormal];  
    
    [self.hairColorBlondeButton setSelected:YES];
    [self.hairColorBlondeButton setImage:[UIImage imageNamed:@"ChosenHairColor.png"] forState:UIControlStateSelected];  
    
    [self.hairColorBlackButton setSelected:NO];
    [self.hairColorBlackButton setImage:[UIImage imageNamed:@"black.png"] forState:UIControlStateNormal]; 
}

- (IBAction) hairColorBleachBlonde
{
    myHairColorNumber = 2;
    [self.hairColorBrownButton setSelected:NO];
    [self.hairColorBrownButton setImage:[UIImage imageNamed:@"brown.png"] forState:UIControlStateNormal];  
    
    [self.hairColorGingerButton setSelected:NO];
    [self.hairColorGingerButton setImage:[UIImage imageNamed:@"ginger.png"] forState:UIControlStateNormal];  
    
    [self.hairColorBleachBlondeButton setSelected:YES];
    [self.hairColorBleachBlondeButton setImage:[UIImage imageNamed:@"ChosenHairColor.png"] forState:UIControlStateSelected];  
    
    [self.hairColorBlondeButton setSelected:NO];
    [self.hairColorBlondeButton setImage:[UIImage imageNamed:@"blonde.png"] forState:UIControlStateNormal];  
    
    [self.hairColorBlackButton setSelected:NO];
    [self.hairColorBlackButton setImage:[UIImage imageNamed:@"black.png"] forState:UIControlStateNormal]; 

}
- (IBAction) hairColorGinger;
{
    myHairColorNumber = 5;
    [self.hairColorBrownButton setSelected:NO];
    [self.hairColorBrownButton setImage:[UIImage imageNamed:@"brown.png"] forState:UIControlStateNormal];  
    
    [self.hairColorGingerButton setSelected:YES];
    [self.hairColorGingerButton setImage:[UIImage imageNamed:@"ChosenHairColor.png"] forState:UIControlStateSelected];  
    
    [self.hairColorBleachBlondeButton setSelected:NO];
    [self.hairColorBleachBlondeButton setImage:[UIImage imageNamed:@"bleachblonde.png"] forState:UIControlStateNormal];  
    
    [self.hairColorBlondeButton setSelected:NO];
    [self.hairColorBlondeButton setImage:[UIImage imageNamed:@"blonde.png"] forState:UIControlStateNormal];  
    
    [self.hairColorBlackButton setSelected:NO];
    [self.hairColorBlackButton setImage:[UIImage imageNamed:@"black.png"] forState:UIControlStateNormal]; 
}

- (UIImage *) returnSkinToneColor
{
    return mySkinToneColor;
}

- (int) returnHairColorNumber
{
    return myHairColorNumber;
}
                                
- (UIImage *)imageForState:(UIControlState)state
{
    UIImage *chosenSkinColor = [UIImage imageNamed:@"ChosenSkinColor.png"];    
    return chosenSkinColor;
}
- (IBAction)showMeTheMinkyButton
{
    if (!(mySkinToneColor || myHairColorNumber))
    {
        UIAlertView * alertView = [[UIAlertView alloc] initWithTitle:@"Enter" message:@"Please enter skin tone and hair colour" delegate:self cancelButtonTitle:@"Okay" otherButtonTitles:nil];
        [alertView show];
    }
    else {
        MainCarouselViewController *carousal = [self.storyboard instantiateViewControllerWithIdentifier:@"MainCarouselViewController"];
        [self presentModalViewController:carousal animated:YES];
    }
}
@end
