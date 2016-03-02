//
//  COllectionTest.m
//  TestCal
//
//  Created by 郑东喜 on 16/1/18.
//  Copyright © 2016年 郑东喜. All rights reserved.
//

#import "COllectionTest.h"

@interface COllectionTest () {
    UIView *_name;
}

@end

@implementation COllectionTest

- (void)viewDidLoad {
    [super viewDidLoad];
    /**
     *  添加collectionView并设置样式
     */
    [self setData];
    
    // Do any additional setup after loading the view.
}

- (void)setData {
    CollectionVC *test = [CollectionVC initWithFrame:self.view.bounds];
    _collVC = [CollectionVC initWithFrame:self.view.bounds];
    [self.view addSubview:test];

    
    //设置图片
    test.firstSecImg = [UIImage imageNamed:@"1.png"];
    
    test.secSecImg = [UIImage imageNamed:@"1.png"];
    
    //图片名字数组数据
    test.dataSource = @[
                        @[@"当前账号",@"缤纷商城",@"修改密码",@"开锁密码"],
                        @[@"联系我们",@"关于我们",@"我的设备"],
                        @[@"联系我们",@"关于我们",@"我的设备"],
                        @[@"联系我们",@"关于我们",@"我的设备"],
                        ];
    

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
