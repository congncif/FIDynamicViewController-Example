//
//  ViewController.m
//  FIDynamicViewController-Example
//
//  Created by NGUYEN CHI CONG on 8/11/15.
//  Copyright (c) 2015 NGUYEN CHI CONG. All rights reserved.
//

#import "ViewController.h"
#import "DynamicViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)test1:(id)sender {
    DynamicViewController *dynamicVC = [self.storyboard instantiateViewControllerWithIdentifier:@"DynamicViewController1"];
    [self.navigationController pushViewController:dynamicVC animated:YES];
}

- (IBAction)test2:(id)sender {
    DynamicViewController *dynamicVC = [self.storyboard instantiateViewControllerWithIdentifier:@"DynamicViewController2"];
    [self.navigationController pushViewController:dynamicVC animated:YES];
}

@end
