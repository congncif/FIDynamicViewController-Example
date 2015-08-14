//
//  Error.h
//  Auto JSONModel
//
//  Created by NGUYEN CHI CONG on 08/14/2015.
//  Copyright (c) 2015 [iF] Solution. All rights reserved.
//

#import "JSONModel.h"


@protocol Error
@end

@interface Error : JSONModel

@property (nonatomic, strong) NSString* message;
@property (nonatomic, strong) NSString* parameters;
@property (nonatomic, strong) NSNumber* code;

@end