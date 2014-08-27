/*
 * Copyright 2014 Taptera Inc. All rights reserved.
 */


#import <Foundation/Foundation.h>


@interface SignInViewController : UIViewController

@property(nonatomic, strong) IBOutlet UITextField *loginTextField;
@property(nonatomic, strong) IBOutlet UITextField *passwordTextField;

@property(nonatomic, strong) IBOutlet UIButton *signInButton;

@end
