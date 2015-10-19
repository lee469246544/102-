//
//  ViewController.m
//  ARCDemo1
//
//  Created by 1 on 15/10/19.
//  Copyright (c) 2015年 Lee. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
//    oc基于c的
//    c面相过程、oc面相对象
    
//    .m:oc与c混编
//    .mm:c++
//    .cpp、.java、.c
    
//    void *任意类型类似于id
    //字符串
//    void *a = "hello world !";
    //int
//    void *b = 2;
    //BOOL
//    void *c = true;
//    void *d = false;
    
    
//    Foundation.framework基本库
//    CoreFoundation.framework c的基本库
//    CoreGraphics.framework基本绘制库
//    UIKit.framework基本的UI控件
    
    //bridge桥接
    /*
     __bridge在arc中的
     用于oc->c
     */
    People *people = [People new];
    _people = (__bridge void *)people;
    CFRetain(_people);


    
    /*
     __bridge_retained
     用于oc->c
     转换时，会跟着一个cfretain
     */
    People *people1 = [People new];
    _people1 = (__bridge_retained void *)people1;
    
    NSLog(@"%s %@",__FUNCTION__,_people1);
    
    /*
     __bridge:oc <-> c 转换时引用计数不产生修改
     一般用于局部对象之间的转换
     __bridge_retained:oc->c 转换时引用计数加一
     将对象转换成c的全局对象时使用
     __bridge_transfer:c->oc 转换时引用计数减一
     转换后，c的对象不再使用
     */
    
    
    
    
    
    
}
- (IBAction)touchIt:(id)sender {

    /*
     __bridge
     oc->c
     
     */
    People *people = (__bridge People *)_people;
    [people eat];
    NSLog(@"%s %@",__FUNCTION__,people);
    
    
    
    
}

- (IBAction)touchIt2:(id)sender {
    
    //__bridge_transfer
    //c->oc
    //转换时跟着一个cfrelease
    People *people = (__bridge_transfer People *)_people1;
    
    NSLog(@"%s %p",__FUNCTION__,people);
    
    
    
}
- (void)dealloc
{
    
    //对应是cfretain
    CFRelease(_people);
    _people = nil;

    //对应__bridge_retained
    CFRelease(_people1);
    _people1 = nil;



}

@end
