//
//  Options.h
//  Auto JSONModel
//
//  Created by NGUYEN CHI CONG on 08/14/2015.
//  Copyright (c) 2015 [iF] Solution. All rights reserved.
//

#import "JSONModel.h"

#import "Selections.h"

@protocol Options
@end

@interface Options : JSONModel

@property (nonatomic, strong) NSString* inputType;
@property (nonatomic, strong) NSString* title;
@property (nonatomic, strong) NSString* optionId;
@property (nonatomic, strong) NSArray<Selections> * selections;
@property (nonatomic, strong) NSNumber* position;
@property (nonatomic, strong) NSNumber* required;

@end