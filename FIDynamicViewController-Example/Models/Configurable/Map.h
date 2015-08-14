//
//  Map.h
//  Auto JSONModel
//
//  Created by NGUYEN CHI CONG on 08/14/2015.
//  Copyright (c) 2015 [iF] Solution. All rights reserved.
//

#import "JSONModel.h"


@protocol Map
@end

@interface Map : JSONModel

@property (nonatomic, strong) NSString* Size;
@property (nonatomic, strong) NSString* Color;

@end