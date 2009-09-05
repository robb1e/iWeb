#import "iWebAppDelegate.h"
#import "iWebViewController.h"

@implementation iWebAppDelegate

@synthesize window;
@synthesize viewController;

- (void)applicationDidFinishLaunching:(UIApplication *)application {    
	CGRect screenBounds = [[UIScreen mainScreen] bounds];
	self.window = [[[UIWindow alloc] initWithFrame:screenBounds] autorelease];
	viewController = [[iWebViewController alloc] init];
	[window addSubview:viewController.view];
    [window makeKeyAndVisible];
}


- (void)dealloc {
	[viewController release];
    [window release];
    [super dealloc];
}


@end
