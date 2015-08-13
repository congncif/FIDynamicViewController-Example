//
//  FIDynamicViewControllerProtocol.h
//  FIDynamicViewController
//
//  Created by NGUYEN CHI CONG on 8/7/15.
//  Copyright (c) 2015 NGUYEN CHI CONG. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol FISubViewControllerProtocol;
@protocol FIDynamicViewControllerProtocol <NSObject>

@property (nonatomic, strong) id dynamicPresenter;

- (void)updatePresenterWithBlock: (void(^)()) block;
- (void)presenterNeedUpdate;

- (void)subViewController: (id<FISubViewControllerProtocol>) subViewController changedPresenter: (id)presenter;
- (void)subViewControllerNeedUpdateLayout: (id<FISubViewControllerProtocol>) subViewController animated:(BOOL)animated;

@optional
/**
 *
 *  For custom action if need
 *
 **/
- (void)subViewController: (id<FISubViewControllerProtocol>) subViewController sentActionWithInfo: (id)actionInfo;

@end
