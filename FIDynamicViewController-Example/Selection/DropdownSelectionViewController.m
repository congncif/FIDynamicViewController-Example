//
//  DropdownSelectionViewController.m
//  FIDynamicViewController-Example
//
//  Created by NGUYEN CHI CONG on 8/13/15.
//  Copyright (c) 2015 NGUYEN CHI CONG. All rights reserved.
//

#import "DropdownSelectionViewController.h"

#import "FIBorderTextField.h"

#import "ActionSheetPicker.h"

static CGFloat WIDTH_QUANTITY_VIEW = 60.0f;

@interface DropdownSelectionViewController ()

@property (nonatomic, weak) IBOutlet FIBorderTextField *txtProduct;
@property (nonatomic, weak) IBOutlet FIBorderTextField *txtQuantity;

@property (nonatomic, weak) IBOutlet NSLayoutConstraint *lcQuantityViewWidth;

@end

@implementation DropdownSelectionViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.txtProduct.action = ^(FIBorderTextField *field){
        NSArray *colors = [NSArray arrayWithObjects:@"Camera 1", @"Camera 2", @"Camera 3", @"Camera 4", nil];
        
        [ActionSheetStringPicker showPickerWithTitle:@"Select camera"
                                                rows:colors
                                    initialSelection:0
                                           doneBlock:^(ActionSheetStringPicker *picker, NSInteger selectedIndex, id selectedValue) {
                                               NSLog(@"Picker: %@", picker);
                                               NSLog(@"Selected Index: %d", (int)selectedIndex);
                                               NSLog(@"Selected Value: %@", selectedValue);
                                               field.text = selectedValue;
                                           }
                                         cancelBlock:^(ActionSheetStringPicker *picker) {
                                             NSLog(@"Block Picker Canceled");
                                         }
                                              origin:field];
    };
    
    [self refreshViews];
}

- (void)refreshViews{
    if (self.allowEnterQuantity) {
        self.lcQuantityViewWidth.constant = WIDTH_QUANTITY_VIEW;
    }else{
        self.lcQuantityViewWidth.constant = 0;
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
