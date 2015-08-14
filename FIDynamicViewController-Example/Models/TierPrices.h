//
//  TierPrices.h
//  Auto JSONModel
//
//  Created by NGUYEN CHI CONG on 08/14/2015.
//  Copyright (c) 2015 [iF] Solution. All rights reserved.
//

#import "JSONModel.h"


@protocol TierPrices
@end

@interface TierPrices : JSONModel

@property (nonatomic, strong) NSNumber* price;
@property (nonatomic, strong) NSNumber* qty;
@property (nonatomic, strong) NSString* customerGroupId;

@end