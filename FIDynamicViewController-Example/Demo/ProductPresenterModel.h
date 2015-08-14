//
//  ProductPresenterModel.h
//  FIDynamicViewController-Example
//
//  Created by NGUYEN CHI CONG on 8/14/15.
//  Copyright (c) 2015 NGUYEN CHI CONG. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "Products.h"

@interface ProductPresenterModel : NSObject

@property (nonatomic, strong) Products *product;

- (instancetype)initWithProduct: (Products *)product;

@end
