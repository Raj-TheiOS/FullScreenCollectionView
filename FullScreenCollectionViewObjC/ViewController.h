//
//  ViewController.h
//  FullScreenCollectionViewObjC
//
//  Created by HT-Admin on 07/08/19.
//  Copyright © 2019 HT-Admin. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UICollectionViewDataSource,UICollectionViewDelegate>
{
    NSMutableArray *array;
    NSMutableArray *urlArray;

}

@property (weak, nonatomic) IBOutlet UICollectionView *collectionView;


@end

