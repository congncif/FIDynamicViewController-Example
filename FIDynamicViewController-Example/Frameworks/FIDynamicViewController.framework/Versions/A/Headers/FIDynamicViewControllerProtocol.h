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

/**
 Presenter model for store, exchange data
*/
@property (nonatomic, strong) id dynamicPresenter;

/**
 *
 *  Functions to call
 *
 **/

/**
 [Function] Call when update presenter
*/
- (void)updatePresenterWithBlock: (void(^)()) block;

/**
 [Function] Call when need send update presenter notification manually
*/
- (void)presenterNeedUpdate;

/**
 [Function] Send custom action to sub view controllers.
 return YES if action pass all sub controllers successfully. 
 return NO if action stop at any sub controller (include last controller).
 */
- (BOOL)sendActionToSubControllersWithInfo: (id)actionInfo;


/**
 [Implementation] Delegate Methods sent from subviewcontroller
*/
- (void)subViewController: (id<FISubViewControllerProtocol>) subViewController changedPresenter: (id)presenter;
- (void)subViewControllerNeedUpdateLayout: (id<FISubViewControllerProtocol>) subViewController animated:(BOOL)animated;

@optional
/**
 *
 *  For custom action if need
 *
 **/

/**
 [Implementation] Sent from subviewcontroller
*/
- (void)subViewController: (id<FISubViewControllerProtocol>) subViewController sentActionWithInfo: (id)actionInfo;

@end
