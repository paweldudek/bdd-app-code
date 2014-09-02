#import "Specs.h"

#import "SignInViewController.h"
#import "UIView+Specs.h"
#import "UIControl+Specs.h"
#import "SignInService.h"
#import "FakeSignInService.h"
#import "UIAlertView+Specs.h"

SPEC_BEGIN(SignInViewControllerSpec)

describe(@"SignInViewController", ^{
    __block SignInViewController *signInViewController;
    __block FakeSignInService *fakeSignInService;

    beforeEach(^{
        fakeSignInService = [FakeSignInService new];

        signInViewController = [[SignInViewController alloc] initWithSignInService:fakeSignInService];
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
            expect(fakeSignInService.capturedLogin).to.equal(@"Fixture Login");
            expect(fakeSignInService.capturedPassword).to.equal(@"Fixture Password");
        });

        describe(@"sign in succeeds", ^{
            beforeEach(^{
                [fakeSignInService specSimulateSuccess];
            });

            it(@"should show an alert view with success message", ^{
                UIAlertView *const alertView = [UIAlertView specsLastPresentedAlertView];
                expect(alertView.title).to.equal(@"Sign in");
                expect(alertView.message).to.equal(@"Did sign in with success!");
            });

//            it(@"async", ^AsyncBlock{
//                //assertions here
//            });
        });
    });
});

SPEC_END
