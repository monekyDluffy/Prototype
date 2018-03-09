//
//  Dot.m
//  Prototype
//
//  Created by yusheng on 2018/3/8.
//  Copyright © 2018年 yusheng. All rights reserved.
//

#import "Dot.h"

@implementation Dot
@synthesize size = size_,color = color_;
-(instancetype)copyWithZone:(NSZone *)zone
{
    Dot  *dotCopy = [[Dot class]allocWithZone:zone];
    [dotCopy setColor:[UIColor colorWithCGColor:color_.CGColor ]];
    [dotCopy setSize:size_];
    return dotCopy;
}
@end
