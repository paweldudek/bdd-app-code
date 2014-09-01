/*
 * Copyright (c) 2014 Mobile Academy. All rights reserved.
 */

#import <Foundation/Foundation.h>

@protocol SignInService;

@interface SignInViewController : UIViewController

@property(nonatomic, readonly) id <SignInService> signInService;

- (instancetype)initWithSignInService:(id <SignInService>)signInService;


@end
