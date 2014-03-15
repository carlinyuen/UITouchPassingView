//
//  UITouchPassingView.m
//  UITouchPassingViewExample
//
//  Created by . Carlin on 3/15/14.
//  Copyright (c) 2014 Carlin Creations. All rights reserved.
//

#import "UITouchPassingView.h"

@implementation UITouchPassingView

/** @brief Convenience constructor to set target view */
- (id)initWithTarget:(UIView *)targetView
{
    self = [super init];
    if (self) {
        _targetView = targetView;
    }
    return self;
}


/** @brief If hitTest returns the container, then return targetView instead */
- (UIView *)hitTest:(CGPoint)point withEvent:(UIEvent *)event {
	UIView *child = nil;
    if ((child = [super hitTest:point withEvent:event]) == self
        && self.targetView) {
    	return self.targetView;
	}
    return child;
}

@end
