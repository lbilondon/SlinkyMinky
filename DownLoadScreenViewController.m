/*
    Application Name : SlinkyMinkyApp
    Class : DownLoadScreenViewController.m
    Author : Kaushalya Kularatnam
    Description : This class shows the DownloadScreen
*/

#import "DownLoadScreenViewController.h"

static int pageIndex;

@implementation DownLoadScreenViewController

@synthesize faceBookButton = _faceBookButton;
@synthesize twitterButton = _twitterButton;
@synthesize facebook = _faceBook;
@synthesize pageView = _pageView;
@synthesize docController = _docController;

- (void)viewDidLoad
{
    [super viewDidLoad]; 
}

- (void)viewWillAppear:(BOOL)animated
{
    NSLog(@"Pritnting from view will apear");
    MainCarouselViewController *mainCarouselViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"MainCarouselViewController"];
    pageIndex = [mainCarouselViewController returnCurrentPageIndex] + 1;
    
    NSLog(@"Printing Current page index from download the one with added one%i",pageIndex);
    switch(pageIndex)
    {
        case 1:
        {
            self.view.backgroundColor = [[UIColor alloc] initWithPatternImage:[UIImage imageNamed:@"CosmicCadetDownLoadPage.png"]]; 
            break;
        }
        case 2:
        {
            self.view.backgroundColor = [[UIColor alloc] initWithPatternImage:[UIImage imageNamed:@"DownDarlingDownLoadPage.png"]];   
            break;
        }
        case 3:
        {
            self.view.backgroundColor = [[UIColor alloc] initWithPatternImage:[UIImage imageNamed:@"FullSignalDownLoadPage.png"]]; 
            break;
        }
        case 4:
        {
            self.view.backgroundColor = [[UIColor alloc] initWithPatternImage:[UIImage imageNamed:@"LoveDownLoadPage.png"]]; 
            break;
        }
        case 5:
        {
            self.view.backgroundColor = [[UIColor alloc] initWithPatternImage:[UIImage imageNamed:@"MomentsDownLoadPage.png"]];
            break;
        }
        case 6:
        {
            self.view.backgroundColor = [[UIColor alloc] initWithPatternImage:[UIImage imageNamed:@"TheHPDownLoadPage.png"]]; 
            break;
        }
        case 7:
        {
            self.view.backgroundColor = [[UIColor alloc] initWithPatternImage:[UIImage imageNamed:@"ThePlankDownLoadPage.png"]]; 
            break;
        }
        case 8:
        {
            self.view.backgroundColor = [[UIColor alloc] initWithPatternImage:[UIImage imageNamed:@"TriHardDownLoadPage.png"]]; 
            break;
        }
    }
    

}

- (void)viewDidUnload
{
    [super viewDidUnload];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return ((interfaceOrientation == UIInterfaceOrientationLandscapeLeft) || (interfaceOrientation == UIInterfaceOrientationLandscapeRight));
}

- (IBAction)twitterIntegration
{
    TWTweetComposeViewController *twitter = [[TWTweetComposeViewController alloc] init];
    
    [twitter addImage:[UIImage imageNamed:@"image2.png"]];
    [twitter addURL:[NSURL URLWithString:[NSString stringWithString:@"http://slinkyminky.com/"]]];
    [twitter setInitialText:@"Slinky Minky Application Tweeting."];
    
    [self presentModalViewController:twitter animated:YES];
    
    // Called when the tweet dialog has been closed
    twitter.completionHandler = ^(TWTweetComposeViewControllerResult result) 
    {
        NSString *title = @"Tweet Status";
        NSString *msg; 
        
        if (result == TWTweetComposeViewControllerResultCancelled)
            msg = @"Tweet compostion was canceled.";
        else if (result == TWTweetComposeViewControllerResultDone)
            msg = @"Tweet composition completed.";
        
        // Show alert to see how things went...
        UIAlertView* alertView = [[UIAlertView alloc] initWithTitle:title message:msg delegate:self cancelButtonTitle:@"Okay" otherButtonTitles:nil];
        [alertView show];
        
        [self dismissModalViewControllerAnimated:YES];
    };
    
}

