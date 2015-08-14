//
//  ProductGroupTableViewCell.m
//  FIDynamicViewController-Example
//
//  Created by NGUYEN CHI CONG on 8/14/15.
//  Copyright (c) 2015 NGUYEN CHI CONG. All rights reserved.
//

#import "ProductGroupTableViewCell.h"

@implementation ProductGroupTableViewCell

- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (void)bindGroupItem:(GroupedItems *)item{
    self.lbTitle.text = item.name;
    NSString *currency = @"AU $";
    self.lbPrice.text =  [currency stringByAppendingString: item.price];
}

@end
