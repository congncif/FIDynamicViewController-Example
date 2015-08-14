//
//  Products.m
//  Auto JSONModel
//
//  Created by NGUYEN CHI CONG on 08/14/2015.
//  Copyright (c) 2015 [iF] Solution. All rights reserved.
//

#import "Products.h"

@implementation Products

+ (BOOL)propertyIsOptional:(NSString *)propertyName {
    return YES;
}

+(JSONKeyMapper*)keyMapper{
    return [[JSONKeyMapper alloc] initWithDictionary:@{@"description":@"descriptionX"}];
}

@end