//
//  AssociatedProducts.h
//  Auto JSONModel
//
//  Created by NGUYEN CHI CONG on 08/14/2015.
//  Copyright (c) 2015 [iF] Solution. All rights reserved.
//

#import "JSONModel.h"

#import "Map.h"

@protocol AssociatedProducts
@end

@interface AssociatedProducts : JSONModel

@property (nonatomic, strong) NSNumber* quantity;
@property (nonatomic, strong) NSNumber* id;
@property (nonatomic, strong) Map* map;
@property (nonatomic, strong) NSNumber* saleable;
@property (nonatomic, strong) NSNumber* instock;

@end