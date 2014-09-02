//
// Copyright (c) 2014 Mobile Academy. All rights reserved.
//

#import "FakeSignInService.h"


@implementation FakeSignInService
@synthesize delegate;

- (void)signInWithLogin:(NSString *)login password:(NSString *)password {
    self.capturedLogin = login;
    self.capturedPassword = password;
}

#pragma mark -

- (void)specSimulateSuccess {
    [self.delegate signInServiceDidLogin:self];
}

@end
