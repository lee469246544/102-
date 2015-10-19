//
//  AppDelegate.h
//  CopyDemo
//
//  Created by 1 on 15/10/19.
//  Copyright (c) 2015年 Lee. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;
//NSString 用copy
@property (nonatomic,copy) NSString *aString;
//NSMutableString 用retain,不能用copy,或者重写set方法，方法中用mutablecopy
@property (nonatomic,copy) NSMutableString *bString;




@end
