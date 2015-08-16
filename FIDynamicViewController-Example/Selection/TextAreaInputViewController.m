//
//  ProductAreaInputViewController.m
//  FIDynamicViewController-Example
//
//  Created by NGUYEN CHI CONG on 8/14/15.
//  Copyright (c) 2015 NGUYEN CHI CONG. All rights reserved.
//

#import "TextAreaInputViewController.h"

#import "Options.h"

@interface TextAreaInputViewController ()

@property (weak, nonatomic) IBOutlet UILabel *lbTitle;
@property (weak, nonatomic) IBOutlet UITextView *tvContent;

@end

@implementation TextAreaInputViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.tvContent.layer.borderColor = [UIColor lightGrayColor].CGColor;
    self.tvContent.layer.borderWidth = 1;
    self.tvContent.layer.cornerRadius = 4;
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

- (BOOL)receiveActionWithInfo:(id)actionInfo{
    NSLog(@"PASSED: %@", NSStringFromClass([self class]));
    
    return [super receiveActionWithInfo:actionInfo];
}

@end
