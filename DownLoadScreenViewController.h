/*
    Application Name : SlinkyMinkyApp
    Class : DownLoadScreenViewController.h
    Author : Kaushalya Kularatnam
    Description : This class shows the DownloadScreen
*/

#import <UIKit/UIKit.h>
#import <Twitter/Twitter.h>
#import "MainCarouselViewController.h"
#import <QuartzCore/QuartzCore.h>
#import "FBConnect.h"
#import "WebViewForPDF.h"


@interface DownLoadScreenViewController : UIViewController < FBSessionDelegate, FBDialogDelegate >
{
    Facebook *facebook;
}

@property (nonatomic, retain) IBOutlet UIButton *faceBookButton;
@property (nonatomic, retain) IBOutlet UIButton *twitterButton;
@property (nonatomic, retain) IBOutlet UIView *pageView;
@property (nonatomic, retain) Facebook *facebook;
@property (nonatomic, strong) UIDocumentInteractionController *docController;

- (IBAction)faceBookIntegration;
- (IBAction)twitterIntegration;
- (IBAction)downloadPDFButtonPressed:(id)sender;
-(IBAction)closeButton;

@end
