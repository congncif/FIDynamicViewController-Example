//
//  Sub1ViewController.m
//  FIDynamicViewController-Example
//
//  Created by NGUYEN CHI CONG on 8/11/15.
//  Copyright (c) 2015 NGUYEN CHI CONG. All rights reserved.
//

#import "Sub1ViewController.h"
#import "DynamicPresenter.h"

@implementation Sub1ViewController

- (void)viewDidAppear:(BOOL)animated{
    
}

- (void)presenterNeedUpdate{
    DynamicPresenter *presenter = (DynamicPresenter *)self.dynamicPresenter;
    self.lbData.text = presenter.flagTitle;
}

- (IBAction)updateButtonTapped:(id)sender {
    
    [self updatePresenterWithBlock:^{
        __weak DynamicPresenter *presenter = (DynamicPresenter *)self.dynamicPresenter;
        presenter.flagTitle = @"Subview 1 changed data";
    }];
    
    [UIView animateWithDuration:0.25 animations:^{
        CGRect frame = self.view.frame;
        frame.size.height = arc4random()%140+300;
        self.view.frame = frame;
        [self needUpdateLayoutAnimated:YES];
    }];
    
}

@end
