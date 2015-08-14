//
//  ProductGroupViewController.m
//  FIDynamicViewController-Example
//
//  Created by NGUYEN CHI CONG on 8/14/15.
//  Copyright (c) 2015 NGUYEN CHI CONG. All rights reserved.
//

#import "ProductGroupViewController.h"
#import "ProductGroupTableViewCell.h"
#import "ProductPresenterModel.h"

@interface ProductGroupViewController ()<UITableViewDataSource, UITableViewDelegate>

@property (nonatomic, weak) IBOutlet UITableView *tableView;

@end

@implementation ProductGroupViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.tableView.dataSource = self;
    self.tableView.delegate = self;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return [self currentProduct].groupedItems.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    ProductGroupTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
    [cell bindGroupItem:[[self currentProduct].groupedItems objectAtIndex:indexPath.row]];
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
}

/**-----------------------------------------------------------------**/
#pragma mark - Override
- (CGRect)frameForLayout{
    return CGRectMake(0, 0, self.tableView.contentSize.width, self.tableView.contentSize.height) ;
}

- (void)presenterNeedUpdate{
    [self.tableView reloadData];
}

/**-----------------------------------------------------------------**/
#pragma mark - 
- (Products *)currentProduct{
    ProductPresenterModel *model =  (ProductPresenterModel *)self.dynamicPresenter;
    return model.product;
}

@end
