#import "iWebViewController.h"


@implementation iWebViewController

-(id) init {
	self = [super init];
	if (self != nil){
		webView = [[UIWebView alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
		webView.scalesPageToFit = YES;
		[self.view addSubview:webView];
		NSURL *url = [NSURL fileURLWithPath:[ [ NSBundle mainBundle ] pathForResource: @"index" ofType:@"html" ]];
		NSURLRequest *request = [NSURLRequest requestWithURL:url];
		[webView loadRequest:request];
	}
	return self;
}


// Implement loadView to create a view hierarchy programmatically, without using a nib.
//- (void)loadView {
//	
//}

// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning]; // Releases the view if it doesn't have a superview
    // Release anything that's not essential, such as cached data
}


- (void)dealloc {
	[webView release];
    [super dealloc];
}


@end
