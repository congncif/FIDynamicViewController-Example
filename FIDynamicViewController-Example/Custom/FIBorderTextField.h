//
//  FIBorderTextField.h
//  CustomControls
//
//  Created by NGUYEN CHI CONG on 7/19/15.
//  Copyright (c) 2015 NGUYEN CHI CONG. All rights reserved.
//

#import <UIKit/UIKit.h>

IB_DESIGNABLE

typedef NS_OPTIONS (NSInteger, FIBorderFieldType){
	FIBorderFieldTypeNormal,
	FIBorderFieldTypeInfo,
	FIBorderFieldTypeOption
};

@class FIBorderTextField;

typedef void (^ActionTypeHandler)(FIBorderTextField *field);

@interface FIBorderTextField : UITextField

@property (nonatomic, strong) IBInspectable UIColor *borderColor;
@property (nonatomic) IBInspectable CGFloat borderWidth;
@property (nonatomic) IBInspectable CGFloat bordeRoundRadius;
@property (nonatomic) IBInspectable CGFloat leftPadding;
@property (nonatomic) IBInspectable CGFloat rightPadding;

@property (nonatomic) IBInspectable NSInteger type;
@property (nonatomic, copy) ActionTypeHandler action;

@end
