//
//  ViewController.h
//  ARCDemo
//
//  Created by 1 on 15/10/19.
//  Copyright (c) 2015年 Lee. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "People.h"
#import "Car.h"
@interface ViewController : UIViewController
{
    People *_people;
    __weak People *_people1;
    
    __strong People *_man;
    People *_woMan;
    
    
    

}
@end
