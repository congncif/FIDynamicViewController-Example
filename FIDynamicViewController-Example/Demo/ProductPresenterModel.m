//
//  ProductPresenterModel.m
//  FIDynamicViewController-Example
//
//  Created by NGUYEN CHI CONG on 8/14/15.
//  Copyright (c) 2015 NGUYEN CHI CONG. All rights reserved.
//

#import "ProductPresenterModel.h"

@implementation ProductPresenterModel

- (instancetype)initWithProduct: (Products *)product{
    if (self = [super init]) {
        self.product = product;
    }
    return self;
}

@end
