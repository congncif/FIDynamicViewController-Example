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
#import "Sub3ViewController.h"
#import "SubTableViewController.h"

#import "DropdownSelectionViewController.h"
#import "RadioSelectionViewController.h"
#import "CheckboxSelectionViewController.h"

#import "DynamicPresenter.h"

@interface VerticalLayoutDynamicViewController ()

@end

@implementation VerticalLayoutDynamicViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

/**-----------------------------------------------------------------**/
#pragma mark - Custom UI
- (void)genreateAndConfigureSubViewControllers{
    // Do any additional setup after loading the view.
    
    DropdownSelectionViewController *dropdownVC = [self.storyboard instantiateViewControllerWithIdentifier:@"DropdownSelectionViewController"];
    [self pushChildViewController:dropdownVC animated:NO];
    
    DropdownSelectionViewController *dropdownVC2 = [self.storyboard instantiateViewControllerWithIdentifier:@"DropdownSelectionViewController"];
    dropdownVC2.allowEnterQuantity = YES;
    [self pushChildViewController:dropdownVC2 animated:NO];
    
    RadioSelectionViewController *radioVC = [self.storyboard instantiateViewControllerWithIdentifier:@"RadioSelectionViewController"];
    [self pushChildViewController:radioVC animated:NO];
    
    CheckboxSelectionViewController *multipleSelectionsVC = [self.storyboard instantiateViewControllerWithIdentifier:@"CheckboxSelectionViewController"];
    [self pushChildViewController:multipleSelectionsVC animated:NO];
    
    /**------------------------**
     configure model
     **------------------------**/
    [self setDynamicPresenter:[[DynamicPresenter alloc] init]];
    [self updatePresenterWithBlock:^{
        
        __weak DynamicPresenter *presenter = (DynamicPresenter *)self.dynamicPresenter;
        presenter.flagTitle = @"Data on main view controller";
    }];
}

/**-----------------------------------------------------------------**/
#pragma mark - Custom Action
- (void)subViewController:(id<FISubViewControllerProtocol>)subViewController sentActionWithInfo:(id)actionInfo{
    NSLog(@"Action Info: %@ from ViewController: %@", actionInfo, subViewController);
}

@end
