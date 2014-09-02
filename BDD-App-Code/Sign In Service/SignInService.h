/*
 * Copyright (c) 2014 Mobile Academy. All rights reserved.
 */

#import <Foundation/Foundation.h>

@protocol SignInServiceDelegate;

@protocol SignInService <NSObject>
@property(nonatomic, weak) id <SignInServiceDelegate> delegate;

- (void)signInWithLogin:(NSString *)login password:(NSString *)password;

@end

@protocol SignInServiceDelegate <NSObject>

- (void)signInServiceDidLogin:(id<SignInService>)service;

@end
