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

/**
 Reference of presenter model, setting automatic
*/
@property (nonatomic, weak) id dynamicPresenter;

@property (nonatomic, weak) id<FIDynamicViewControllerProtocol> containerController;

/**
 [Function] Functions to call
*/
- (void)updatePresenterWithBlock: (void(^)()) block;
- (CGRect)frameForLayout;
- (void)needUpdateLayoutAnimated: (BOOL)animated;

/**
 *
 *  Method need implement by sub class
 *
 **/

/**
 [Implementation] To handler when model changed
*/
- (void)presenterNeedUpdate;

/**
 [Implementation] Recive action from container view controller
 return YES if this action pass successfully at current controller and want to continue perform this action with other sub view controllers.
 return NO if this action doesn't pass and want to stop at current controller.
*/
- (BOOL)receiveActionWithInfo: (id)actionInfo;


@end
