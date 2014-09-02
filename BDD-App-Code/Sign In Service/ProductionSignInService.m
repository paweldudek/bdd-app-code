//
// Copyright (c) 2014 Mobile Academy. All rights reserved.
//

#import "ProductionSignInService.h"


@implementation ProductionSignInService
@synthesize delegate;

- (void)signInWithLogin:(NSString *)login password:(NSString *)password {
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(1 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        [self.delegate signInServiceDidLogin:self];
    });
}

@end
