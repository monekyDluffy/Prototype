//
//  ViewController.m
//  Prototype
//
//  Created by yusheng on 2018/3/8.
//  Copyright © 2018年 yusheng. All rights reserved.


#import "ViewController.h"
#import "Stroke.h"
@interface ViewController ()
@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    Stroke   *stork = [[Stroke alloc]init];
    stork.color = [UIColor redColor];
    stork.size = 10.0f;
    Stroke   *stork2 = [stork copy];  //这是调用的copy是mark里面定义的copy方法
    Stroke   *stork3 =  stork2.copy; //这是调用的copy是mark里面定义的copy方法
    NSLog (@"断点，这边对象的东西是不一样的");
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}


@end
