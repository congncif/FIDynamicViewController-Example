//
//  SubViewControllerProtocol.h
//  FIDynamicViewController
//
//  Created by NGUYEN CHI CONG on 8/7/15.
//  Copyright (c) 2015 NGUYEN CHI CONG. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreGraphics/CoreGraphics.h>

#import "FIDynamicViewControllerProtocol.h"

@protocol FISubViewControllerProtocol <NSObject>

@property (nonatomic, weak) id dynamicPresenter;
@property (nonatomic, weak) id<FIDynamicViewControllerProtocol> delegate;

- (void)updatePresenterWithBlock: (void(^)()) block;

- (void)presenterNeedUpdate;

- (CGRect)frameForLayout;
- (void)needUpdateLayoutAnimated: (BOOL)animated;

@end
