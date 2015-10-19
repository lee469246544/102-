//
//  Car.h
//  ARCDemo
//
//  Created by 1 on 15/10/19.
//  Copyright (c) 2015年 Lee. All rights reserved.
//

#import <Foundation/Foundation.h>
@class People;

@interface Car : NSObject
@property (nonatomic,weak) People *people;
@end
