//
//  VerticalLayoutDynamicViewController.m
//  FIDynamicViewController-Example
//
//  Created by NGUYEN CHI CONG on 8/12/15.
//  Copyright (c) 2015 NGUYEN CHI CONG. All rights reserved.
//

#import "VerticalLayoutDynamicViewController.h"
#import <FIDynamicViewController/FIBaseSubViewController.h>

#import "Sub1ViewController.h"
#import "Sub2ViewController.h"

#import "DynamicPresenter.h"

@interface VerticalLayoutDynamicViewController ()

@end

@implementation VerticalLayoutDynamicViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    Sub1ViewController *sub1VC = [self.storyboard instantiateViewControllerWithIdentifier:@"Sub1ViewController"];
    sub1VC.view.frame = CGRectMake(0, 0, 0, 300);
    
//    [self addChildViewController:sub1VC];
//    [self.view addSubview:sub1VC.view];
//    
//    [self refreshViewsLayout];
    
    Sub2ViewController *sub2VC = [self.storyboard instantiateViewControllerWithIdentifier:@"Sub2ViewController"];
    sub2VC.view.frame = CGRectMake(0, 0, 0, 123);
    
    //    [self addChildViewController:sub2VC];
    //    [self.view addSubview:sub2VC.view];
    //
    //    [self invalidDyamicLayout];
    //
    [self pushChildViewController:sub1VC animated:NO];
    [self pushChildViewController:sub2VC animated:NO];
    
    [self setDynamicPresenter:[[DynamicPresenter alloc] init]];
    
    /**------------------------**
     Use this method when udpate presenter
     **------------------------**/
    [self updatePresenterWithBlock:^{
        
        __weak DynamicPresenter *presenter = (DynamicPresenter *)self.dynamicPresenter;
        presenter.flagTitle = @"Data on main view controller";
    }];

    
}









@end
