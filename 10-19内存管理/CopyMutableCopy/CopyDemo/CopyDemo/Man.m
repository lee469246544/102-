//
//  Man.m
//  CopyDemo
//
//  Created by 1 on 15/10/19.
//  Copyright (c) 2015年 Lee. All rights reserved.
//

#import "Man.h"

@implementation Man
- (id)copyWithZone:(NSZone *)zone
{
//    Man *man = [[self class] new];
//    man.name = self.name;
    
    Man *man = [super copyWithZone:zone];
    
    
    man.car = self.car;

    return man;



}
@end
