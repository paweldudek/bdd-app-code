#import "Specs.h"

#import "AppDelegate.h"
#import "SignInViewController.h"
#import "ProductionSignInService.h"

SPEC_BEGIN(AppDelegateSpec)

describe(@"AppDelegate", ^{
    __block AppDelegate *appDelegate;

    beforeEach(^{
        appDelegate = [[AppDelegate alloc] init];
    });

    afterEach(^{
        appDelegate = nil;
    });

    describe(@"application", ^{
        describe(@"did finish launching with options", ^{
            beforeEach(^{
                [appDelegate application:nil didFinishLaunchingWithOptions:nil];
            });

            it(@"should have a sign in view controller as root view controller", ^{
                expect(appDelegate.window.rootViewController).to.beKindOf([SignInViewController class]);
            });

            it(@"should have sign in service setup", ^{
                SignInViewController *signInViewController = (SignInViewController *) appDelegate.window.rootViewController;
                expect(signInViewController.signInService).to.beKindOf([ProductionSignInService class]);
            });
        });
    });
});

SPEC_END
