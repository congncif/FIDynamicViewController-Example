//
//  DynamicViewController.m
//  FIDynamicViewController-Example
//
//  Created by NGUYEN CHI CONG on 8/11/15.
//  Copyright (c) 2015 NGUYEN CHI CONG. All rights reserved.
//

#import "DynamicViewController.h"

#import <FIDynamicViewController/FISubViewControllerProtocol.h>

@interface DynamicViewController ()

@property (weak, nonatomic) IBOutlet UILabel *lbTitle;

@end

@implementation DynamicViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [self setDynamicPresenter:[[DynamicPresenter alloc] init]];
    
    /**------------------------**
     Use this method when udpate presenter
     **------------------------**/
    [self updatePresenterWithBlock:^{
        
        __weak DynamicPresenter *presenter = (DynamicPresenter *)self.dynamicPresenter;
        presenter.flagTitle = @"Data on main view controller";
    }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/**-----------------------------------------------------------------**/
#pragma mark - Observe data changed
- (void)presenterNeedUpdate{
    
    /**------------------------**
     Make sure call super presenterNeedUpdate first
     **------------------------**/
    [super presenterNeedUpdate];
    
     __weak DynamicPresenter *presenter = (DynamicPresenter *)self.dynamicPresenter;
    self.lbTitle.text = presenter.flagTitle;
}


@end
