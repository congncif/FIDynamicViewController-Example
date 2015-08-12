//
//  Sub3ViewController.m
//  FIDynamicViewController-Example
//
//  Created by NGUYEN CHI CONG on 8/11/15.
//  Copyright (c) 2015 NGUYEN CHI CONG. All rights reserved.
//

#import "Sub3ViewController.h"
#import "DynamicPresenter.h"

@interface Sub3ViewController ()

@end

@implementation Sub3ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)presenterNeedUpdate{
    DynamicPresenter *presenter = (DynamicPresenter *)self.dynamicPresenter;
    self.lbData.text = presenter.flagTitle;
}

- (IBAction)updateButtonTapped:(id)sender {
    
    [self updatePresenterWithBlock:^{
        __weak DynamicPresenter *presenter = (DynamicPresenter *)self.dynamicPresenter;
        presenter.flagTitle = @"Subview 3 changed data";
    }];
    
}

@end
