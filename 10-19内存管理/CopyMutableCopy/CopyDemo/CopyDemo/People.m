//
//  People.m
//  CopyDemo
//
//  Created by 1 on 15/10/19.
//  Copyright (c) 2015年 Lee. All rights reserved.
//

#import "People.h"

@implementation People
- (id)copyWithZone:(NSZone *)zone
{
    NSLog(@"self:%@",self);
    //返回拷贝后的对象
    //直接返回self就是浅拷贝
    //但是我们一般不返回self
    //
//    return self;
    /*
     self class
     people调用时为People
     man调用时为Man
    */
    People *people = [[self class] new];
    people.name = self.name;
    return people;
    
    
    
    
    
}

@end
