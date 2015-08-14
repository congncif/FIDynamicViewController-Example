//
//  ProductGroupTableViewCell.h
//  FIDynamicViewController-Example
//
//  Created by NGUYEN CHI CONG on 8/14/15.
//  Copyright (c) 2015 NGUYEN CHI CONG. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "GroupedItems.h"

@interface ProductGroupTableViewCell : UITableViewCell

@property (nonatomic, weak) IBOutlet UILabel *lbTitle;
@property (nonatomic, weak) IBOutlet UILabel *lbPrice;
@property (nonatomic, weak) IBOutlet UILabel *lbQuantity;
@property (nonatomic, weak) IBOutlet UITextField *txtQuantity;

- (void)bindGroupItem: (GroupedItems *)item;

@end
