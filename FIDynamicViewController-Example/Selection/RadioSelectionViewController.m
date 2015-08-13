//
//  RadioSelectionViewController.m
//  FIDynamicViewController-Example
//
//  Created by NGUYEN CHI CONG on 8/13/15.
//  Copyright (c) 2015 NGUYEN CHI CONG. All rights reserved.
//

#import "RadioSelectionViewController.h"

#import "RadioSelectionTableViewCell.h"

@interface RadioSelectionViewController () <UITableViewDataSource, UITableViewDelegate>

@property (nonatomic, weak) IBOutlet UITableView *tableView;

@end

@implementation RadioSelectionViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.tableView.rowHeight = UITableViewAutomaticDimension;
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/**-----------------------------------------------------------------**/
#pragma mark - 
- (CGRect)frameForLayout{
    return CGRectMake(0, 0, self.tableView.contentSize.width, self.tableView.contentSize.height) ;
}

/**-----------------------------------------------------------------**/
#pragma mark - TableView

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 10;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    RadioSelectionTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"RadioSelectionTableViewCell" forIndexPath:indexPath];
    cell.labelRadio.text = [NSString stringWithFormat:@"Radio %d", (int)indexPath.row];;
    return cell;
}

- (NSIndexPath *)tableView:(UITableView *)tableView willSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell = [tableView cellForRowAtIndexPath:indexPath];
    if (cell.selected) {
        [tableView deselectRowAtIndexPath:indexPath animated:YES];
        return nil;
    }
    return indexPath;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
}

@end
