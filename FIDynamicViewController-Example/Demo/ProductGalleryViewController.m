//
//  ProductGalleryViewController.m
//  FIDynamicViewController-Example
//
//  Created by NGUYEN CHI CONG on 8/14/15.
//  Copyright (c) 2015 NGUYEN CHI CONG. All rights reserved.
//

#import "ProductGalleryViewController.h"

@interface ProductGalleryViewController () <UICollectionViewDataSource, UICollectionViewDelegate>

@property (nonatomic, weak) IBOutlet UIImageView *imageView;
@property (nonatomic, weak) IBOutlet UICollectionView *collectionView;

@property (nonatomic, strong) NSArray *images;

@end

@implementation ProductGalleryViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.images = @[@"girl0.jpg", @"girl1.jpg", @"girl2.jpg", @"girl3.jpg"];
    NSString *imgName = self.images[0];
    self.imageView.image = [UIImage imageNamed:imgName];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/**-----------------------------------------------------------------**/
#pragma mark - CollectionView

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView{
    return 1;
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    return self.images.count;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    
    UICollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"Cell" forIndexPath:indexPath];
    UIImageView *imageView = (UIImageView*)[cell viewWithTag:1];
    NSString *imgName = self.images[indexPath.row];
    [imageView setImage:[UIImage imageNamed:imgName]];
    return cell;
}

- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath{
    NSString *imgName = self.images[indexPath.row];
    self.imageView.image = [UIImage imageNamed:imgName];
}

@end
