//
//  CCViewController.m
//  UITouchPassingViewExample
//
//  Created by . Carlin on 3/15/14.
//  Copyright (c) 2014 Carlin Creations. All rights reserved.
//

#import "CCViewController.h"

@interface CCViewController ()

    @property (weak, nonatomic) IBOutlet UIScrollView *scrollView;

@end

@implementation CCViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.

    self.scrollView.clipsToBounds = false;
    self.scrollView.pagingEnabled = true;
    self.scrollView.directionalLockEnabled = true;
    self.scrollView.showsHorizontalScrollIndicator = true;
    self.scrollView.showsVerticalScrollIndicator =  false;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];

    // Setup frames
    CGRect bounds = self.scrollView.bounds;

    // Basic populate scroll view with random views
    for (NSInteger i = 0; i < 10; i++) {
        UIView *view = [[UIView alloc] initWithFrame:CGRectMake(
            CGRectGetWidth(bounds) * i + 4, 4,
            CGRectGetWidth(bounds) - 8,
            CGRectGetHeight(bounds) - 8
        )];
        view.backgroundColor = [UIColor greenColor];
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
