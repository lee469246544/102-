//
//  AppDelegate.m
//  MRCDemo
//
//  Created by 1 on 15/10/19.
//  Copyright (c) 2015年 Lee. All rights reserved.
//

#import "AppDelegate.h"
#import "People.h"
@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    
    
//    People *people = [People new];
//    void *_people = (void *)people;
    
    for (int i = 0 ; i < 10000; i++) {
        //自动释放池
//        NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
        @autoreleasepool {
            People *people = [People new];
            [people autorelease];
            
        }
        
//        [pool release];
//        pool = nil;
        
    }

    
    return YES;
}

- (void)test{




}

@end
