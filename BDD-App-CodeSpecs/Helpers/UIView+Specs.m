/*
 * Copyright (c) 2014 Mobile Academy. All rights reserved.
 */
#import "UIView+Specs.h"


@implementation UIView (Specs)
- (UIButton *)specsFindButtonWithTitle:(NSString *)title {
    NSPredicate *predicate = [NSPredicate predicateWithBlock:^BOOL(UIView *evaluatedView, NSDictionary *bindings) {
        UIButton *button = nil;
        if ([evaluatedView isKindOfClass:[UIButton class]]) {
            button = (UIButton *) evaluatedView;
        }

        return [button.currentTitle isEqualToString:title];
    }];

    return [[[self subviews] filteredArrayUsingPredicate:predicate] firstObject];
}

- (UITextField *)specsFindTextFieldWithPlaceholder:(NSString *)placeholder {
    NSPredicate *predicate = [NSPredicate predicateWithBlock:^BOOL(UIView *evaluatedView, NSDictionary *bindings) {
        UITextField *textField = nil;
        if ([evaluatedView isKindOfClass:[UITextField class]]) {
            textField = (UITextField *) evaluatedView;
        }

        return [textField.placeholder isEqualToString:placeholder];
    }];

    return [[[self subviews] filteredArrayUsingPredicate:predicate] firstObject];
}

@end
