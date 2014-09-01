/*
 * Copyright (c) 2014 Mobile Academy. All rights reserved.
 */

#import "AppDelegate.h"
#import "SignInViewController.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];

    self.window.rootViewController = [[SignInViewController alloc] init];

    return YES;
}

@end
