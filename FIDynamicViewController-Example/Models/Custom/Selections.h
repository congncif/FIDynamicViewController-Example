//
//  Selections.h
//  Auto JSONModel
//
//  Created by NGUYEN CHI CONG on 08/14/2015.
//  Copyright (c) 2015 [iF] Solution. All rights reserved.
//

#import "JSONModel.h"


@protocol Selections
@end

@interface Selections : JSONModel

@property (nonatomic, strong) NSString* fileExtension;
@property (nonatomic, strong) NSNumber* position;
@property (nonatomic, strong) NSNumber* imageSizeY;
@property (nonatomic, strong) NSNumber* price;
@property (nonatomic, strong) NSNumber* imageSizeX;
@property (nonatomic, strong) NSString* priceType;
@property (nonatomic, strong) NSString* sku;
@property (nonatomic, strong) NSString* valueId;
@property (nonatomic, strong) NSString* name;
@property (nonatomic, strong) NSNumber* maxCharacters;

@end