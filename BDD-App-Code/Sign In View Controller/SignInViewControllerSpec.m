#import "Specs.h"

#import "SignInViewController.h"
#import "UIView+Specs.h"
#import "UIControl+Specs.h"
#import "SignInService.h"

SPEC_BEGIN(SignInViewControllerSpec)

describe(@"SignInViewController", ^{
    __block SignInViewController *signInViewController;
    __block id mockSignInService;

    beforeEach(^{
        mockSignInService = mockProtocol(@protocol(SignInService));

        signInViewController = [[SignInViewController alloc] initWithSignInService:mockSignInService];
    });

    afterEach(^{
        signInViewController = nil;
    });

    describe(@"tapping the sign in button", ^{

        __block UIButton *signInButton;
        __block UITextField *loginTextField;
        __block UITextField *passwordTextField;

        beforeEach(^{
            signInButton = [[signInViewController view] specsFindButtonWithTitle:NSLocalizedString(@"Sign In", nil)];

            loginTextField = [[signInViewController view] specsFindTextFieldWithPlaceholder:NSLocalizedString(@"Login", nil)];
            passwordTextField = [[signInViewController view] specsFindTextFieldWithPlaceholder:NSLocalizedString(@"Password", nil)];

            loginTextField.text = @"Fixture Login";
            passwordTextField.text = @"Fixture Password";

            [signInButton specsSimulateTap];
        });

        it(@"should tell its sign in service to sign in with given login and password", ^{
            [verify(mockSignInService) signInWithLogin:@"Fixture Login" password:@"Fixture Password"];
        });
    });
});

SPEC_END
