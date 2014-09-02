//
// Copyright (c) 2014 Mobile Academy. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SignInService.h"


@interface FakeSignInService : NSObject<SignInService>

@property(nonatomic, copy) NSString *capturedLogin;
@property(nonatomic, copy) NSString *capturedPassword;

- (void)specSimulateSuccess;
@end
