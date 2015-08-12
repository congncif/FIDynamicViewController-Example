//
//  Sub2ViewController.m
//  FIDynamicViewController-Example
//
//  Created by NGUYEN CHI CONG on 8/11/15.
//  Copyright (c) 2015 NGUYEN CHI CONG. All rights reserved.
//

#import "Sub2ViewController.h"
#import "DynamicPresenter.h"

@interface Sub2ViewController ()

@end

@implementation Sub2ViewController

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
        presenter.flagTitle = @"Subview 2 changed data";
    }];
    
}

@end
