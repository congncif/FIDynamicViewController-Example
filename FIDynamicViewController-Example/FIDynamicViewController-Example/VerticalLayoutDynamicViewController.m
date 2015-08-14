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
    CGRect statusBarFrame = [[UIApplication sharedApplication] statusBarFrame];
    self.defaultInset = UIEdgeInsetsMake(self.navigationController.navigationBar.bounds.size.height + statusBarFrame.size.height , 0, 0, 0);
    [self invalidDyamicLayoutAnimated:NO];
}

/**-----------------------------------------------------------------**/
#pragma mark - Custom UI
- (void)genreateAndConfigureSubViewControllers{
    // Do any additional setup after loading the view.
    
    Sub1ViewController *sub1VC = [self.storyboard instantiateViewControllerWithIdentifier:@"Sub1ViewController"];
    sub1VC.view.frame = CGRectMake(0, 0, 0, 200);
    [self configureHeaderViewController:sub1VC animated:NO];
    
    Sub2ViewController *sub2VC = [self.storyboard instantiateViewControllerWithIdentifier:@"Sub2ViewController"];
    sub2VC.view.frame = CGRectMake(0, 0, 0, 100);
    [self configureFooterViewController:sub2VC animated:NO];
    
    [self configureHeaderViewController:nil animated:NO];
    
    DropdownSelectionViewController *dropdownVC = [self.storyboard instantiateViewControllerWithIdentifier:@"DropdownSelectionViewController"];
    [self pushSubViewController:dropdownVC animated:NO];
    
    DropdownSelectionViewController *dropdownVC2 = [self.storyboard instantiateViewControllerWithIdentifier:@"DropdownSelectionViewController"];
    dropdownVC2.allowEnterQuantity = YES;
    [self pushSubViewController:dropdownVC2 animated:NO];
    
    RadioSelectionViewController *radioVC = [self.storyboard instantiateViewControllerWithIdentifier:@"RadioSelectionViewController"];
    [self pushSubViewController:radioVC animated:NO];
    
    CheckboxSelectionViewController *multipleSelectionsVC = [self.storyboard instantiateViewControllerWithIdentifier:@"CheckboxSelectionViewController"];
    [self pushSubViewController:multipleSelectionsVC animated:NO];
    
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
