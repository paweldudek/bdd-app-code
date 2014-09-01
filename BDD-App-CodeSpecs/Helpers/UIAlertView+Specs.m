//
// Copyright (c) 2014 Mobile Academy. All rights reserved.
//

#import "UIAlertView+Specs.h"


static UIAlertView *specLastPresentedAlertView = nil;

@implementation UIAlertView (Specs)

+ (UIAlertView *)specLastPresentedAlertView {
    return specLastPresentedAlertView;
}

- (void)show {
    specLastPresentedAlertView = self;
}

@end
