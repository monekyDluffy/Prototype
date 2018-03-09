//
//  Stroke.m
//  Prototype
//
//  Created by yusheng on 2018/3/9.
//  Copyright © 2018年 yusheng. All rights reserved.
//

#import "Stroke.h"

@implementation Stroke

@synthesize color = color_,size = size_;
@dynamic location;
-(instancetype)init
{
    if (self = [super init])
    {
        children_ = [[NSMutableArray alloc]initWithCapacity:5];
    }
    return self;
}

-(void)setLocation:(CGPoint)location
{
}

- (CGPoint) location {
    if ([children_ count] > 0)
    {
        id<Mark> tem = [children_ objectAtIndex:0];
        return tem.location;
    }
    return CGPointZero;
}


- (void) addMark:(id <Mark>) mark
{
    [children_ addObject:mark];
}


- (void) removeMark:(id <Mark>) mark
{
    if ([children_ containsObject:mark]) {
        [children_ removeObject:mark]; }
    else {
        [children_ makeObjectsPerformSelector:@selector(removeMark:) withObject:mark];
    }
}

- (id<Mark>)childMarkAtindex:(NSUInteger)index { 
    if (index >= [children_ count])  return nil;
    return [children_ objectAtIndex:index];
}

- (id <Mark>) lastChild
{
    return [children_ lastObject];
}

- (NSUInteger)cout
{
    return [children_ count];
}

- (instancetype)copyWithZone:(NSZone *)zone
{
    Stroke   *strokeCopy = [[self class]allocWithZone:zone];
    [strokeCopy setColor:[UIColor colorWithCGColor:color_.CGColor]];
    [strokeCopy setSize:size_];
    for (id <Mark> child in children_) {
        [strokeCopy addMark:child];
    }
    NSLog(@" Stroke   copyWithZone 被执行了");
    return strokeCopy;
}

@end
