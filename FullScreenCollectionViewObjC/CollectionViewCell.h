//
//  CollectionViewCell.h
//  FullScreenCollectionViewObjC
//
//  Created by HT-Admin on 07/08/19.
//  Copyright © 2019 HT-Admin. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface CollectionViewCell : UICollectionViewCell
@property (weak, nonatomic) IBOutlet UILabel *lbl;
@property (weak, nonatomic) IBOutlet UIWebView *webView;

@end

NS_ASSUME_NONNULL_END
