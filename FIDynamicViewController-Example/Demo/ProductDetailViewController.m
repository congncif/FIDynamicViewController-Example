//
//  ProductDetailViewController.m
//  FIDynamicViewController-Example
//
//  Created by NGUYEN CHI CONG on 8/14/15.
//  Copyright (c) 2015 NGUYEN CHI CONG. All rights reserved.
//

#import "ProductDetailViewController.h"

#import "ProductGalleryViewController.h"
#import "ProductBottomViewController.h"
#import "ProductGroupViewController.h"

#import "TextAreaInputViewController.h"
#import "TextFieldInputViewController.h"
#import "DateSelectionViewController.h"
#import "DateTimeSelectionViewController.h"
#import "DropdownSelectionViewController.h"
#import "RadioSelectionViewController.h"
#import "CheckboxSelectionViewController.h"

#import "ProductPresenterModel.h"

@implementation ProductDetailViewController

- (void)viewDidLoad{
    [super viewDidLoad];
    
    self.scrollView.alwaysBounceVertical = YES;
    CGRect statusBarFrame = [[UIApplication sharedApplication] statusBarFrame];
    self.defaultInset = UIEdgeInsetsMake(self.navigationController.navigationBar.bounds.size.height + statusBarFrame.size.height , 0, 0, 0);
    [self invalidDyamicLayoutAnimated:NO];
    
//    NSLog(@"Presenter model: %@", self.dynamicPresenter);
}

- (void)genreateAndConfigureSubViewControllers{
    
    ProductBottomViewController *bottomVC = [self.storyboard instantiateViewControllerWithIdentifier:@"ProductBottomViewController"];
    [self configureFooterViewController:bottomVC animated:NO];
    
    ProductGalleryViewController *galleryVC = [self.storyboard instantiateViewControllerWithIdentifier:@"ProductGalleryViewController"];
    [self pushSubViewController:galleryVC animated:NO];
    
    if ([[self currentProduct].type isEqualToString:@"grouped"]) {
        ProductGroupViewController *groupVC = [self.storyboard instantiateViewControllerWithIdentifier:@"ProductGroupViewController"];
        [self pushSubViewController:groupVC animated:NO];
    }else if([[self currentProduct].type isEqualToString:@"simple"]){
        NSArray *options = [self currentProduct].options;
        for(Options *option in options){
            UIViewController *controller = [self createContentOptionWithOption:option];
            if (controller) {
                [self pushSubViewController:controller animated:NO];
            }
            
        }
    }else{
        
    }
}

- (UIViewController *)createContentOptionWithOption: (Options *)option{
    
    if ([option.inputType isEqualToString:@"area"]) {
        TextAreaInputViewController *vc = [self.storyboard instantiateViewControllerWithIdentifier:@"TextAreaInputViewController"];
        vc.identifier = option;
        return vc;
    }
    else if ([option.inputType isEqualToString:@"field"]){
        TextFieldInputViewController *vc = [self.storyboard instantiateViewControllerWithIdentifier:@"TextFieldInputViewController"];
        vc.identifier = option;
        return vc;
    }
    else if ([option.inputType isEqualToString:@"date"]){
        DateSelectionViewController *vc = [self.storyboard instantiateViewControllerWithIdentifier:@"DateSelectionViewController"];
        vc.identifier = option;
        return vc;
    }
    else if ([option.inputType isEqualToString:@"time"]){
        DateSelectionViewController *vc = [self.storyboard instantiateViewControllerWithIdentifier:@"DateSelectionViewController"];
        vc.identifier = option;
        return vc;
    }
    else if ([option.inputType isEqualToString:@"date_time"]){
        DateTimeSelectionViewController *vc = [self.storyboard instantiateViewControllerWithIdentifier:@"DateTimeSelectionViewController"];
        vc.identifier = option;
        return vc;
    }
    else if ([option.inputType isEqualToString:@"drop_down"]){
        DropdownSelectionViewController *vc = [self.storyboard instantiateViewControllerWithIdentifier:@"DropdownSelectionViewController"];
        vc.identifier = option;
        return vc;
    }
    else if ([option.inputType isEqualToString:@"radio"]){
        RadioSelectionViewController *vc = [self.storyboard instantiateViewControllerWithIdentifier:@"RadioSelectionViewController"];
        vc.identifier = option;
        return vc;
    }
    else if ([option.inputType isEqualToString:@"checkbox"]){
        CheckboxSelectionViewController *vc = [self.storyboard instantiateViewControllerWithIdentifier:@"CheckboxSelectionViewController"];
        vc.identifier = option;
        return vc;
    }
    else if ([option.inputType isEqualToString:@"multiple"]){

        CheckboxSelectionViewController *vc = [self.storyboard instantiateViewControllerWithIdentifier:@"CheckboxSelectionViewController"];
        vc.identifier = option;
        return vc;
    }
    
    NSLog(@"Unknown type: %@", option.inputType);
    return nil;
}

/**-----------------------------------------------------------------**/
#pragma mark -
- (Products *)currentProduct{
    ProductPresenterModel *model =  (ProductPresenterModel *)self.dynamicPresenter;
    return model.product;
}



@end
