//
//  TextFieldInputViewController.m
//  FIDynamicViewController-Example
//
//  Created by NGUYEN CHI CONG on 8/14/15.
//  Copyright (c) 2015 NGUYEN CHI CONG. All rights reserved.
//

#import "TextFieldInputViewController.h"
#import "FIBorderTextField.h"

#import "Options.h"


@interface TextFieldInputViewController ()

@property (weak, nonatomic) IBOutlet UILabel *lbTitle;
@property (weak, nonatomic) IBOutlet FIBorderTextField *txtField;

@end

@implementation TextFieldInputViewController

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
        
    }
}

@end
