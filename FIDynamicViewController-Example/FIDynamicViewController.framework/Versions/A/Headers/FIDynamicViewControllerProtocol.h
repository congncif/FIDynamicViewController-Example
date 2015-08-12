//
//  FIDynamicViewControllerProtocol.h
//  StoryboardDemo
//
//  Created by NGUYEN CHI CONG on 8/7/15.
//  Copyright (c) 2015 NGUYEN CHI CONG. All rights reserved.
//

@protocol FISubViewControllerProtocolX <NSObject>
@end

@protocol FIDynamicViewControllerProtocol <NSObject>

@property (nonatomic, strong) id dynamicPresenter;

- (void)updatePresenterWithBlock: (void(^)()) block;
- (void)presenterNeedUpdate;

- (void)subViewController: (id<FISubViewControllerProtocolX>) subViewController changedPresenter: (id)presenter;
- (void)subViewControllerNeedUpdateLayout: (id<FISubViewControllerProtocolX>) subViewController animated:(BOOL)animated;

@end
