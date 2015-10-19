//
//  People.m
//  MRCDemo
//
//  Created by 1 on 15/10/19.
//  Copyright (c) 2015年 Lee. All rights reserved.
//

#import "People.h"

@implementation People
- (id)init{
    self = [super init];
    if (self) {
        NSLog(@"%s",__FUNCTION__);
        
    }
    return self;
}
- (void)dealloc{
    NSLog(@"%s",__FUNCTION__);
    [super dealloc];

}
@end
