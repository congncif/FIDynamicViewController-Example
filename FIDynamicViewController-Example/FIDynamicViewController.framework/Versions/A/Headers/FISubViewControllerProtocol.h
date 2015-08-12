//
//  SubViewControllerProtocol.h
//  StoryboardDemo
//
//  Created by NGUYEN CHI CONG on 8/7/15.
//  Copyright (c) 2015 NGUYEN CHI CONG. All rights reserved.
//

#import "FIDynamicViewControllerProtocol.h"

@protocol FISubViewControllerProtocol <FISubViewControllerProtocolX>

@property (nonatomic, weak) id dynamicPresenter;
@property (nonatomic, weak) id<FIDynamicViewControllerProtocol> delegate;

- (void)updatePresenterWithBlock: (void(^)()) block;

- (void)presenterNeedUpdate;

- (void)needUpdateLayoutAnimated: (BOOL)animated;

@end
