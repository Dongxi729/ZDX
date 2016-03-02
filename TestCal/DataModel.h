//
//  DataModel.h
//  TestCal
//
//  Created by 郑东喜 on 16/1/18.
//  Copyright © 2016年 郑东喜. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DataModel : NSObject {
}

+ (DataModel *)shareInstance;

- (void)initData;

@property (nonatomic,copy) NSArray *funcData;

@end
