//
//  Products.h
//  Auto JSONModel
//
//  Created by NGUYEN CHI CONG on 08/14/2015.
//  Copyright (c) 2015 [iF] Solution. All rights reserved.
//

#import "JSONModel.h"

#import "GroupedItems.h"
#import "TierPrices.h"
#import "Options.h"

@protocol Products
@end

@interface Products : JSONModel

@property (nonatomic, strong) NSString* attributes;
@property (nonatomic, strong) NSArray* gallery;
@property (nonatomic, strong) NSString* priceView;
@property (nonatomic, strong) NSString* position;
@property (nonatomic, strong) NSString* title;
@property (nonatomic, strong) NSString* fulldesc;
@property (nonatomic, strong) NSArray<TierPrices> * tierPrices;
@property (nonatomic, strong) NSString* image;
@property (nonatomic, strong) NSArray<Options> * options;
@property (nonatomic, strong) NSNumber* fromPrice;
@property (nonatomic, strong) NSString* special_price;
@property (nonatomic, strong) NSString* bundleOptions;
@property (nonatomic, strong) NSString* _id;
@property (nonatomic, strong) NSString* category;
@property (nonatomic, strong) NSNumber* stocklevel;
@property (nonatomic, strong) NSNumber* version;
@property (nonatomic, strong) NSString* type;
@property (nonatomic, strong) NSString* associatedAttributes;
@property (nonatomic, strong) NSNumber* minimalPrice;
@property (nonatomic, strong) NSArray<GroupedItems> * groupedItems;
@property (nonatomic, strong) NSString* special_from_date;
@property (nonatomic, strong) NSString* special_to_date;
@property (nonatomic, strong) NSString* associatedProducts;
@property (nonatomic, strong) NSNumber* toPrice;
@property (nonatomic, strong) NSNumber* price;
@property (nonatomic, strong) NSString* priceType;
@property (nonatomic, strong) NSString* externalid;
@property (nonatomic, strong) NSArray* categories;
@property (nonatomic, strong) NSString* descriptionX;

@end