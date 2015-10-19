//
//  ViewController.m
//  ARCDemo
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
    // Do any additional setup after loading the view.
    //new == alloc.init
    //创建一个局部对象
    //如果在MRC中，需要release这个对象，否则有内存泄漏
    //而在ARC中，创建一个局部对象内存不需要我们管理会自己释放
    //局部对象出了方法后自己释放
//    People *people = [People new];
//    NSLog(@"1____%p_____%s",people,__FUNCTION__);
    
    
    /*
     strong:强引用
     weak:弱引用
     强引用指向的对象不会被释放
     一个对象没有强引用会立刻释放
     弱引用指向的对象将要释放时会自动为空
     */
    
    //一个对象没有修饰词时默认为strong
//    __strong People *people = [[People alloc] init];
    
    /*
     1.People创建对象
     2.weak指针指向创建对象
     3.People立刻释放。
     */
//    __weak People *people = [[People alloc] init];
//    NSLog(@"1_____%p_____%s",people,__FUNCTION__);
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    button.frame = CGRectMake(0.0f, 20.0f, 80.0f, 40.0f);
    button.backgroundColor = [UIColor redColor];
    [button addTarget:self action:@selector(buttonTouch:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
    
    
    
    //思考：如果将people改为weak为什么还是释放？
    //答案：因为全局指向weak指针前对象已经释放过了。
//    __weak People *people = [People new];
//    People *people = [People new];
//    _people1 = people;
//    _people = people;
    
    Car *car = [Car new];
    _man = [People new];
    _man.car = car;
    _woMan = [People new];
    _woMan.car = car;
    
}
- (void)buttonTouch:(UIButton *)sender{
//        NSLog(@"%s",__FUNCTION__);
    //在arc中，想要释放对象
    //将指向对象的strong指针指为空对象就会释放
//    _people = nil;

//    _man.car = nil;
//    _woMan = nil;
    _woMan.car = [Car new];
    
    
    
    
    
}
@end
