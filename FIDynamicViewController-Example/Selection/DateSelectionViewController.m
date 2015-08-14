//
//  DateSelectionViewController.m
//  FIDynamicViewController-Example
//
//  Created by NGUYEN CHI CONG on 8/14/15.
//  Copyright (c) 2015 NGUYEN CHI CONG. All rights reserved.
//

#import "DateSelectionViewController.h"
#import "FIBorderTextField.h"
#import "ActionSheetPicker.h"

#import "DateUtils.h"

#import "Options.h"

@interface DateSelectionViewController ()

@property (weak, nonatomic) IBOutlet UILabel *lbTitle;
@property (weak, nonatomic) IBOutlet FIBorderTextField *txtField;

@end

@implementation DateSelectionViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [self loadData];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (void)loadData{
    if ([self.identifier isKindOfClass:[Options class]]){
        Options *option = (Options *)self.identifier;
        self.lbTitle.text = option.title;
        
        self.txtField.action = ^(FIBorderTextField *field){
            
            UIDatePickerMode mode = UIDatePickerModeDateAndTime;
            NSString *format = @"dd / MM / yyyy";
            if ([option.inputType isEqualToString:@"date"]) {
                mode = UIDatePickerModeDate;
                field.placeholder = @"DD / MM /YYYY";
            }else if ([option.inputType isEqualToString:@"time"]){
                mode = UIDatePickerModeTime;
                field.placeholder = @"00 : 00 AM";
                format = @"hh : mm a";
            }
            
            [ActionSheetDatePicker showPickerWithTitle:option.title datePickerMode:mode selectedDate:[NSDate date] doneBlock:^(ActionSheetDatePicker *picker, id selectedDate, id origin) {
                field.text = [DateUtils stringFromDate:selectedDate withFormat:format];
            } cancelBlock:^(ActionSheetDatePicker *picker) {
                
            } origin:field];
        };
    }
}

@end
