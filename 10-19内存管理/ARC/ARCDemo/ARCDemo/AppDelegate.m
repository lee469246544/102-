//
//  AppDelegate.m
//  ARCDemo
//
//  Created by 1 on 15/10/19.
//  Copyright (c) 2015年 Lee. All rights reserved.
//

#import "AppDelegate.h"
#import "ViewController.h"
#import "People.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    
//    NSLog(@"111111111111111");
//    NSLog(@"aaaaaaaaaaa");
    //能打印出当前类，以及当前所在的方法
    NSLog(@"%s",__FUNCTION__);

    
    
    // Override point for customization after application launch.
    
    //  预编译->编译->运行
    
    
    // JAVA GC垃圾回收机制 运行时特性
    // ARC   IOS5推出  编译时特性
    
//    ViewController *vc = [[ViewController alloc] init];
//    self.window.rootViewController = vc;
    /*
     在arc中，不能再使用release、autorelease、retian了
     但是copy依然可以使用，保留其原本的功能
     */
//    [vc release];
//    [vc autorelease];
//    [vc retain];
//    [vc copy];
    
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    
    
    //weak防止循环引用
    People *people = [People new];
    Car *car = [Car new];
    people.car = car;
    car.people = people;
    
    
//    people.car = nil;
//    car.people = nil;
    
    
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
