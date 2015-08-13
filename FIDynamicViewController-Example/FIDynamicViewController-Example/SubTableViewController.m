//
//  SubTableViewController.m
//  FIDynamicViewController-Example
//
//  Created by NGUYEN CHI CONG on 8/13/15.
//  Copyright (c) 2015 NGUYEN CHI CONG. All rights reserved.
//

#import "SubTableViewController.h"
#import "SubTableViewCell.h"

@interface SubTableViewController () <UITableViewDataSource, UITableViewDelegate>

@property (nonatomic, weak) IBOutlet UITableView *tableView;

@end

@implementation SubTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 10;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"SubTableViewCell" forIndexPath:indexPath];
    cell.textLabel.text = [NSString stringWithFormat: @"Row at index: %ld", (long)indexPath.row];
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
}

/**-----------------------------------------------------------------**/
#pragma mark - Override
- (CGRect)frameForLayout{
    return CGRectMake(0, 0, self.tableView.contentSize.width, self.tableView.contentSize.height) ;
}

@end
