//
//  CCViewController.m
//  UITouchPassingViewExample
//
//  Created by . Carlin on 3/15/14.
//  Copyright (c) 2014 Carlin Creations. All rights reserved.
//

#import "CCViewController.h"

#import <QuartzCore/QuartzCore.h>

#import "UITouchPassingView.h"

    #define SIZE_UI_MARGIN 32
    #define NUM_PAGES 10

@interface CCViewController ()

    @property (weak, nonatomic) IBOutlet UITouchPassingView *overlayView;
    @property (weak, nonatomic) IBOutlet UIScrollView *scrollView;

@end

@implementation CCViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.

    // Setup View
    self.view.backgroundColor = [UIColor whiteColor];

    // Setup ScrollView
    self.scrollView.scrollEnabled = true;
    self.scrollView.clipsToBounds = false;
    self.scrollView.pagingEnabled = true;
    self.scrollView.directionalLockEnabled = true;
    self.scrollView.showsHorizontalScrollIndicator = true;
    self.scrollView.showsVerticalScrollIndicator =  false;
    self.scrollView.backgroundColor = [UIColor whiteColor];
    self.scrollView.layer.borderColor = [[UIColor blackColor] CGColor];
    self.scrollView.layer.borderWidth = 1;

    // Setup Overlay View (TouchPassingView), instead of using IB, you can also just initialize it:
    //  self.overlayView = [[UITouchPassingView alloc] initWithTarget:self.scrollView];
    //  self.overlayView.frame = CGRectMake(a, b, c, d);
    //  [self.view addSubview:self.overlayView];
    self.overlayView.targetView = self.scrollView;
    self.overlayView.layer.borderWidth = 1;
    self.overlayView.layer.borderColor = [[UIColor lightGrayColor] CGColor];
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];

    // Setup frames
    CGRect bounds = self.scrollView.bounds;

    // Basic populate scroll view with random views
    for (NSInteger i = 0; i < NUM_PAGES; i++) {
        UIView *view = [[UIView alloc] initWithFrame:CGRectMake(
            CGRectGetWidth(bounds) * i + SIZE_UI_MARGIN / 2,
            SIZE_UI_MARGIN / 2,
            CGRectGetWidth(bounds) - SIZE_UI_MARGIN,
            CGRectGetHeight(bounds) - SIZE_UI_MARGIN
        )];
        view.backgroundColor = [UIColor greenColor];
        [self.scrollView addSubview:view];
    }

    // Update scrollView content size
    self.scrollView.contentSize = CGSizeMake(
        CGRectGetWidth(bounds) * NUM_PAGES, CGRectGetHeight(bounds));
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
