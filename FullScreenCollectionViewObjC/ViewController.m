//
//  ViewController.m
//  FullScreenCollectionViewObjC
//
//  Created by HT-Admin on 07/08/19.
//  Copyright © 2019 HT-Admin. All rights reserved.
//

#import "ViewController.h"
#import "CollectionViewCell.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    array = [[NSMutableArray alloc]initWithObjects:@"R",@"A",@"J", nil];
    urlArray = [[NSMutableArray alloc]initWithObjects:@"https://www.raywenderlich.com/7246-expanding-cells-in-ios-collection-views",@"file:///Users/ht-admin/Desktop/InlineVideo-master/index.html",@"file:///Users/ht-admin/Desktop/InlineVideo-master/index.html", nil];

    NSLog(@"array =%@",array);
}


- (nonnull __kindof UICollectionViewCell *)collectionView:(nonnull UICollectionView *)collectionView cellForItemAtIndexPath:(nonnull NSIndexPath *)indexPath {
    CollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"cell" forIndexPath:indexPath];
    cell.lbl.text = array[indexPath.item];
    
    NSURL *url= [NSURL URLWithString:urlArray[indexPath.item]];
    
    NSURLRequest *request = [NSURLRequest requestWithURL:url];

    
    [cell.webView loadRequest:request];
    return cell;
}

- (NSInteger)collectionView:(nonnull UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return  array.count;
}


@end
