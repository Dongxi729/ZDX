//
//  DataModel.m
//  TestCal
//
//  Created by 郑东喜 on 16/1/18.
//  Copyright © 2016年 郑东喜. All rights reserved.
//

#import "DataModel.h"

@implementation DataModel

+ (DataModel *)shareInstance {
    static DataModel *dataSource = nil;
    static dispatch_once_t once;
    dispatch_once(&once, ^{
        dataSource = [DataModel new];
    });
    return dataSource;
}

- (void)initData {
    [DataModel shareInstance].funcData = @[
                                           @[@"当前账号",@"缤纷商城",@"修改密码",@"开锁密码"],
                                           @[@"联系我们",@"关于我们",@"我的设备"],
                                           @[@"联系我们",@"关于我们",@"我的设备"],
                                           ];
    
}

@end
