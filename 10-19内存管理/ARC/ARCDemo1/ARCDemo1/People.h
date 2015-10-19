//
//  People.h
//  ARCDemo1
//
//  Created by 1 on 15/10/19.
//  Copyright (c) 2015年 Lee. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface People : NSObject
@property (nonatomic,strong) NSString *name;
//代理使用的话、unsafe_unretained、assign、weak

@property (nonatomic,weak) id<UITabBarDelegate> delegate;
//基本类型assign、unsafe_unretained
@property (nonatomic,unsafe_unretained) BOOL sex;

//在arc中，方法必须声明才能调用
- (void)eat;


@end
