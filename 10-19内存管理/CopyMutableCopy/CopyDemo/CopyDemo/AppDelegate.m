//
//  AppDelegate.m
//  CopyDemo
//
//  Created by 1 on 15/10/19.
//  Copyright (c) 2015年 Lee. All rights reserved.
//

#import "AppDelegate.h"
#import "People.h"
#import "Man.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    
    
    /*
     copy:不可变拷贝
     mutableCopy:可变拷贝
     浅拷贝：浅拷贝仅仅拷贝指针
     深拷贝：深拷贝拷贝对象
     */
    
    /*
     NSString
     copy:浅拷贝 NSString->NSString
     mutableCopy:深拷贝NSString->NSMutableString
     
    // 0x8c34b20 0x8c34b20 0x8c34a80
    NSString *string = [NSString stringWithFormat:@"123"];
    NSString *string1 = [string copy];
    NSMutableString *string2 = [string mutableCopy];
    [string2 appendString:@"456"];
    
    NSLog(@"%p %p %p",string,string1,string2);
    NSLog(@"%@ %@ %@",string,string1,string2);
    */
    //0x8e02970 0x8e029b0 0x8e029c0
    /*
     NSMutableString
     copy:深拷贝NSMutableString->NSString
     mutableCopy:深拷贝NSMutableString->NSMutableString
     */
    /*
    NSMutableString *string = [NSMutableString stringWithFormat:@"123"];
    NSString *string1 = [string copy];
    NSMutableString *string2 = [string mutableCopy];
    [string2 appendString:@"456"];
    NSLog(@"%p %p %p",string,string1,string2);
    NSLog(@"%@ %@ %@",string,string1,string2);
     */

    
//     0x8c0cc50 0x8c0cc50 0x8d1b950
    /*
     NSArray
     copy:浅拷贝NSArray->NSArray
     mutableCopy:深拷贝NSArray->NSMutableArray
     */
    /*
    NSArray *arr = [NSArray array];
    NSArray*arr1 = [arr copy];
    NSMutableArray *arr2 = [arr mutableCopy];
    [arr2 addObject:@"1"];
    
    NSLog(@"%p %p %p",arr,arr1,arr2);
    */
    
    
//    0x8c3c5d0 0x8d0b040 0x8c3c5f0
    /*
     NSMutableArray
     copy:深拷贝NSMutableArray->NSArray
     mutableCopy:深拷贝NSMutableArray->NSMutableArray
     */
    /*
    NSMutableArray *arr = [NSMutableArray array];
    NSArray *arr1 = [arr copy];
    NSMutableArray *arr2 = [arr mutableCopy];
    [arr2 addObject:@"123"];
    NSLog(@"%p %p %p",arr,arr1,arr2);
     */
    
    /*
     NSDictionary
     copy:浅拷贝NSDictionary->NSDictionary
     mutable:深拷贝NSDictionary->NSMutableDictionary
     */
    //0x8e116b0 0x8e116b0 0x8c034f0
    /*
    NSDictionary *dict=[NSDictionary dictionary];
    NSDictionary *dict1=[dict copy];
    NSMutableDictionary *dict2=[dict mutableCopy];
    [dict2 setObject:@"objc" forKey:@"key"];
    NSLog(@"%p %p %p",dict,dict1,dict2);
     */
    
    
    

    //
    /*
     copy过后得到类型是不可变的
     mutablecopy后得到类型是可变的
     只有不可变类型进行不可变拷贝是浅拷贝、其余都是深拷贝。

     以上得到的结论，只用于系统实现了NSCopying协议、NSMutableCopying协议的类，例如：NSString、NSArray、NSDictionary、NSSet、NSData等
     
     一个对象想要进行copy（mutablecopy）的话需要实现NSCopying协议（NSMutableCopying协议）。
     */
/*
    People *people = [People new];
    people.name = @"张三";
    People *people1 = [people copy];
    NSLog(@"%@ people1:%@",people.name,people1.name);
    
  */
    /*
    Man *man = [Man new];
    man.name = @"张三";
    man.car = @"SUV";
    Man *man1 = [man copy];
    NSLog(@"%@ %@",man.name,man1.name);
    NSLog(@"%@ %@",man.car,man1.car);
    */
    
    NSMutableString *mString = [NSMutableString stringWithFormat:@"123"];
    
    self.bString = mString;
//    [self.bString appendString:@"456"];
//    self.aString = mString;
    
//    [mString appendString:@"456"];
    
    
    
    NSLog(@"%@ %@",mString,self.aString);
    
    
    return YES;
}

- (void)setBString:(NSMutableString *)bString{

    _bString = [bString mutableCopy];


}




@end
