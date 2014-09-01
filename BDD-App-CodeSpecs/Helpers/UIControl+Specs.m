/*
 * Copyright (c) 2014 Mobile Academy. All rights reserved.
 */
#import "UIControl+Specs.h"


@implementation UIControl (Specs)
- (void)specsSimulateTap {
    [self sendActionsForControlEvents:UIControlEventTouchUpInside];
}
@end
