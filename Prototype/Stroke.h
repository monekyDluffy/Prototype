//
//  Stroke.h
//  Prototype
//
//  Created by yusheng on 2018/3/9.
//  Copyright © 2018年 yusheng. All rights reserved.
//  

#import <Foundation/Foundation.h>
#import "Mark.h"
@interface Stroke : NSObject <Mark,NSCopying>
{
    @private
    UIColor   *color_;
    CGFloat   size_;
    NSMutableArray *children_; //拥有多个mark对象数组
}
@property (nonatomic, retain) UIColor *color;
@property (nonatomic, assign) CGFloat size;
@property (nonatomic, assign) CGPoint location;
@property (nonatomic, readonly) NSUInteger count;
@property (nonatomic, readonly) id <Mark> lastChild;
- (void) addMark:(id <Mark>) mark;
- (void) removeMark:(id <Mark>) mark;
- (id<Mark>)childMarkAtindex:(NSUInteger) index;
- (instancetype) copyWithZone:(NSZone *)zone;
@end
