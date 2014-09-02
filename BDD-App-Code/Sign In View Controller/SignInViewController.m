/*
 * Copyright (c) 2014 Mobile Academy. All rights reserved.
 */

#import "SignInViewController.h"
#import "SignInService.h"

@interface SignInViewController () <SignInServiceDelegate>

@property(nonatomic, strong) IBOutlet UIButton *signInButton;

@property(nonatomic, strong) IBOutlet UITextField *passwordTextField;

@property(nonatomic, strong) IBOutlet UITextField *loginTextField;

- (IBAction)didTapSignInButton:(UIButton *)signInButton;

@end

@implementation SignInViewController

- (instancetype)initWithSignInService:(id <SignInService>)signInService {
    self = [super init];
    if (self) {
        _signInService = signInService;
        _signInService.delegate = self;
    }

    return self;
}

#pragma mark -

- (IBAction)didTapSignInButton:(UIButton *)signInButton {
    [[self signInService] signInWithLogin:self.loginTextField.text password:self.passwordTextField.text];
}

#pragma mark - SignInServiceDelegate

- (void)signInServiceDidLogin:(id <SignInService>)service {
    UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"Sign in" message:@"Did sign in with success!"
                                                       delegate:nil
                                              cancelButtonTitle:@"OK"
                                              otherButtonTitles:nil];
    [alertView show];
}

@end
