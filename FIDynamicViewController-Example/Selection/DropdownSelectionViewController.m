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
#import "Options.h"

static CGFloat WIDTH_QUANTITY_VIEW = 60.0f;

@interface DropdownSelectionViewController ()

@property (nonatomic, weak) IBOutlet UILabel *lbTitle;
@property (nonatomic, weak) IBOutlet FIBorderTextField *txtProduct;
@property (nonatomic, weak) IBOutlet FIBorderTextField *txtQuantity;

@property (nonatomic, weak) IBOutlet NSLayoutConstraint *lcQuantityViewWidth;

@property (nonatomic) BOOL allowEnterQuantity;

@end

@implementation DropdownSelectionViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [self loadData];
    
}

- (void)loadData{
    if ([self.identifier isKindOfClass:[Options class]]){
        Options *option = (Options *)self.identifier;
        self.lbTitle.text = option.title;
        self.txtProduct.action = ^(FIBorderTextField *field){
            NSArray *rows = [option.selections valueForKeyPath:@"name"];
            [ActionSheetStringPicker showPickerWithTitle:@"Choose an option"
                                                    rows:rows
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

- (BOOL)receiveActionWithInfo:(id)actionInfo{
    NSLog(@"PASSED: %@", NSStringFromClass([self class]));
//    return NO;
    return [super receiveActionWithInfo:actionInfo];
}


@end
