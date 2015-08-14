//
//  Navigations.h
//  Auto JSONModel
//
//  Created by NGUYEN CHI CONG on 08/14/2015.
//  Copyright (c) 2015 [iF] Solution. All rights reserved.
//

#import "JSONModel.h"

#import "Items.h"

@protocol Navigations
@end

@interface Navigations : JSONModel

@property (nonatomic, strong) NSString* key;
@property (nonatomic, strong) NSString* title;
@property (nonatomic, strong) NSArray<Items> * items;

@end