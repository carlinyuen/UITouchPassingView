//
//  UITouchPassingView.h
//  UITouchPassingViewExample
//
//  Created by . Carlin on 3/15/14.
//  Copyright (c) 2014 Carlin Creations. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UITouchPassingView : UIView

    /** Target view to pass touches to */
    @property (nonatomic, weak) UIView *targetView;

    /** Flag to enable / disable touch passing on the fly, defaults to false */
    @property (nonatomic, assign) BOOL touchPassingDisabled;

    /** @brief Convenience constructor to set target view */
    - (id)initWithTarget:(UIView *)targetView;

@end
