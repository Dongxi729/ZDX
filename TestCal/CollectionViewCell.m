//
//  CollectionViewCell.m
//  collectionView
//
//  Created by shikee_app05 on 14-12-10.
//  Copyright (c) 2014年 shikee_app05. All rights reserved.
//

#import "CollectionViewCell.h"
#define grayColor [UIColor grayColor]
#define x (self.frame.size.width - CGRectGetWidth(self.frame) * 0.6) * 0.5
#define y (self.frame.size.width - CGRectGetWidth(self.frame) * 0.6) * 0.5 - 5
#define imgWidth CGRectGetWidth(self.frame) * 0.6
#define imgHeidth CGRectGetWidth(self.frame) * 0.6


@implementation CollectionViewCell

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        
        
        // Initialization code
        
        self.imgView = [[UIImageView alloc] initWithFrame:CGRectMake(x, y, imgWidth, imgHeidth)];
//        self.imgView.backgroundColor = [UIColor groupTableViewBackgroundColor];
        [self addSubview:self.imgView];
        
        [self setStyle];
        
        NSLog(@"%f--%f",CGRectGetWidth(self.frame),CGRectGetWidth(self.frame));
        
        self.text = [[UILabel alloc]initWithFrame:CGRectMake(0, CGRectGetHeight(self.frame) * 0.7, CGRectGetWidth(self.frame), CGRectGetWidth(self.frame) *0.3)];
        self.text.textAlignment = NSTextAlignmentCenter;
        [self.text setFont:[UIFont systemFontOfSize:12]];
        [self addSubview:self.text];
        
        self.btn = [UIButton buttonWithType:UIButtonTypeCustom];
        self.btn.frame = CGRectMake(0, 0, self.frame.size.width,self.frame.size.height);
        [self.btn setTitle:@"按钮" forState:UIControlStateNormal];
        self.btn.backgroundColor = [UIColor orangeColor];
        
        
        //圆角图片
        
        self.roundimg = [[UIImageView alloc]initWithFrame:CGRectMake(x, y, imgWidth, imgHeidth)];
//        self.roundimg.backgroundColor = [UIColor groupTableViewBackgroundColor];
        self.roundimg.layer.masksToBounds = YES;
        self.roundimg.layer.cornerRadius = imgWidth * 0.5;
        [self addSubview:self.roundimg];

    }
    return self;
}

- (void)setStyle {
    self.layer.borderColor = grayColor.CGColor;
    self.layer.borderWidth = 0.5;
    
    self.text.layer.borderWidth = 0.5;
    self.text.layer.borderColor = grayColor.CGColor;
}

@end
