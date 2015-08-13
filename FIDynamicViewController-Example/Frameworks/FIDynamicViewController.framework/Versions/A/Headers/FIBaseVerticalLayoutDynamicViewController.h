//
//  FIBaseVerticalLayoutDynamicViewController.h
//  FIDynamicViewController
//
//  Created by NGUYEN CHI CONG on 8/12/15.
//  Copyright (c) 2015 NGUYEN CHI CONG. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FIBaseDynamicViewController.h"

@interface FIBaseVerticalLayoutDynamicViewController : FIBaseDynamicViewController

@property (nonatomic, strong) UIScrollView *scrollView;

@property (nonatomic, readonly) NSMutableArray *subViewControllers;

- (void)pushChildViewController:(UIViewController *)childController animated: (BOOL)animated;
- (void)popChildViewController:(UIViewController *)childController animated: (BOOL)animated;

- (void)pushChildViewController:(UIViewController *)childController insertAtIndex: (NSInteger)index animated: (BOOL)animated ;
- (void)popChildViewControllerAtIndex: (NSInteger)index animated: (BOOL)animated;

- (void)invalidDyamicLayout;
- (void)invalidDyamicLayoutAnimated: (BOOL)animated;

/**
 *
 *  Override this method to custom
 *
 **/
- (void)genreateAndConfigureSubViewControllers;

@end
