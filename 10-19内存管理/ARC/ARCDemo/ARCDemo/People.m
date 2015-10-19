//
//  People.m
//  ARCDemo
//
//  Created by 1 on 15/10/19.
//  Copyright (c) 2015年 Lee. All rights reserved.
//

#import "People.h"

@implementation People
- (id)init{
    self = [super init];
    if (self) {
        // -[People init]
        NSLog(@"%s",__FUNCTION__);
    }
    return self;
}

- (void)dealloc{
    //dealloc方法是当前对象即将释放时执行该方法
    //在arc中，super dealloc不能在使用了
    //dealloc方法依然有效，我们需要移除通知、代理、kvo等。
//    [super dealloc];
    
    //-[People dealloc]
    NSLog(@"%s",__FUNCTION__);
    
}




@end
