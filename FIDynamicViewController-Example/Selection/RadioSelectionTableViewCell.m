//
//  RadioSelectionTableViewCell.m
//  FIDynamicViewController-Example
//
//  Created by NGUYEN CHI CONG on 8/13/15.
//  Copyright (c) 2015 NGUYEN CHI CONG. All rights reserved.
//

#import "RadioSelectionTableViewCell.h"

@implementation RadioSelectionTableViewCell

- (void)awakeFromNib {
    // Initialization code
    self.selectedBackgroundView = [UIView new];
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
    NSString *imageNameRadio;
    if (selected) {
        imageNameRadio = @"radio-button-on";
        
    }else{
        imageNameRadio = @"radio-button-off";
    }
    self.imageViewRaido.image = [UIImage imageNamed:imageNameRadio];
}

@end
