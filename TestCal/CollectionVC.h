//
//  CollectionVC.h
//  TestCal
//
//  Created by 郑东喜 on 16/1/18.
//  Copyright © 2016年 郑东喜. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DataModel.h"
#define fDeviceWidth ([UIScreen mainScreen].bounds.size.width)
#define fDeviceHeight ([UIScreen mainScreen].bounds.size.height)
#define x 0
#define y 0
#define KCount 4

@interface CollectionVC : UIView<UICollectionViewDataSource,UICollectionViewDelegate,UINavigationControllerDelegate>{
    
}


+ (instancetype)initWithFrame:(CGRect)frame;

@property (nonatomic,strong) UICollectionView *collectionView;

/**
 *  第一行section图片
 */
@property (nonatomic,strong) UIImage *firstSecImg;
/**
 *  第二行section图片
 */
@property (nonatomic,strong) UIImage *secSecImg;

@property (nonatomic,copy) NSArray *dataSource;

@end
