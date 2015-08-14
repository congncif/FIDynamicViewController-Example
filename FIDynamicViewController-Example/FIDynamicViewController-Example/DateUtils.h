//
//  DateUtils.h
//  FIDynamicViewController-Example
//
//  Created by NGUYEN CHI CONG on 8/14/15.
//  Copyright (c) 2015 NGUYEN CHI CONG. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DateUtils : NSObject

+ (NSString *)stringFromDate: (NSDate *)date withFormat: (NSString *)format;
+ (NSDate *)dateFromString: (NSString *)strDate withFormat: (NSString *)format;

@end
