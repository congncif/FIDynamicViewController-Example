//
//  Items.h
//  Auto JSONModel
//
//  Created by NGUYEN CHI CONG on 08/14/2015.
//  Copyright (c) 2015 [iF] Solution. All rights reserved.
//

#import "JSONModel.h"


@protocol Items
@end

@interface Items : JSONModel

@property (nonatomic, strong) NSNumber* count;
@property (nonatomic, strong) NSString* label;
@property (nonatomic, strong) NSString* value;

@end