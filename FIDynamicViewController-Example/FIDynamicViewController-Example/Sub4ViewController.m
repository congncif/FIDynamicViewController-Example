//
//  Sub4ViewController.m
//  FIDynamicViewController-Example
//
//  Created by NGUYEN CHI CONG on 8/13/15.
//  Copyright (c) 2015 NGUYEN CHI CONG. All rights reserved.
//

#import "Sub4ViewController.h"

@interface Sub4ViewController ()

@end

@implementation Sub4ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)sendActionButtonTapped:(id)sender{
    if ([self.delegate respondsToSelector:@selector(subViewController:sentActionWithInfo:)]) {
        [self.delegate subViewController:self sentActionWithInfo:@"Lam gi thi lam"];
    }
}

@end
