//
//  Tools.h
//  ARCDemo1
//
//  Created by 1 on 15/10/19.
//  Copyright (c) 2015年 Lee. All rights reserved.
//

#import <Foundation/Foundation.h>


/*
 -fobjc-arc
 f:flag标记
 objc：object－c
 arc：arc
 
 
    在MRC工程中，使用arc的代码
 */

/*
 -fno-objc-arc
 no:不
 在arc工程中，使用mrc的代码
 */

@interface Tools : NSObject
+ (BOOL)isExists;
@end
