//
//  AssociatedAttributes.h
//  Auto JSONModel
//
//  Created by NGUYEN CHI CONG on 08/14/2015.
//  Copyright (c) 2015 [iF] Solution. All rights reserved.
//

#import "JSONModel.h"

#import "ValueList.h"

@protocol AssociatedAttributes
@end

@interface AssociatedAttributes : JSONModel

@property (nonatomic, strong) NSNumber* id;
@property (nonatomic, strong) NSString* name;
@property (nonatomic, strong) NSArray<ValueList> * valueList;
@property (nonatomic, strong) NSArray* values;

@end