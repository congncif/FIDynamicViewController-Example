//
//  ViewController.m
//  FIDynamicViewController-Example
//
//  Created by NGUYEN CHI CONG on 8/11/15.
//  Copyright (c) 2015 NGUYEN CHI CONG. All rights reserved.
//

#import "ViewController.h"
#import "DynamicViewController.h"

#import "ProductListModel.h"
#import "ProductDetailViewController.h"
#import "ProductPresenterModel.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)test1:(id)sender {
    DynamicViewController *dynamicVC = [self.storyboard instantiateViewControllerWithIdentifier:@"DynamicViewController1"];
    [self.navigationController pushViewController:dynamicVC animated:YES];
}

- (IBAction)test2:(id)sender {
    DynamicViewController *dynamicVC = [self.storyboard instantiateViewControllerWithIdentifier:@"DynamicViewController2"];
    [self.navigationController pushViewController:dynamicVC animated:YES];
}

- (IBAction)demoButtonTapped:(id)sender {
    
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    if ([segue.identifier isEqualToString:@"ProductDetailSegueID"]) {
        Products *product = [self productWithFile:@"group"];
        ProductDetailViewController *productDetailVC = segue.destinationViewController;
        productDetailVC.dynamicPresenter = [[ProductPresenterModel alloc] initWithProduct:product];
       
    }else if([segue.identifier isEqualToString:@"CustomProductDetailSegueID"]){
        Products *product = [self productWithFile:@"customoption"];
        ProductDetailViewController *productDetailVC = segue.destinationViewController;
        productDetailVC.dynamicPresenter = [[ProductPresenterModel alloc] initWithProduct:product];
    }
    
}

- (Products *)productWithFile: (NSString *)fileName{
    NSString *pathFile = [[NSBundle mainBundle]pathForResource:fileName ofType:@"json"];
    NSError *error = nil;
    NSString *group = [NSString stringWithContentsOfFile:pathFile encoding:NSUTF8StringEncoding error:&error];
    if (error) {
        return nil;
    }
    NSError *errorJM = nil;
    ProductListModel *model = [[ProductListModel alloc] initWithString:group error:&errorJM];
    if (errorJM) {
        return nil;
    }
    if (model.products && model.products.count) {
        
        NSInteger index = arc4random()%model.products.count;
        return [model.products objectAtIndex:index];
    }
    return nil;
}

@end
