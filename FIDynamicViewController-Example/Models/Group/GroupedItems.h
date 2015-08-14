//
//  GroupedItems.h
//  Auto JSONModel
//
//  Created by NGUYEN CHI CONG on 08/14/2015.
//  Copyright (c) 2015 [iF] Solution. All rights reserved.
//

#import "JSONModel.h"


@protocol GroupedItems
@end

@interface GroupedItems : JSONModel

@property (nonatomic, strong) NSNumber* instock;
@property (nonatomic, strong) NSNumber* quantity;
@property (nonatomic, strong) NSNumber* saleable;
@property (nonatomic, strong) NSNumber* productId;
@property (nonatomic, strong) NSString* price;
@property (nonatomic, strong) NSString* sku;
@property (nonatomic, strong) NSString* priceType;
@property (nonatomic, strong) NSNumber* position;
@property (nonatomic, strong) NSString* defaultQty;
@property (nonatomic, strong) NSString* name;

@end