- (IBAction)downloadPDFButtonPressed:(id)sender
{
    NSString *downloadFileString;
    switch(pageIndex)
    {
        case 1:
        {
            downloadFileString = [[NSString alloc] initWithString:@"cosmic_cadet"];
            break;
        }
        case 2:
        {
            downloadFileString = [[NSString alloc] initWithString:@"down_darling"];   
            break;
        }
        case 3:
        {
            downloadFileString = [[NSString alloc] initWithString:@"full_signal"];
            break;
        }
        case 4:
        {
            downloadFileString = [[NSString alloc] initWithString:@"love"];
            break;
        }
        case 5:
        {
            downloadFileString = [[NSString alloc] initWithString:@"mo_mentz"];
            break;
        }
        case 6:
        {
            downloadFileString = [[NSString alloc] initWithString:@"the_hp"]; 
            break;
        }
        case 7:
        {
            downloadFileString = [[NSString alloc] initWithString:@"the_plank"]; 
            break;
        }
        case 8:
        {
            downloadFileString = [[NSString alloc] initWithString:@"tri_hard"]; 
            break;
        }
    }

    
    NSString *path = [[NSBundle mainBundle] pathForResource:downloadFileString ofType:@"pdf"];
    NSLog(@"%@ printing patj",path);
   
    NSURL *url = [NSURL fileURLWithPath:path];
    NSLog(@"%@ printing URL",url);
    self.docController = [UIDocumentInteractionController interactionControllerWithURL:url];
    //self.docController.delegate = self;
    [self.docController presentOpenInMenuFromRect:CGRectZero
                                           inView:self.view animated:YES];
}

- (IBAction)faceBookIntegration
{
    facebook = [[Facebook alloc] initWithAppId:@"319215911472589" andDelegate:self];
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    if ([defaults objectForKey:@"FBAccessTokenKey"] 
        && [defaults objectForKey:@"FBExpirationDateKey"]) {
        facebook.accessToken = [defaults objectForKey:@"FBAccessTokenKey"];
        facebook.expirationDate = [defaults objectForKey:@"FBExpirationDateKey"];
    }
    if (![facebook isSessionValid]) {
        [facebook authorize:nil];
    }
    NSMutableDictionary* params1 = [NSMutableDictionary dictionaryWithObjectsAndKeys:
                                   @"Let's be friends!",  @"message",
                                   facebook.accessToken, @"access_token",
                                   @"319215911472589&", @"app_id",
                                   nil];
    
    [facebook dialog:@"apprequests"
      andParams:params1
    andDelegate:self];
    
    /*NSMutableDictionary* params = [NSMutableDictionary dictionaryWithObjectsAndKeys:
                                   @"319215911472589&", @"app_id",
                                   @"http://developers.facebook.com/docs/reference/dialogs/", @"link",
                                   @"Default.png", @"picture",
                                   @"Slinky M", @"name",
                                   @"Monkey", @"caption",
                                   @"Test :D.", @"description",
                                   nil];
    //[facebook dialog:<#(NSString *)#> andDelegate:<#(id<FBDialogDelegate>)#>];
    [facebook dialog:@"feed" andParams:params andDelegate:self];*/
    // Add the logout button
    UIButton *logoutButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    logoutButton.frame = CGRectMake(40, 40, 200, 40);
    [logoutButton setTitle:@"Log Out" forState:UIControlStateNormal];
    [logoutButton addTarget:self action:@selector(logoutButtonClicked)
           forControlEvents:UIControlEventTouchUpInside];
    //[self.view addSubview:logoutButton];
    
    NSArray *permissions = [[NSArray alloc] initWithObjects:
                            @"user_likes", 
                            @"read_stream",
                            nil];
    [facebook authorize:permissions];
    
    if (![facebook isSessionValid]) {
        NSArray *permissions = [[NSArray alloc] initWithObjects:
                                @"user_likes", 
                                @"read_stream",
                                nil];
        [facebook authorize:permissions];
    }
}

// Method that gets called when the logout button is pressed
- (void) logoutButtonClicked:(id)sender {
    [facebook logout];
}

- (BOOL)application:(UIApplication *)application openURL:(NSURL *)url
  sourceApplication:(NSString *)sourceApplication annotation:(id)annotation {
    return [facebook handleOpenURL:url]; 
}

- (void) fbDidLogout {
    // Remove saved authorization information if it exists
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    if ([defaults objectForKey:@"FBAccessTokenKey"]) {
        [defaults removeObjectForKey:@"FBAccessTokenKey"];
        [defaults removeObjectForKey:@"FBExpirationDateKey"];
        [defaults synchronize];
    }
}
- (void)fbDidLogin {
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    [defaults setObject:[facebook accessToken] forKey:@"FBAccessTokenKey"];
    [defaults setObject:[facebook expirationDate] forKey:@"FBExpirationDateKey"];
    [defaults synchronize];
    
}

- (void)fbDidNotLogin:(BOOL)cancelled
{}

- (void)fbDidExtendToken:(NSString*)accessToken
               expiresAt:(NSDate*)expiresAt
{}
- (void)fbSessionInvalidated
{}

- (void)closeButton
{
    [self dismissModalViewControllerAnimated:YES];
}

@end
