//
//  DateTimeSelectionViewController.m
//  FIDynamicViewController-Example
//
//  Created by NGUYEN CHI CONG on 8/14/15.
//  Copyright (c) 2015 NGUYEN CHI CONG. All rights reserved.
//

#import "DateTimeSelectionViewController.h"
#import "FIBorderTextField.h"
#import "ActionSheetPicker.h"

#import "Options.h"
#import "DateUtils.h"

@interface DateTimeSelectionViewController ()

@property (weak, nonatomic) IBOutlet UILabel *lbTitle;
@property (weak, nonatomic) IBOutlet FIBorderTextField *txtDate;
@property (weak, nonatomic) IBOutlet FIBorderTextField *txtTime;

@end

@implementation DateTimeSelectionViewController

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
        
        self.txtDate.action = ^(FIBorderTextField *field){
            [ActionSheetDatePicker showPickerWithTitle:option.title datePickerMode:UIDatePickerModeDate selectedDate:[NSDate date] doneBlock:^(ActionSheetDatePicker *picker, id selectedDate, id origin) {
                field.text = [DateUtils stringFromDate:selectedDate withFormat:@"dd / MM / yyyy"];
            } cancelBlock:^(ActionSheetDatePicker *picker) {
                
            } origin:field];
        };
        
        self.txtTime.action = ^(FIBorderTextField *field){
            [ActionSheetDatePicker showPickerWithTitle:option.title datePickerMode:UIDatePickerModeTime selectedDate:[NSDate date] doneBlock:^(ActionSheetDatePicker *picker, id selectedDate, id origin) {
                field.text = [DateUtils stringFromDate:selectedDate withFormat:@"hh : mm a"];
            } cancelBlock:^(ActionSheetDatePicker *picker) {
                
            } origin:field];
        };
    }
}

@end
