#import <UIKit/UIKit.h>

@class iWebViewController;

@interface iWebAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
	iWebViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet iWebViewController *viewController;

@end

