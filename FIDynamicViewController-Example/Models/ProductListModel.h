//
//  ProductListModel.h
//  Auto JSONModel
//
//  Created by NGUYEN CHI CONG on 08/14/2015.
//  Copyright (c) 2015 [iF] Solution. All rights reserved.
//

#import "JSONModel.h"

#import "Error.h"
#import "Products.h"
#import "Navigations.h"

@protocol ProductListModel
@end

@interface ProductListModel : JSONModel

@property (nonatomic, strong) Error* error;
@property (nonatomic, strong) NSArray<Navigations> * navigations;
@property (nonatomic, strong) NSArray<Products> * products;

@end